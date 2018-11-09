unit api.controller.servicos.CFOPServico;

interface

  uses
    System.SysUtils,

    api.model.servicos.CFOPServico,
    api.model.recibo,
    api.dao,
    api.utils,
    api.command,

    Nasajon.Sdk.Helpers.Rest.Json.Generics    

    ;

  type
    TAPICFOPServico = class(TInterfacedObject, ICommandAPI)


      public

        function execute(const a_api: String; const a_param: String): TRecibo; overload;
        function execute(const a_param: TObject): TRecibo; overload;

        function Novo(const a_Objeto: String): TRecibo; overload;
        function Novo(const a_Objeto: TCFOPServicoNovo): TRecibo; overload;

        function Alterar(const a_Objeto: String): TRecibo; overload;
        function Alterar(const a_Objeto: TCFOPServicoAlterar): TRecibo; overload;

        function Excluir(const a_Objeto: String): TRecibo; overload;
        function Excluir(const a_Objeto: TCFOPServicoExcluir): TRecibo; overload;

        
    end;

implementation

{ TAPIservicos.CFOPServico }

function TAPICFOPServico.execute(const a_api: String; const a_param: String): TRecibo;
begin
  if (UpperCase(a_api) = 'CFOPSERVICONOVO')
    then begin
       Result := Self.Novo(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'CFOPSERVICOALTERAR')
    then begin
       Result := Self.Alterar(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'CFOPSERVICOEXCLUIR')
    then begin
       Result := Self.Excluir(a_Param);
       Exit();
    end;


end;

function TAPICFOPServico.execute(const a_param: TObject): TRecibo;
begin
  if (a_param is TCFOPServicoNovo)
    then begin
       Result := Self.Novo(a_Param as TCFOPServicoNovo);
       Exit();
    end;

  if (a_param is TCFOPServicoAlterar)
    then begin
       Result := Self.Alterar(a_Param as TCFOPServicoAlterar);
       Exit();
    end;

  if (a_param is TCFOPServicoExcluir)
    then begin
       Result := Self.Excluir(a_Param as TCFOPServicoExcluir);
       Exit();
    end;


end;

function TAPICFOPServico.Novo(const a_Objeto: TCFOPServicoNovo): TRecibo;
begin
  Result := TDAO.callFunction('servicos.api_CFOPServicoNovo', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPICFOPServico.Novo(const a_Objeto: String): TRecibo;

  var t_Modelo: TCFOPServicoNovo;

begin
  t_Modelo := TCFOPServicoNovo.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Novo(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPICFOPServico.Alterar(const a_Objeto: TCFOPServicoAlterar): TRecibo;
begin
  Result := TDAO.callFunction('servicos.api_CFOPServicoAlterar', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPICFOPServico.Alterar(const a_Objeto: String): TRecibo;

  var t_Modelo: TCFOPServicoAlterar;

begin
  t_Modelo := TCFOPServicoAlterar.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Alterar(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPICFOPServico.Excluir(const a_Objeto: TCFOPServicoExcluir): TRecibo;
begin
  Result := TDAO.callFunction('servicos.api_CFOPServicoExcluir', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPICFOPServico.Excluir(const a_Objeto: String): TRecibo;

  var t_Modelo: TCFOPServicoExcluir;

begin
  t_Modelo := TCFOPServicoExcluir.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Excluir(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;


end.
