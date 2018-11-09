unit mda.adapter.syntax.delphi;

interface

uses
  System.Classes,
  System.SysUtils,
  System.StrUtils,

  mda.adapter.syntax,
  mda.types,
  mda.models,
  mda.helpers,
  mda.constants,
  mda.utils;

  type
    TAdapterDelphi = class(TInterfacedObject, IAdapterSyntax)

      private

        function getUsesOfNameSpace(
          const a_namespace: String
        ): String;

        function getNomeDaClasse(
          const a_Nome: String;
          const a_Modulo: String;
          const a_ComIdentificador: Boolean = True
        ): String;

        function GetNameTypeFromNameSpace(
          const a_namespace : string
        ): String;

        function castDataTypeToDelphi(
          const a_ControlType: String;
          const a_namespace: String
        ): String;

        function getValorMocado(
          const a_nomemodulo, a_nomefield,
          a_controltype, a_namespace: String
        ): String;

        function preencherCommandClient(
          const a_API: TAPI
        ): TMDAErro;

        function gerarController(
          const a_API: TAPI
        ): TMDAErro;

        function gerarClasses(
          const a_API: TAPI
        ): TMDAErro;

      public

        function gerarCodigoFonte(
          const a_API: TAPI
        ): TMDAErro;

    end;

implementation

{ TAdapterDelphi }

uses uHelperGuid, uManipuladorGUID;

function TAdapterDelphi.castDataTypeToDelphi(
  const a_ControlType: String;
  const a_namespace: String ): String;

begin
   if (a_ControlType = 'Guid') or (a_ControlType = 'Bytea')
    then Result := 'String'
//    then Result := 'TGUID'
  else if a_ControlType = 'String'
    then Result := 'String'
  else if a_ControlType = 'Memo'
    then Result := 'WideString'
  else if a_ControlType = 'Integer'
    then Result := 'Integer'
  else if a_ControlType = 'Currency'
    then Result := 'Currency'
  else if a_ControlType = 'Date'
    then Result := 'TDate'
  else if a_ControlType = 'DateTime'
    then Result := 'TDateTime'
  else if a_ControlType = 'Boolean'
    then Result := 'Boolean'
  else if a_ControlType = 'Object'
    then Result := GetNameTypeFromNameSpace(a_namespace)
  else if a_ControlType = 'ObjectList'
    then Result := 'TObjectList<' + GetNameTypeFromNameSpace(a_namespace) + '>'
  else if (a_ControlType = 'EntidadeInterna') or (a_ControlType = 'EntidadeJuridica') or
          (a_ControlType = 'EntidadeFisica') or (a_ControlType = 'EntidadeFisicaJuridica')
    then Result := 'String'
  else if a_ControlType = 'ListaEntidadeInterna'
    then Result := 'TList<String>';
end;

function TAdapterDelphi.gerarClasses(const a_API: TAPI): TMDAErro;

  var t_Unit: TStringList;

  var t_Indice: Integer;
  var t_Indice_Field: Integer;
  var t_Indice_Summary: Integer;

  var t_Index_Uses: Integer;

  var t_Index_Interface_Negocio: Integer;
  var t_Index_Interface_Atributos: Integer;
  var t_Index_Interface_Fields: Integer;
  var t_Index_Metodos_Interface: Integer;
  var t_Index_Metodos_Interface_getter: Integer;
  var t_Index_Metodos_Interface_setter: Integer;

  var t_Index_Metodos_Implementation: Integer;

  var t_Modelo: TNodeClasseModelo;
  var t_Field: TNodeField;

  var t_Owners: String;

  var t_Summary: TStringList;

