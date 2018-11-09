unit api.controller.servicos.CatalogoDeOferta;

interface

  uses
    System.SysUtils,

    api.model.servicos.CatalogoDeOferta,
    api.model.recibo,
    api.dao,
    api.utils,
    api.command,

    Nasajon.Sdk.Helpers.Rest.Json.Generics    

    ;

  type
    TAPICatalogoDeOferta = class(TInterfacedObject, ICommandAPI)


      public

        function execute(const a_api: String; const a_param: String): TRecibo; overload;
        function execute(const a_param: TObject): TRecibo; overload;

        function Novo(const a_Objeto: String): TRecibo; overload;
        function Novo(const a_Objeto: TCatalogoDeOfertaNovo): TRecibo; overload;

        function Alterar(const a_Objeto: String): TRecibo; overload;
        function Alterar(const a_Objeto: TCatalogoDeOfertaAlterar): TRecibo; overload;

        function Excluir(const a_Objeto: String): TRecibo; overload;
        function Excluir(const a_Objeto: TCatalogoDeOfertaExcluir): TRecibo; overload;

        
    end;

implementation

{ TAPIservicos.CatalogoDeOferta }

function TAPICatalogoDeOferta.execute(const a_api: String; const a_param: String): TRecibo;
begin
  if (UpperCase(a_api) = 'CATALOGODEOFERTANOVO')
    then begin
       Result := Self.Novo(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'CATALOGODEOFERTAALTERAR')
    then begin
       Result := Self.Alterar(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'CATALOGODEOFERTAEXCLUIR')
    then begin
       Result := Self.Excluir(a_Param);
       Exit();
    end;


end;

function TAPICatalogoDeOferta.execute(const a_param: TObject): TRecibo;
begin
  if (a_param is TCatalogoDeOfertaNovo)
    then begin
       Result := Self.Novo(a_Param as TCatalogoDeOfertaNovo);
       Exit();
    end;

  if (a_param is TCatalogoDeOfertaAlterar)
    then begin
       Result := Self.Alterar(a_Param as TCatalogoDeOfertaAlterar);
       Exit();
    end;

  if (a_param is TCatalogoDeOfertaExcluir)
    then begin
       Result := Self.Excluir(a_Param as TCatalogoDeOfertaExcluir);
       Exit();
    end;


end;

function TAPICatalogoDeOferta.Novo(const a_Objeto: TCatalogoDeOfertaNovo): TRecibo;
begin
  Result := TDAO.callFunction('servicos.api_CatalogoDeOfertaNovo', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPICatalogoDeOferta.Novo(const a_Objeto: String): TRecibo;

  var t_Modelo: TCatalogoDeOfertaNovo;

begin
  t_Modelo := TCatalogoDeOfertaNovo.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Novo(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPICatalogoDeOferta.Alterar(const a_Objeto: TCatalogoDeOfertaAlterar): TRecibo;
begin
  Result := TDAO.callFunction('servicos.api_CatalogoDeOfertaAlterar', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPICatalogoDeOferta.Alterar(const a_Objeto: String): TRecibo;

  var t_Modelo: TCatalogoDeOfertaAlterar;

begin
  t_Modelo := TCatalogoDeOfertaAlterar.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Alterar(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPICatalogoDeOferta.Excluir(const a_Objeto: TCatalogoDeOfertaExcluir): TRecibo;
begin
  Result := TDAO.callFunction('servicos.api_CatalogoDeOfertaExcluir', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPICatalogoDeOferta.Excluir(const a_Objeto: String): TRecibo;

  var t_Modelo: TCatalogoDeOfertaExcluir;

begin
  t_Modelo := TCatalogoDeOfertaExcluir.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Excluir(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;


end.
