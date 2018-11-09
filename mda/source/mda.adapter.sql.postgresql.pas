unit mda.adapter.sql.postgresql;

interface

uses
  System.Classes,
  System.SysUtils,

  mda.adapter.syntax,
  mda.types,
  mda.models,
  mda.helpers,
  mda.constants,
  mda.utils;

  type
    TAdapterPostgreSQL = class(TInterfacedObject, IAdapterSyntax)

      private

        function castDataTypeToPostgreSQL(
          const a_ControlType: String;
          const a_Tamanho: String;
          const a_Namespace: String
        ): String;

        function gerarTypes(
          const a_API: TAPI
        ): TMDAErro;

        function gerarFunctions(
          const a_API: TAPI
        ): TMDAErro;

      public

        function gerarCodigoFonte(
          const a_API: TAPI
        ): TMDAErro;

    end;

implementation

{ TAdapterPostgreSQL }

function TAdapterPostgreSQL.castDataTypeToPostgreSQL(
  const a_ControlType: String;
  const a_Tamanho: String;
  const a_Namespace: String
): String;

  function getSchemaName(): String;

    var t_Indice: Integer;
    var t_Count: Integer;

  begin
    t_Count := 0;
    Result := EmptyStr;
    for t_Indice := Low(a_namespace) to High(a_namespace)
      do begin
        if a_namespace[t_Indice] = '\'
          then Inc(t_Count)
        else if t_Count = 0
          then Result := Result + a_namespace[t_Indice];
      end;
  end;

  function getObjectName(): String;

    var t_Indice: Integer;
    var t_Count: Integer;

  begin
    t_Count := 0;
    Result := EmptyStr;
    for t_Indice := Low(a_namespace) to High(a_namespace)
      do begin
        if a_namespace[t_Indice] = '\'
          then Inc(t_Count)
        else if t_Count = 2
          then Result := Result + a_namespace[t_Indice];
      end;
  end;

begin
  if a_ControlType = 'Guid'
    then Result := 'uuid'
  else if a_ControlType = 'String'
    then Result := Format('character varying(%s)', [a_Tamanho])
  else if a_ControlType = 'Memo'
    then Result := 'text'
  else if a_ControlType = 'Integer'
    then Result := 'integer'
  else if a_ControlType = 'Currency'
    then begin
      if not a_tamanho.IsEmpty()
        then Result := Format('numeric(%s)', [a_Tamanho])
        else Result := 'numeric';
    end
  else if a_ControlType = 'Date'
    then Result := 'date'
  else if a_ControlType = 'DateTime'
    then Result := 'timestamp'
  else if a_ControlType = 'Boolean'
    then Result := 'boolean'
  else if a_ControlType = 'Object'
    then Result := getSchemaName() + '.' + getObjectName()
  else if a_ControlType = 'ObjectList'
    then Result := getSchemaName() + '.' + getObjectName() + '[]'
  else if (a_ControlType = 'EntidadeInterna') or (a_ControlType = 'EntidadeJuridica') or
          (a_ControlType = 'EntidadeFisica') or (a_ControlType = 'EntidadeFisicaJuridica')
    then Result := 'text'
  else if a_ControlType = 'ListaEntidadeInterna'
    then Result := 'text[]'

end;

function TAdapterPostgreSQL.gerarCodigoFonte(
  const a_API: TAPI
): TMDAErro;
begin
  Result := Self.gerarTypes(a_API);
  if not Result.comErro
    then Result := Self.gerarFunctions(a_API);
end;

function TAdapterPostgreSQL.gerarFunctions(
  const a_API: TAPI
): TMDAErro;

  var t_SQL: TStringList;
  var t_SqlModeloValidacaoNull: TStringList;
  var t_SqlValidacaoNull: TStringList;
  var t_SqlValidacoesNull: TStringList;

  var t_Indice: Integer;
  var t_Indice_Field: Integer;

  var t_Index: Integer;

  var t_Modelo: TNodeClasseModelo;
  var t_field: TNodeField;