begin
  Result.init();

  t_Unit := TStringList.Create();
  try
    t_Unit.LoadFromFile('..\template\delphi\api.model.negocio.pas');

    t_Unit.searchReplace(mda.constants.c_negocio, String(a_API.nomeSistema + '.' + a_API.nomeModulo).RetirarAspas());

    // Verifica se existe alguma referência externa para incluir o import no objeto
    for t_Indice := 0 to a_API.modelos.Count - 1
      do begin
        t_Modelo := a_API.modelos.Items[t_Indice];

        for t_Indice_Field := 0 to t_Modelo.fields.Count - 1
          do begin
            t_Field := t_Modelo.fields.Items[t_Indice_Field];
            if not t_Field.namespace.IsEmpty()
              then begin
                if not a_API.existeImport(Self.getUsesOfNameSpace(t_Field.namespace))
                  then a_API.imports.Add(TNodeImport.create(Self.getUsesOfNameSpace(t_Field.namespace)));
              end;
            if ((t_Field.controlType = 'ObjectList') or (t_Field.controlType = 'ListaEntidadeInterna')) and not a_API.existeImport('System.Generics.Collections')
              then a_API.imports.Add(TNodeImport.create('System.Generics.Collections'));
          end;
      end;

    // Uses
    t_Index_Uses := t_Unit.getIndex(mda.constants.c_uses);
    if a_API.imports.Count > 0
      then begin
        for t_Indice := 0 to a_API.imports.Count - 1
          do t_Unit.insertAndInc(t_Index_Uses, String('  , ' + a_API.imports.Items[t_Indice].nome).RetirarAspas());
      end;
    t_Unit.searchReplace(mda.constants.c_uses, '');

    // Classes
    for t_Indice := 0 to a_API.modelos.Count - 1
      do begin
        t_Modelo := a_API.modelos.Items[t_Indice];

        t_Index_Interface_Negocio := t_Unit.getIndex(mda.constants.c_interface_negocio);

        // Properties
        if not t_Modelo.summary.IsEmpty()
          then begin
            t_Unit.insertAndInc(t_Index_Interface_Negocio, '/// <summary>');

            t_Summary := TStringList.Create();
            try
              t_Summary.Text := t_Modelo.summary.RetirarAspas();
              for t_Indice_Summary := 0 to t_Summary.Count - 1
                do t_Unit.insertAndInc(t_Index_Interface_Negocio, Format('/// %s', [t_Summary.Strings[t_Indice_Summary]]).RetirarAspas());
            finally
              t_Summary.Free();
            end;

            t_Unit.insertAndInc(t_Index_Interface_Negocio, '/// </summary>');
          end;

        t_Unit.insertAndInc(t_Index_Interface_Negocio, Format('type T%s%s = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)', [a_API.nomeModulo, t_Modelo.nome]).RetirarAspas());
        t_Unit.insertAndInc(t_Index_Interface_Negocio,        '');
        t_Unit.insertAndInc(t_Index_Interface_Negocio,        '  strict private');
        t_Unit.insertAndInc(t_Index_Interface_Negocio,        '');
        t_Unit.insertAndInc(t_Index_Interface_Negocio, Format('    %s', [mda.constants.c_interface_fields]).RetirarAspas());
        t_Unit.insertAndInc(t_Index_Interface_Negocio,        '');
        t_Unit.insertAndInc(t_Index_Interface_Negocio, Format('    %s', [mda.constants.c_interface_metodos_getter]).RetirarAspas());
        t_Unit.insertAndInc(t_Index_Interface_Negocio,        '');
        t_Unit.insertAndInc(t_Index_Interface_Negocio, Format('    %s', [mda.constants.c_interface_metodos_setter]).RetirarAspas());
        t_Unit.insertAndInc(t_Index_Interface_Negocio,        '');
        t_Unit.insertAndInc(t_Index_Interface_Negocio,        '  public');
        t_Unit.insertAndInc(t_Index_Interface_Negocio,        '');
        t_Unit.insertAndInc(t_Index_Interface_Negocio, Format('    %s', [mda.constants.c_interface_metodos]).RetirarAspas());
        t_Unit.insertAndInc(t_Index_Interface_Negocio,        '');
        t_Unit.insertAndInc(t_Index_Interface_Negocio, Format('    %s', [mda.constants.c_interface_atributos]).RetirarAspas());
        t_Unit.insertAndInc(t_Index_Interface_Negocio,        '');
        t_Unit.insertAndInc(t_Index_Interface_Negocio,        'end;');
        t_Unit.insertAndInc(t_Index_Interface_Negocio,        '');

        t_Owners := EmptyStr;
        for t_Indice_Field := 0 to t_Modelo.fields.Count - 1
          do begin
            t_Field := t_Modelo.fields.Items[t_Indice_Field];

            if not t_Field.namespace.IsEmpty()
              then begin
                if t_Owners.IsEmpty()
                  then t_Owners := Format('  Self.%s.Free();', [t_Field.nome]).RetirarAspas()
                  else t_Owners := t_Owners + #13 + Format('  Self.%s.Free();', [t_Field.nome]).RetirarAspas();
              end;

            // Fields
            t_Index_Interface_Fields := t_Unit.getIndex(mda.constants.c_interface_fields);
            t_Unit.insertAndInc(t_Index_Interface_Fields, Format('    var m_%s: %s;', [t_Field.nome, Self.castDataTypeToDelphi(t_Field.controlType, t_Field.namespace)]).RetirarAspas());

            // Getter
            t_Index_Metodos_Interface_getter := t_Unit.getIndex(mda.constants.c_interface_metodos_getter);
            t_Unit.insertAndInc(t_Index_Metodos_Interface_getter, Format('    function get%s(): %s;', [t_Field.nome, Self.castDataTypeToDelphi(t_Field.controlType, t_Field.namespace)]).RetirarAspas());

            // Setter
            t_Index_Metodos_Interface_setter := t_Unit.getIndex(mda.constants.c_interface_metodos_setter);
            t_Unit.insertAndInc(t_Index_Metodos_Interface_setter, Format('    procedure set%s(const a_Value: %s);', [t_Field.nome, Self.castDataTypeToDelphi(t_Field.controlType, t_Field.namespace)]).RetirarAspas());

            // Properties
            if not t_Field.summary.IsEmpty()
              then begin
                t_Index_Interface_Atributos := t_Unit.getIndex(mda.constants.c_interface_atributos);
                t_Unit.insertAndInc(t_Index_Interface_Atributos, '    /// <summary>');

                t_Summary := TStringList.Create();
                try
                  t_Summary.Text := t_Field.summary.RetirarAspas();
                  for t_Indice_Summary := 0 to t_Summary.Count - 1
                    do t_Unit.insertAndInc(t_Index_Interface_Atributos, Format('/// %s', [t_Summary.Strings[t_Indice_Summary]]).RetirarAspas());
                finally
                  t_Summary.Free();
                end;

                t_Unit.insertAndInc(t_Index_Interface_Atributos, '    /// </summary>');
              end;

            // Custom Atributes
            t_Index_Interface_Atributos := t_Unit.getIndex(mda.constants.c_interface_atributos);
            t_Unit.insertAndInc(t_Index_Interface_Atributos, Format('    [NasajonSerializeAttribute(%s)]', [QuotedStr(t_Field.nome.Lower().RetirarAspas())]));

            t_Index_Interface_Atributos := t_Unit.getIndex(mda.constants.c_interface_atributos);
            t_Unit.insertAndInc(t_Index_Interface_Atributos, Format('    property %s: %s read get%s write set%s;', [t_Field.nome.Lower(), Self.castDataTypeToDelphi(t_Field.controlType, t_Field.namespace), t_Field.nome, t_Field.nome]).RetirarAspas());
            t_Unit.insertAndInc(t_Index_Interface_Atributos, '');

            // Implementation Metodos
            t_Index_Metodos_Implementation := t_Unit.getIndex(mda.constants.c_implementation_metodos);

            //Getter
            t_Unit.insertAndInc(t_Index_Metodos_Implementation, Format('function %s.get%s: %s;', [Self.getNomeDaClasse(t_Modelo.nome, a_API.nomeModulo), t_Field.nome, Self.castDataTypeToDelphi(t_Field.controlType, t_Field.namespace)]).RetirarAspas());
            t_Unit.insertAndInc(t_Index_Metodos_Implementation, 'begin');

            if not t_Field.namespace.IsEmpty()
              then begin
                t_Unit.insertAndInc(t_Index_Metodos_Implementation, Format('  if not Assigned(Self.m_%s)', [t_Field.nome]).RetirarAspas());
                t_Unit.insertAndInc(t_Index_Metodos_Implementation, Format('    then Self.m_%s := %s.Create();', [t_Field.nome, Self.castDataTypeToDelphi(t_Field.controlType, t_Field.namespace)]).RetirarAspas());
              end;

            t_Unit.insertAndInc(t_Index_Metodos_Implementation, Format('  Result := Self.m_%s;', [t_Field.nome]).RetirarAspas());
            t_Unit.insertAndInc(t_Index_Metodos_Implementation, 'end;');
            t_Unit.insertAndInc(t_Index_Metodos_Implementation, '');

            //Setter
            t_Unit.insertAndInc(t_Index_Metodos_Implementation, Format('procedure %s.set%s(const a_Value: %s);', [Self.getNomeDaClasse(t_Modelo.nome, a_API.nomeModulo), t_Field.nome, Self.castDataTypeToDelphi(t_Field.controlType, t_Field.namespace)]).RetirarAspas());
            t_Unit.insertAndInc(t_Index_Metodos_Implementation, 'begin');
            t_Unit.insertAndInc(t_Index_Metodos_Implementation, Format('  Self.m_%s := a_Value;', [t_Field.nome]).RetirarAspas());
            t_Unit.insertAndInc(t_Index_Metodos_Implementation, 'end;');
            t_Unit.insertAndInc(t_Index_Metodos_Implementation, '');
          end;


        // Interface
        t_Index_Metodos_Interface := t_Unit.getIndex(mda.constants.c_interface_metodos);
        (*destructor method*)
        t_Unit.insertAndInc(t_Index_Metodos_Interface, '    destructor Destroy(); override;');

        (*IConteudoMensagem methods*)
        t_Unit.insertAndInc(t_Index_Metodos_Interface, '');
        t_Unit.insertAndInc(t_Index_Metodos_Interface, '    function getType(): String;');
        t_Unit.insertAndInc(t_Index_Metodos_Interface, '');
        t_Unit.insertAndInc(t_Index_Metodos_Interface, '    function getBody(): String;');
        t_Unit.insertAndInc(t_Index_Metodos_Interface, '');
        t_Unit.insertAndInc(t_Index_Metodos_Interface, '    function getNameAPI(): String;');
        t_Unit.insertAndInc(t_Index_Metodos_Interface, '');
        t_Unit.insertAndInc(t_Index_Metodos_Interface, '    function getJSON(): TJSONObject;');
        t_Unit.insertAndInc(t_Index_Metodos_Interface, '');
        t_Unit.insertAndInc(t_Index_Metodos_Interface, '    function execute(const a_Connection: TUniConnection): TRecibo;');

        //Implementation
        t_Index_Metodos_Implementation := t_Unit.getIndex(mda.constants.c_implementation_metodos);
        (*destructor method*)
        t_Unit.insertAndInc(t_Index_Metodos_Implementation, Format('destructor %s.Destroy;', [Self.getNomeDaClasse(t_Modelo.nome, a_API.nomeModulo)]).RetirarAspas());
        t_Unit.insertAndInc(t_Index_Metodos_Implementation, 'begin');
        t_Unit.insertAndInc(t_Index_Metodos_Implementation, t_Owners);
        t_Unit.insertAndInc(t_Index_Metodos_Implementation, 'end;');
        t_Unit.insertAndInc(t_Index_Metodos_Implementation, '');

        (*IConteudoMensagem methods*)
        t_Unit.insertAndInc(t_Index_Metodos_Implementation, Format('function %s.getType(): String;', [Self.getNomeDaClasse(t_Modelo.nome, a_API.nomeModulo)]).RetirarAspas());
        t_Unit.insertAndInc(t_Index_Metodos_Implementation, 'begin');
        t_Unit.insertAndInc(t_Index_Metodos_Implementation, '  Result := BROKER_TYPE_MESSAGE_API;');
        t_Unit.insertAndInc(t_Index_Metodos_Implementation, 'end;');
        t_Unit.insertAndInc(t_Index_Metodos_Implementation, '');

        t_Unit.insertAndInc(t_Index_Metodos_Implementation, Format('function %s.getBody(): String;', [Self.getNomeDaClasse(t_Modelo.nome, a_API.nomeModulo)]).RetirarAspas());
        t_Unit.insertAndInc(t_Index_Metodos_Implementation, 'begin');
        t_Unit.insertAndInc(t_Index_Metodos_Implementation, '  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);');
        t_Unit.insertAndInc(t_Index_Metodos_Implementation, 'end;');
        t_Unit.insertAndInc(t_Index_Metodos_Implementation, '');

        t_Unit.insertAndInc(t_Index_Metodos_Implementation, Format('function %s.getNameAPI(): String;', [Self.getNomeDaClasse(t_Modelo.nome, a_API.nomeModulo)]).RetirarAspas());
        t_Unit.insertAndInc(t_Index_Metodos_Implementation, 'begin');
        t_Unit.insertAndInc(t_Index_Metodos_Implementation, '  Result := ' + QuotedStr( Format('%s%s',[a_API.nomeModulo, t_Modelo.nome]) ) + ';' );
        t_Unit.insertAndInc(t_Index_Metodos_Implementation, 'end;');
        t_Unit.insertAndInc(t_Index_Metodos_Implementation, '');

        t_Unit.insertAndInc(t_Index_Metodos_Implementation, Format('function %s.getJSON(): TJSONObject;', [Self.getNomeDaClasse(t_Modelo.nome, a_API.nomeModulo)]).RetirarAspas());
        t_Unit.insertAndInc(t_Index_Metodos_Implementation, 'begin');
        t_Unit.insertAndInc(t_Index_Metodos_Implementation, '  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);');
        t_Unit.insertAndInc(t_Index_Metodos_Implementation, 'end;');
        t_Unit.insertAndInc(t_Index_Metodos_Implementation, '');

        t_Unit.insertAndInc(t_Index_Metodos_Implementation, Format('function %s.execute(const a_Connection: TUniConnection): TRecibo;', [Self.getNomeDaClasse(t_Modelo.nome, a_API.nomeModulo)]).RetirarAspas());
        t_Unit.insertAndInc(t_Index_Metodos_Implementation, 'begin');
        t_Unit.insertAndInc(t_Index_Metodos_Implementation, '  Result := TAPISend.send(a_Connection, Self);');
        t_Unit.insertAndInc(t_Index_Metodos_Implementation, 'end;');
        t_Unit.insertAndInc(t_Index_Metodos_Implementation, '');



        t_Unit.searchReplace(mda.constants.c_interface_fields, '');
        t_Unit.searchReplace(mda.constants.c_interface_metodos_getter, '');
        t_Unit.searchReplace(mda.constants.c_interface_metodos_setter, '');
        t_Unit.searchReplace(mda.constants.c_interface_metodos, '');
        t_Unit.searchReplace(mda.constants.c_interface_atributos, '');
      end;

    t_Unit.searchReplace(mda.constants.c_interface_negocio, '');
    t_Unit.searchReplace(mda.constants.c_implementation_metodos, '');

    // Gerar o arquivo
    t_Unit.SaveToFile(String(TUtils.getDirSyntaxeCodeModel() + 'api.model.' + LowerCase(a_API.nomeSistema + '.' + a_API.nomeModulo) + '.pas').RetirarAspas());
  finally
    t_Unit.Free();
  end;
