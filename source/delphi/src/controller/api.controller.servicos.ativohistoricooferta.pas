unit api.controller.servicos.AtivoHistoricoOferta;

interface

  uses
    System.SysUtils,

    api.model.servicos.AtivoHistoricoOferta,
    api.model.recibo,
    api.dao,
    api.utils,
    api.command,

    Nasajon.Sdk.Helpers.Rest.Json.Generics    

    ;

  type
    TAPIAtivoHistoricoOferta = class(TInterfacedObject, ICommandAPI)


      public

        function execute(const a_api: String; const a_param: String): TRecibo; overload;
        function execute(const a_param: TObject): TRecibo; overload;

        function Novo(const a_Objeto: String): TRecibo; overload;
        function Novo(const a_Objeto: TAtivoHistoricoOfertaNovo): TRecibo; overload;

        function Alterar(const a_Objeto: String): TRecibo; overload;
        function Alterar(const a_Objeto: TAtivoHistoricoOfertaAlterar): TRecibo; overload;

        function Excluir(const a_Objeto: String): TRecibo; overload;
        function Excluir(const a_Objeto: TAtivoHistoricoOfertaExcluir): TRecibo; overload;

        
    end;

implementation

{ TAPIservicos.AtivoHistoricoOferta }

function TAPIAtivoHistoricoOferta.execute(const a_api: String; const a_param: String): TRecibo;
begin
  if (UpperCase(a_api) = 'ATIVOHISTORICOOFERTANOVO')
    then begin
       Result := Self.Novo(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'ATIVOHISTORICOOFERTAALTERAR')
    then begin
       Result := Self.Alterar(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'ATIVOHISTORICOOFERTAEXCLUIR')
    then begin
       Result := Self.Excluir(a_Param);
       Exit();
    end;


end;

function TAPIAtivoHistoricoOferta.execute(const a_param: TObject): TRecibo;
begin
  if (a_param is TAtivoHistoricoOfertaNovo)
    then begin
       Result := Self.Novo(a_Param as TAtivoHistoricoOfertaNovo);
       Exit();
    end;

  if (a_param is TAtivoHistoricoOfertaAlterar)
    then begin
       Result := Self.Alterar(a_Param as TAtivoHistoricoOfertaAlterar);
       Exit();
    end;

  if (a_param is TAtivoHistoricoOfertaExcluir)
    then begin
       Result := Self.Excluir(a_Param as TAtivoHistoricoOfertaExcluir);
       Exit();
    end;


end;

function TAPIAtivoHistoricoOferta.Novo(const a_Objeto: TAtivoHistoricoOfertaNovo): TRecibo;
begin
  Result := TDAO.callFunction('servicos.api_AtivoHistoricoOfertaNovo', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIAtivoHistoricoOferta.Novo(const a_Objeto: String): TRecibo;

  var t_Modelo: TAtivoHistoricoOfertaNovo;

begin
  t_Modelo := TAtivoHistoricoOfertaNovo.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Novo(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIAtivoHistoricoOferta.Alterar(const a_Objeto: TAtivoHistoricoOfertaAlterar): TRecibo;
begin
  Result := TDAO.callFunction('servicos.api_AtivoHistoricoOfertaAlterar', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIAtivoHistoricoOferta.Alterar(const a_Objeto: String): TRecibo;

  var t_Modelo: TAtivoHistoricoOfertaAlterar;

begin
  t_Modelo := TAtivoHistoricoOfertaAlterar.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Alterar(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIAtivoHistoricoOferta.Excluir(const a_Objeto: TAtivoHistoricoOfertaExcluir): TRecibo;
begin
  Result := TDAO.callFunction('servicos.api_AtivoHistoricoOfertaExcluir', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIAtivoHistoricoOferta.Excluir(const a_Objeto: String): TRecibo;

  var t_Modelo: TAtivoHistoricoOfertaExcluir;

begin
  t_Modelo := TAtivoHistoricoOfertaExcluir.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Excluir(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;


end.
