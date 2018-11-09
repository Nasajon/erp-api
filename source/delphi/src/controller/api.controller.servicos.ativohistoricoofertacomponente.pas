unit api.controller.servicos.AtivoHistoricoOfertaComponente;

interface

  uses
    System.SysUtils,

    api.model.servicos.AtivoHistoricoOfertaComponente,
    api.model.recibo,
    api.dao,
    api.utils,
    api.command,

    Nasajon.Sdk.Helpers.Rest.Json.Generics    

    ;

  type
    TAPIAtivoHistoricoOfertaComponente = class(TInterfacedObject, ICommandAPI)


      public

        function execute(const a_api: String; const a_param: String): TRecibo; overload;
        function execute(const a_param: TObject): TRecibo; overload;

        function Novo(const a_Objeto: String): TRecibo; overload;
        function Novo(const a_Objeto: TAtivoHistoricoOfertaComponenteNovo): TRecibo; overload;

        function Alterar(const a_Objeto: String): TRecibo; overload;
        function Alterar(const a_Objeto: TAtivoHistoricoOfertaComponenteAlterar): TRecibo; overload;

        function Excluir(const a_Objeto: String): TRecibo; overload;
        function Excluir(const a_Objeto: TAtivoHistoricoOfertaComponenteExcluir): TRecibo; overload;

        
    end;

implementation

{ TAPIservicos.AtivoHistoricoOfertaComponente }

function TAPIAtivoHistoricoOfertaComponente.execute(const a_api: String; const a_param: String): TRecibo;
begin
  if (UpperCase(a_api) = 'ATIVOHISTORICOOFERTACOMPONENTENOVO')
    then begin
       Result := Self.Novo(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'ATIVOHISTORICOOFERTACOMPONENTEALTERAR')
    then begin
       Result := Self.Alterar(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'ATIVOHISTORICOOFERTACOMPONENTEEXCLUIR')
    then begin
       Result := Self.Excluir(a_Param);
       Exit();
    end;


end;

function TAPIAtivoHistoricoOfertaComponente.execute(const a_param: TObject): TRecibo;
begin
  if (a_param is TAtivoHistoricoOfertaComponenteNovo)
    then begin
       Result := Self.Novo(a_Param as TAtivoHistoricoOfertaComponenteNovo);
       Exit();
    end;

  if (a_param is TAtivoHistoricoOfertaComponenteAlterar)
    then begin
       Result := Self.Alterar(a_Param as TAtivoHistoricoOfertaComponenteAlterar);
       Exit();
    end;

  if (a_param is TAtivoHistoricoOfertaComponenteExcluir)
    then begin
       Result := Self.Excluir(a_Param as TAtivoHistoricoOfertaComponenteExcluir);
       Exit();
    end;


end;

function TAPIAtivoHistoricoOfertaComponente.Novo(const a_Objeto: TAtivoHistoricoOfertaComponenteNovo): TRecibo;
begin
  Result := TDAO.callFunction('servicos.api_AtivoHistoricoOfertaComponenteNovo', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIAtivoHistoricoOfertaComponente.Novo(const a_Objeto: String): TRecibo;

  var t_Modelo: TAtivoHistoricoOfertaComponenteNovo;

begin
  t_Modelo := TAtivoHistoricoOfertaComponenteNovo.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Novo(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIAtivoHistoricoOfertaComponente.Alterar(const a_Objeto: TAtivoHistoricoOfertaComponenteAlterar): TRecibo;
begin
  Result := TDAO.callFunction('servicos.api_AtivoHistoricoOfertaComponenteAlterar', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIAtivoHistoricoOfertaComponente.Alterar(const a_Objeto: String): TRecibo;

  var t_Modelo: TAtivoHistoricoOfertaComponenteAlterar;

begin
  t_Modelo := TAtivoHistoricoOfertaComponenteAlterar.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Alterar(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIAtivoHistoricoOfertaComponente.Excluir(const a_Objeto: TAtivoHistoricoOfertaComponenteExcluir): TRecibo;
begin
  Result := TDAO.callFunction('servicos.api_AtivoHistoricoOfertaComponenteExcluir', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIAtivoHistoricoOfertaComponente.Excluir(const a_Objeto: String): TRecibo;

  var t_Modelo: TAtivoHistoricoOfertaComponenteExcluir;

begin
  t_Modelo := TAtivoHistoricoOfertaComponenteExcluir.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Excluir(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;


end.
