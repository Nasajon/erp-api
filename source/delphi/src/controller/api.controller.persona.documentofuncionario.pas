unit api.controller.persona.DocumentoFuncionario;

interface

  uses
    System.SysUtils,

    api.model.persona.DocumentoFuncionario,
    api.model.recibo,
    api.dao,
    api.utils,
    api.command,

    Nasajon.Sdk.Helpers.Rest.Json.Generics    

    ;

  type
    TAPIDocumentoFuncionario = class(TInterfacedObject, ICommandAPI)


      public

        function execute(const a_api: String; const a_param: String): TRecibo; overload;
        function execute(const a_param: TObject): TRecibo; overload;

        function Novo(const a_Objeto: String): TRecibo; overload;
        function Novo(const a_Objeto: TDocumentoFuncionarioNovo): TRecibo; overload;

        function Alterar(const a_Objeto: String): TRecibo; overload;
        function Alterar(const a_Objeto: TDocumentoFuncionarioAlterar): TRecibo; overload;

        function Excluir(const a_Objeto: String): TRecibo; overload;
        function Excluir(const a_Objeto: TDocumentoFuncionarioExcluir): TRecibo; overload;

        
    end;

implementation

{ TAPIpersona.DocumentoFuncionario }

function TAPIDocumentoFuncionario.execute(const a_api: String; const a_param: String): TRecibo;
begin
  if (UpperCase(a_api) = 'DOCUMENTOFUNCIONARIONOVO')
    then begin
       Result := Self.Novo(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'DOCUMENTOFUNCIONARIOALTERAR')
    then begin
       Result := Self.Alterar(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'DOCUMENTOFUNCIONARIOEXCLUIR')
    then begin
       Result := Self.Excluir(a_Param);
       Exit();
    end;


end;

function TAPIDocumentoFuncionario.execute(const a_param: TObject): TRecibo;
begin
  if (a_param is TDocumentoFuncionarioNovo)
    then begin
       Result := Self.Novo(a_Param as TDocumentoFuncionarioNovo);
       Exit();
    end;

  if (a_param is TDocumentoFuncionarioAlterar)
    then begin
       Result := Self.Alterar(a_Param as TDocumentoFuncionarioAlterar);
       Exit();
    end;

  if (a_param is TDocumentoFuncionarioExcluir)
    then begin
       Result := Self.Excluir(a_Param as TDocumentoFuncionarioExcluir);
       Exit();
    end;


end;

function TAPIDocumentoFuncionario.Novo(const a_Objeto: TDocumentoFuncionarioNovo): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_DocumentoFuncionarioNovo', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIDocumentoFuncionario.Novo(const a_Objeto: String): TRecibo;

  var t_Modelo: TDocumentoFuncionarioNovo;

begin
  t_Modelo := TDocumentoFuncionarioNovo.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Novo(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIDocumentoFuncionario.Alterar(const a_Objeto: TDocumentoFuncionarioAlterar): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_DocumentoFuncionarioAlterar', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIDocumentoFuncionario.Alterar(const a_Objeto: String): TRecibo;

  var t_Modelo: TDocumentoFuncionarioAlterar;

begin
  t_Modelo := TDocumentoFuncionarioAlterar.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Alterar(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIDocumentoFuncionario.Excluir(const a_Objeto: TDocumentoFuncionarioExcluir): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_DocumentoFuncionarioExcluir', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIDocumentoFuncionario.Excluir(const a_Objeto: String): TRecibo;

  var t_Modelo: TDocumentoFuncionarioExcluir;

begin
  t_Modelo := TDocumentoFuncionarioExcluir.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Excluir(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;


end.
