unit api.controller.persona.DocumentoDependenteFuncionario;

interface

  uses
    System.SysUtils,

    api.model.persona.DocumentoDependenteFuncionario,
    api.model.recibo,
    api.dao,
    api.utils,
    api.command,

    Nasajon.Sdk.Helpers.Rest.Json.Generics    

    ;

  type
    TAPIDocumentoDependenteFuncionario = class(TInterfacedObject, ICommandAPI)


      public

        function execute(const a_api: String; const a_param: String): TRecibo; overload;
        function execute(const a_param: TObject): TRecibo; overload;

        function Novo(const a_Objeto: String): TRecibo; overload;
        function Novo(const a_Objeto: TDocumentoDependenteFuncionarioNovo): TRecibo; overload;

        function Alterar(const a_Objeto: String): TRecibo; overload;
        function Alterar(const a_Objeto: TDocumentoDependenteFuncionarioAlterar): TRecibo; overload;

        function Excluir(const a_Objeto: String): TRecibo; overload;
        function Excluir(const a_Objeto: TDocumentoDependenteFuncionarioExcluir): TRecibo; overload;

        
    end;

implementation

{ TAPIpersona.DocumentoDependenteFuncionario }

function TAPIDocumentoDependenteFuncionario.execute(const a_api: String; const a_param: String): TRecibo;
begin
  if (UpperCase(a_api) = 'DOCUMENTODEPENDENTEFUNCIONARIONOVO')
    then begin
       Result := Self.Novo(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'DOCUMENTODEPENDENTEFUNCIONARIOALTERAR')
    then begin
       Result := Self.Alterar(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'DOCUMENTODEPENDENTEFUNCIONARIOEXCLUIR')
    then begin
       Result := Self.Excluir(a_Param);
       Exit();
    end;


end;

function TAPIDocumentoDependenteFuncionario.execute(const a_param: TObject): TRecibo;
begin
  if (a_param is TDocumentoDependenteFuncionarioNovo)
    then begin
       Result := Self.Novo(a_Param as TDocumentoDependenteFuncionarioNovo);
       Exit();
    end;

  if (a_param is TDocumentoDependenteFuncionarioAlterar)
    then begin
       Result := Self.Alterar(a_Param as TDocumentoDependenteFuncionarioAlterar);
       Exit();
    end;

  if (a_param is TDocumentoDependenteFuncionarioExcluir)
    then begin
       Result := Self.Excluir(a_Param as TDocumentoDependenteFuncionarioExcluir);
       Exit();
    end;


end;

function TAPIDocumentoDependenteFuncionario.Novo(const a_Objeto: TDocumentoDependenteFuncionarioNovo): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_DocumentoDependenteFuncionarioNovo', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIDocumentoDependenteFuncionario.Novo(const a_Objeto: String): TRecibo;

  var t_Modelo: TDocumentoDependenteFuncionarioNovo;

begin
  t_Modelo := TDocumentoDependenteFuncionarioNovo.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Novo(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIDocumentoDependenteFuncionario.Alterar(const a_Objeto: TDocumentoDependenteFuncionarioAlterar): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_DocumentoDependenteFuncionarioAlterar', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIDocumentoDependenteFuncionario.Alterar(const a_Objeto: String): TRecibo;

  var t_Modelo: TDocumentoDependenteFuncionarioAlterar;

begin
  t_Modelo := TDocumentoDependenteFuncionarioAlterar.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Alterar(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIDocumentoDependenteFuncionario.Excluir(const a_Objeto: TDocumentoDependenteFuncionarioExcluir): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_DocumentoDependenteFuncionarioExcluir', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIDocumentoDependenteFuncionario.Excluir(const a_Objeto: String): TRecibo;

  var t_Modelo: TDocumentoDependenteFuncionarioExcluir;

begin
  t_Modelo := TDocumentoDependenteFuncionarioExcluir.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Excluir(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;


end.
