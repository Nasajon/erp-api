unit mda.adapter.syntax.json;

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
    TAdapterJSON = class(TInterfacedObject, IAdapterSyntax)

      private

        function retornarValorDeExemplo(
          const a_controlType: String;
          const a_tamanho: String;
          const a_namespace: String;
          const a_format: String
        ): String;

        function gerarJSON(
          const a_API: TAPI
        ): TMDAErro;

      public

        function gerarCodigoFonte(
          const a_API: TAPI
        ): TMDAErro;

    end;

implementation

{ TAdapterJSON }

function TAdapterJSON.gerarCodigoFonte(const a_API: TAPI): TMDAErro;
begin
  Result := Self.gerarJSON(a_API);
end;

function TAdapterJSON.gerarJSON(const a_API: TAPI): TMDAErro;

  var t_JSON: TStringList;
  var t_Summary: TStringList;
  var t_Text: String;

  var t_Indice: Integer;
  var t_Indice_Field: Integer;

  var t_Index: Integer;

  var t_Field: TNodeField;
  var t_Modelo: TNodeClasseModelo;

  var t_fileNameJSON : string;
  var t_FileNameTXT : string;
begin
  Result.init();

  for t_Indice := 0 to a_API.modelos.Count - 1
    do begin
      t_Modelo := a_API.modelos.Items[t_Indice];

      if t_Modelo.nome.IsEmpty()
        then begin
           t_fileNameJSON := String(TUtils.getDirSyntaxeFileFormat(a_API.nomeSistema) + a_API.nomeSistema + '.' + a_API.nomeModulo + '.json').RetirarAspas();
           t_fileNameTXT  := String(TUtils.getDirSyntaxeFileFormat(a_API.nomeSistema) + a_API.nomeSistema + '.' + a_API.nomeModulo + '.txt').RetirarAspas();
        end
        else begin
           t_fileNameJSON := String(TUtils.getDirSyntaxeFileFormat(a_API.nomeSistema) + a_API.nomeSistema + '.' + a_API.nomeModulo + t_Modelo.nome + '.json').RetirarAspas();
           t_fileNameTXT  := String(TUtils.getDirSyntaxeFileFormat(a_API.nomeSistema) + a_API.nomeSistema + '.' + a_API.nomeModulo + t_Modelo.nome + '.txt').RetirarAspas();
        end;

      t_JSON := TStringList.Create();
      t_Summary := TStringList.Create();
      try
        t_JSON.LoadFromFile('..\template\json\model.json');

        for t_Indice_Field := 0 to t_Modelo.fields.Count - 1
          do begin
            t_Text := EmptyStr;
            t_Field := t_Modelo.fields.Items[t_Indice_Field];

            t_Index := t_JSON.getIndex(mda.constants.c_json_fields);
            if t_Indice_Field = 0
              then t_JSON.insertAndInc(t_Index, Format('     "%s" : %s' , [t_Field.nome, Self.retornarValorDeExemplo(t_Field.controlType, t_Field.tamanho, t_Field.namespace, t_Field.format)]).RetirarAspas())
              else t_JSON.insertAndInc(t_Index, Format('   , "%s" : %s' , [t_Field.nome, Self.retornarValorDeExemplo(t_Field.controlType, t_Field.tamanho, t_Field.namespace, t_Field.format)]).RetirarAspas());

            if not t_Field.summary.IsEmpty()
              then t_Text := 'Descrição: ' + t_Field.summary + #13;

            if t_Field.required
              then t_Text := t_Text + 'Obrigatório: SIM' + #13
              else t_Text := t_Text + 'Obrigatório: NÃO' + #13;

            if t_Field.NotNUll
              then t_Text := t_Text + 'Aceita valor nulo: NÃO'
              else t_Text := t_Text + 'Aceita valor nulo: SIM';

            t_Summary.Add('Campo: ' + t_Field.nome.RetirarAspas());
            t_Summary.Add(t_Text);
            t_Summary.Add('');
          end;

        t_JSON.searchReplace(mda.constants.c_json_fields, '');

        // Gerar o arquivo
        t_JSON.SaveToFile( t_fileNameJSON );

        // Gerar doc
        t_JSON.Add('');
        for t_Indice_Field := 0 to t_Summary.Count - 1
          do t_JSON.Add(t_Summary.Strings[t_Indice_Field]);
        t_JSON.SaveToFile( t_fileNameTXT );

      finally
        t_JSON.Free();
        t_Summary.Free();
      end;
    end;
end;

function TAdapterJSON.retornarValorDeExemplo(
  const a_controlType: String;
  const a_tamanho: String;
  const a_namespace: String;
  const a_format: String
): String;

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
    then Result := '"{86BF0D56-4AA1-4E8B-87D4-77F83A422068}"'
  else if a_ControlType = 'String'
    then begin
      if a_format.IsEmpty()
        then Result := Format('"String(%s)"', [a_tamanho]).RetirarAspas()
        else Result := Format('"String(%s) [%s]"', [a_tamanho, a_format]).RetirarAspas()
    end
  else if a_ControlType = 'Memo'
    then Result := '"Este atributo é do titpo Memo."'
  else if a_ControlType = 'Integer'
    then Result := '1'
  else if a_ControlType = 'Currency'
    then Result := Format('%s', [a_tamanho]).RetirarAspas()
  else if a_ControlType = 'Date'
    then Result := '"2014-12-31"'
  else if a_ControlType = 'DateTime'
    then Result := '"2014-12-31 12:00:00"'
  else if a_ControlType = 'Boolean'
    then Result := 'False'
  else if a_ControlType = 'Object'
    then Result := '"Objeto: ' + getObjectName() + '"'
  else if a_ControlType = 'ObjectList'
    then Result := '"ObjectList: ' + getObjectName() + '"'
  else if (a_ControlType = 'EntidadeInterna')
    then Result := '"Guid ou Código"'
  else if (a_ControlType = 'ListaEntidadeInterna')
    then Result := '"Array de Guid ou Código"'
  else if (a_ControlType = 'EntidadeFisica')
    then Result := '"Guid ou Código ou CPF [999.999.999-99]"'
  else if (a_ControlType = 'EntidadeJuridica')
    then Result := '"Guid ou Código ou CNPJ [99.999.999/9999-99]"'
  else if (a_ControlType = 'EntidadeFisicaJuridica')
    then Result := '"Guid ou Código ou CPF [999.999.999-99] ou CNPJ [99.999.999/9999-99]"'
end;

end.