begin
  Result.init();

  for t_Indice := 0 to a_API.modelos.Count - 1
    do begin
      t_Modelo := a_API.modelos.Items[t_Indice];

      if t_Modelo.nome.IsEmpty()
        then Continue;

      t_SQL := TStringList.Create();
      t_SqlModeloValidacaoNull := TStringList.Create();
      t_SqlValidacaoNull := TStringList.Create();
      t_SqlValidacoesNull := TStringList.Create();
      try
        t_SQL.LoadFromFile('..\template\postgresql\functions.txt');
        t_SqlModeloValidacaoNull.LoadFromFile('..\template\postgresql\validacaoNull.txt');

        for t_field in t_Modelo.fields
          do begin
            if (t_field.notnull)
              then begin
                t_SqlValidacaoNull.Clear();
                t_SqlValidacaoNull.Append(t_SqlModeloValidacaoNull.Text);

                t_SqlValidacaoNull.searchReplace(mda.constants.c_field, String(t_field.nome).RetirarAspas(), True);

                t_SqlValidacoesNull.Append(t_SqlValidacaoNull.Text);
              end;
          end;

        t_SQL.searchReplace(mda.constants.c_negocio, String(a_API.nomeSistema + '.api_' + a_API.nomeModulo + t_Modelo.nome).RetirarAspas());
        t_SQL.searchReplace(mda.constants.c_negocio_class, String(a_API.nomeSistema + '.T' + a_API.nomeModulo + t_Modelo.nome).RetirarAspas());
        t_SQL.searchReplace(mda.constants.c_validacoesNull, t_SqlValidacoesNull.Text, True);

        // Gerar o arquivo
        t_SQL.SaveToFile(String(TUtils.getDirSyntaxeSQLFunction(a_API.nomeSistema) + a_API.nomeSistema + '.api_' + a_API.nomeModulo + t_Modelo.nome + '.sql').RetirarAspas());
      finally
        t_SQL.Free();
        t_SqlModeloValidacaoNull.Free();
        t_SqlValidacaoNull.Free();
        t_SqlValidacoesNull.Free();
      end;
    end;
end;

function TAdapterPostgreSQL.gerarTypes(
  const a_API: TAPI
): TMDAErro;

  var t_SQL: TStringList;

  var t_Indice: Integer;
  var t_Indice_Field: Integer;

  var t_Index: Integer;

  var t_Field: TNodeField;
  var t_Modelo: TNodeClasseModelo;

begin
  Result.init();

  for t_Indice := 0 to a_API.modelos.Count - 1
    do begin
      t_Modelo := a_API.modelos.Items[t_Indice];

      t_SQL := TStringList.Create();
      try
        t_SQL.LoadFromFile('..\template\postgresql\types.txt');

        t_SQL.searchReplace(mda.constants.c_negocio, String(a_API.nomeSistema + '.T' + a_API.nomeModulo + t_Modelo.nome).RetirarAspas());

        for t_Indice_Field := 0 to a_API.modelos.Items[t_Indice].fields.Count - 1
          do begin
            t_Field := t_Modelo.fields.Items[t_Indice_Field];

            t_Index := t_SQL.getIndex(mda.constants.c_interface_fields);
            if t_Indice_Field = 0
              then t_SQL.insertAndInc(t_Index, Format('     %s %s' , [t_Field.nome, Self.castDataTypeToPostgreSQL(t_Field.controlType, t_Field.tamanho, t_Field.namespace)]).RetirarAspas())
              else t_SQL.insertAndInc(t_Index, Format('   , %s %s' , [t_Field.nome, Self.castDataTypeToPostgreSQL(t_Field.controlType, t_Field.tamanho, t_Field.namespace)]).RetirarAspas());
          end;

        t_SQL.searchReplace(mda.constants.c_interface_fields, '');

        // Gerar o arquivo
        t_SQL.SaveToFile(String(TUtils.getDirSyntaxeSQLType(a_API.nomeSistema) + a_API.nomeSistema + '.T' + a_API.nomeModulo + t_Modelo.nome + '.sql').RetirarAspas());
      finally
        t_SQL.Free();
      end;
    end;
end;

end.