end;

function TAdapterDelphi.gerarCodigoFonte(
  const a_API: TAPI
): TMDAErro;

  var t_Unit: TStringList;

  procedure carregarTemplate(const a_template, a_filename : String);
  begin
      if FileExists(a_filename)
        then DeleteFile(a_filename);

      t_Unit.Clear;
      t_Unit.LoadFromFile( a_template );
      t_Unit.SaveToFile( a_filename );
  end;

begin
  if not Assigned(a_API)
    then begin
      t_Unit := TStringList.Create();
      try
        carregarTemplate( '..\template\delphi\nsjAPI_Test.dpr',
                          '..\..\source\' + ParamStr(mda.constants.c_Param_Syntaxe_Code) + '\package\nsjAPI_Test.dpr');

        carregarTemplate( '..\template\delphi\api.command.client.pas',
                          '..\..\source\' + ParamStr(mda.constants.c_Param_Syntaxe_Code) + '\src\command\api.command.client.pas');
      finally
        t_Unit.Free();
      end;
    end
  else
    begin
      Result := Self.gerarController(a_API);
      if not Result.comErro
        then begin
          Result := Self.gerarClasses(a_API);
          if not Result.comErro
            then begin
              Result := Self.preencherCommandClient(a_API);
            end;
        end;
    end;
end;

function TAdapterDelphi.gerarController(
  const a_API: TAPI
): TMDAErro;

  var t_Unit: TStringList;

  var t_Indice: Integer;
  var t_Index_Uses: Integer;
  var t_Index_Metodos_Interface: Integer;
  var t_Index_Metodos_Implementation: Integer;
  var t_Index_Metodos_Implementation_cmd: Integer;

  var t_Modelo: TNodeClasseModelo;

  var t_ClassInternal: Integer;

  procedure novoMetodo(
    const a_Nome: String;
    const a_Parametro: String;
    const a_Retorno: String
  );
  begin
    t_Unit.insertAndInc(t_Index_Metodos_Interface, Format('        function %s(const a_Objeto: %s): %s; overload;', [a_Nome, a_Parametro, a_Retorno]).RetirarAspas());
    Inc(t_Index_Metodos_Implementation);
  end;

  procedure implementarMetodo(
    const a_Modulo: String;
    const a_Nome: String;
    const a_Parametro: String;
    const a_Retorno: String;
    const a_Sistema: String
  );
  begin
    t_Unit.insertAndInc(t_Index_Metodos_Implementation, Format('function TAPI%s.%s(const a_Objeto: %s): %s;', [a_Modulo, a_Nome, a_Parametro, a_Retorno]).RetirarAspas());

    // Caso o tipo de dados seja um JSON, será necessário serializar para o Objeto real
    if (UpperCase(a_Parametro).RetirarAspas() = mda.constants.cTipoJSON)
      then begin
        t_Unit.insertAndInc(t_Index_Metodos_Implementation, '');
        t_Unit.insertAndInc(t_Index_Metodos_Implementation, Format('  var t_Modelo: %s;', [Self.getNomeDaClasse(a_Nome, a_Modulo)]).RetirarAspas());
        t_Unit.insertAndInc(t_Index_Metodos_Implementation, '');
      end;

    t_Unit.insertAndInc(t_Index_Metodos_Implementation, 'begin');

    // Caso o tipo de dados seja um JSON, será necessário serializar para o Objeto real
    if (UpperCase(a_Parametro).RetirarAspas() = mda.constants.cTipoJSON)
      then begin
        t_Unit.insertAndInc(t_Index_Metodos_Implementation, Format('  t_Modelo := %s.Create();', [Self.getNomeDaClasse(a_Nome, a_Modulo)]).RetirarAspas());
        t_Unit.insertAndInc(t_Index_Metodos_Implementation, '  try');
        t_Unit.insertAndInc(t_Index_Metodos_Implementation, '    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);');
        t_Unit.insertAndInc(t_Index_Metodos_Implementation, Format('    Result := Self.%s(t_Modelo);', [a_Nome]));
        t_Unit.insertAndInc(t_Index_Metodos_Implementation, '  finally');
        t_Unit.insertAndInc(t_Index_Metodos_Implementation, '    t_Modelo.Free();');
        t_Unit.insertAndInc(t_Index_Metodos_Implementation, '  end;');
      end
    else t_Unit.insertAndInc(t_Index_Metodos_Implementation, Format('  Result := TDAO.callFunction(%s, TUtils.MontaParametrosSQL(a_Objeto));', [QuotedStr(a_Sistema + '.api_' + Self.getNomeDaClasse(a_Nome, a_Modulo, False))]));

    t_Unit.insertAndInc(t_Index_Metodos_Implementation, 'end;');
    t_Unit.insertAndInc(t_Index_Metodos_Implementation, '');
  end;

  procedure ImplementarCommand(
    const a_Condicao: String;
    const a_Metodo: String;
    const a_isObject: Boolean
  );
  begin
    if not a_isObject
      then t_Index_Metodos_Implementation_cmd := t_Unit.getIndex(mda.constants.c_implementation_metodos_cmd_json)
      else t_Index_Metodos_Implementation_cmd := t_Unit.getIndex(mda.constants.c_implementation_metodos_cmd_object);

    if not a_isObject
      then t_Unit.insertAndInc(t_Index_Metodos_Implementation_cmd, '  if (UpperCase(a_api) = ' + a_Condicao.Upper().Quoted() + ')')
      else t_Unit.insertAndInc(t_Index_Metodos_Implementation_cmd, '  if (a_param is ' + a_Condicao + ')');

    t_Unit.insertAndInc(t_Index_Metodos_Implementation_cmd, '    then begin');

    if not a_isObject
      then t_Unit.insertAndInc(t_Index_Metodos_Implementation_cmd, '       Result := Self.' + a_Metodo + '(a_Param);')
      else t_Unit.insertAndInc(t_Index_Metodos_Implementation_cmd, '       Result := Self.' + a_Metodo + '(a_Param as ' + a_Condicao + ');');

    t_Unit.insertAndInc(t_Index_Metodos_Implementation_cmd, '       Exit();');
    t_Unit.insertAndInc(t_Index_Metodos_Implementation_cmd, '    end;');
    t_Unit.insertAndInc(t_Index_Metodos_Implementation_cmd, '');
  end;

begin
  Result.init();

  t_Unit := TStringList.Create();
  try
    t_Unit.LoadFromFile('..\template\delphi\api.controller.negocio.pas');

    t_Unit.searchReplace(mda.constants.c_negocio, String(a_API.nomeSistema + '.' + a_API.nomeModulo).RetirarAspas());
    t_Unit.searchReplace(mda.constants.c_negocio_class, a_API.nomeModulo.RetirarAspas());

    // Métodos
    t_Index_Metodos_Interface := t_Unit.getIndex(mda.constants.c_interface_metodos);
    t_Index_Metodos_Implementation := t_Unit.getIndex(mda.constants.c_implementation_metodos);

    t_ClassInternal := 0;
    for t_Indice := 0 to a_API.modelos.Count - 1
      do begin
        t_Modelo := a_API.modelos.Items[t_Indice];

        if t_Modelo.nome.IsEmpty()
          then Continue
          else Inc(t_ClassInternal);

        // Interface
        novoMetodo(t_Modelo.nome, 'String', 'TRecibo');
        novoMetodo(t_Modelo.nome, Self.getNomeDaClasse(t_Modelo.nome, a_API.nomeModulo), 'TRecibo');

        t_Unit.insertAndInc(t_Index_Metodos_Interface, '');
        Inc(t_Index_Metodos_Implementation);

        implementarMetodo(a_API.nomeModulo, t_Modelo.nome, Self.getNomeDaClasse(t_Modelo.nome, a_API.nomeModulo), 'TRecibo', a_API.nomeSistema);
        implementarMetodo(a_API.nomeModulo, t_Modelo.nome, 'String', 'TRecibo', a_API.nomeSistema);
      end;

    for t_Indice := 0 to a_API.modelos.Count - 1
      do begin
        t_Modelo := a_API.modelos.Items[t_Indice];

        if t_Modelo.nome.IsEmpty()
          then Continue
          else Inc(t_ClassInternal);

        // Command JSON
        ImplementarCommand(Self.getNomeDaClasse(t_Modelo.nome, a_API.nomeModulo, False), t_Modelo.nome, False);
        // Command TObject
        ImplementarCommand(Self.getNomeDaClasse(t_Modelo.nome, a_API.nomeModulo), t_Modelo.nome, True);
      end;

    t_Unit.searchReplace(mda.constants.c_interface_metodos, '');
    t_Unit.searchReplace(mda.constants.c_implementation_metodos, '');
    t_Unit.searchReplace(mda.constants.c_implementation_metodos_cmd_json, '');
    t_Unit.searchReplace(mda.constants.c_implementation_metodos_cmd_object, '');

    // Gerar o arquivo
    if t_ClassInternal > 0
      then t_Unit.SaveToFile(String(TUtils.getDirSyntaxeCodeController() + 'api.controller.' + LowerCase(a_API.nomeSistema + '.' + a_API.nomeModulo) + '.pas').RetirarAspas());
  finally
    t_Unit.Free();
  end;
end;

function TAdapterDelphi.GetNameTypeFromNameSpace(
  const a_namespace: string): String;

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

function TAdapterDelphi.getNomeDaClasse(
  const a_Nome: String;
  const a_Modulo: String;
  const a_ComIdentificador: Boolean
): String;
begin
  Result := IfThen(a_ComIdentificador, ('T' + a_Modulo + a_Nome).RetirarAspas(), (a_Modulo + a_Nome).RetirarAspas());
end;

function TAdapterDelphi.getUsesOfNameSpace(
  const a_namespace: String
): String;

  var t_Indice: Integer;
  var t_Count: Integer;

begin
  t_Count := 0;
  Result := 'api.model.';
  for t_Indice := Low(a_namespace) to High(a_namespace)
    do begin
      if a_namespace[t_Indice] = '\'
        then begin
          Inc(t_Count);

          if t_Count = 2
            then Break;

          Result := Result + '.';
        end
      else Result := Result + a_namespace[t_Indice];
    end;
end;

function TAdapterDelphi.getValorMocado(const a_nomemodulo, a_nomefield, a_controltype, a_namespace: String): String;

  const GUID_GRUPO_EMPRESARIAL = '80ab5ba0-bd45-4673-9a47-636767f720f4';
  const GUID_EMPRESA = 'c9c2f36f-e50d-448c-bec2-cf1e5d38b784';
  const GUID_ESTABELECIMENTO = 'a6ce3a18-b54a-46b6-b415-2f38b0be6993';

  function NewGUID : String;
  begin
     if ( UpperCase(a_nomemodulo) = UpperCase(c_model_grupoempresarial) ) or
        ( UpperCase(a_nomefield) = UpperCase(c_model_grupoempresarial) )
       then result := QuotedStr( GUID_GRUPO_EMPRESARIAL )
     else if ( UpperCase(a_nomemodulo) = UpperCase(c_model_empresa) ) or
             ( UpperCase(a_nomefield) = UpperCase(c_model_empresa) )
       then result := QuotedStr( GUID_EMPRESA )
     else if ( UpperCase(a_nomemodulo) = UpperCase(c_model_estabelecimento) ) or
             ( UpperCase(a_nomefield) = UpperCase(c_model_estabelecimento) )
       then result := QuotedStr( GUID_ESTABELECIMENTO )
     else
        result := TManipuladorGUID.ToQuotedString( TFuncoesGUID.NewGUID );
  end;

begin
  if a_ControlType = 'Guid'
    then result := NewGuid
  else if a_ControlType = 'String'
    then Result := QuotedStr('001')
  else if a_ControlType = 'Memo'
    then Result := QuotedStr('001')
  else if a_ControlType = 'Integer'
    then Result := '0'
  else if a_ControlType = 'Currency'
    then Result := '0'
  else if a_ControlType = 'Date'
    then Result := 'Today()'
  else if a_ControlType = 'DateTime'
    then Result := 'Now()'
  else if a_ControlType = 'Boolean'
    then Result := 'True'
  else if a_ControlType = 'Object'
    then Result := GetNameTypeFromNameSpace(a_namespace) + '.Create()'
  else if a_ControlType = 'ObjectList'
    then Result := 'TObjectList<' + GetNameTypeFromNameSpace(a_namespace) + '>.Create()'
  else if (a_ControlType = 'EntidadeInterna') or (a_ControlType = 'EntidadeJuridica') or
          (a_ControlType = 'EntidadeFisica') or (a_ControlType = 'EntidadeFisicaJuridica')
    then Result := NewGuid
  else if a_ControlType = 'ListaEntidadeInterna'
    then Result := 'TList<String>.Create()';
end;

function TAdapterDelphi.preencherCommandClient(
  const a_API: TAPI
): TMDAErro;

  var t_Modelo: TNodeClasseModelo;
  var t_ClassInternal: Integer;

  var t_Unit: TStringList;

  var t_Indice: Integer;
  var t_Index: Integer;

begin
  Result.init();

  t_Unit := TStringList.Create();
  try
    t_Unit.LoadFromFile('..\..\source\' + ParamStr(mda.constants.c_Param_Syntaxe_Code) + '\src\command\api.command.client.pas');

    t_Index := t_Unit.getIndex(mda.constants.c_cmd_client_var);
    t_Unit.insertAndInc(t_Index, Format('        var m_controller_%s: TAPI%s;', [a_API.nomeModulo, a_API.nomeModulo]));

    t_Index := t_Unit.getIndex(mda.constants.c_cmd_client_get);
    t_Unit.insertAndInc(t_Index, Format('        function get%s(): TAPI%s;', [a_API.nomeModulo, a_API.nomeModulo]));

    t_Index := t_Unit.getIndex(mda.constants.c_cmd_client_uses);
    t_Unit.insertAndInc(t_Index, Format('    api.controller.%s.%s,', [a_API.nomeSistema, a_API.nomeModulo]));

    t_Index := t_Unit.getIndex(mda.constants.c_cmd_client_get_imp);
    t_Unit.insertAndInc(t_Index, '');
    t_Unit.insertAndInc(t_Index, Format('function TCommandClientAPI.get%s(): TAPI%s;', [a_API.nomeModulo, a_API.nomeModulo]));
    t_Unit.insertAndInc(t_Index, 'begin');
    t_Unit.insertAndInc(t_Index, Format('  if not Assigned(Self.m_controller_%s)', [a_API.nomeModulo]));
    t_Unit.insertAndInc(t_Index, '    then begin');
    t_Unit.insertAndInc(t_Index, Format('      Self.m_controller_%s := TAPI%s.Create();', [a_API.nomeModulo, a_API.nomeModulo]));
    t_Unit.insertAndInc(t_Index, '    end;');
    t_Unit.insertAndInc(t_Index, Format('  Result := Self.m_controller_%s;', [a_API.nomeModulo]));
    t_Unit.insertAndInc(t_Index, 'end;');

    t_ClassInternal := 0;
    for t_Indice := 0 to a_API.modelos.Count - 1
      do begin
        t_Modelo := a_API.modelos.Items[t_Indice];

        if t_Modelo.nome.IsEmpty()
          then Continue
          else Inc(t_ClassInternal);

        t_Index := t_Unit.getIndex(mda.constants.c_cmd_client_map);
        t_Unit.insertAndInc(t_Index, Format('  Self.m_map.Add(%s, Self.get%s());', [Self.getNomeDaClasse(t_Modelo.nome, a_API.nomeModulo, False).Upper().Quoted(), a_API.nomeModulo]));

      end;

    // Gerar o arquivo
    if t_ClassInternal > 0
      then t_Unit.SaveToFile('..\..\source\' + ParamStr(mda.constants.c_Param_Syntaxe_Code) + '\src\command\api.command.client.pas');
  finally
    t_Unit.Free();
  end;
end;

end.
