unit api.controller.servicos.Oferta;

interface

  uses
    System.SysUtils,

    api.model.servicos.Oferta,
    api.model.recibo,
    api.dao,
    api.utils,
    api.command,

    Nasajon.Sdk.Helpers.Rest.Json.Generics    

    ;

  type
    TAPIOferta = class(TInterfacedObject, ICommandAPI)


      public

        function execute(const a_api: String; const a_param: String): TRecibo; overload;
        function execute(const a_param: TObject): TRecibo; overload;

        function Novo(const a_Objeto: String): TRecibo; overload;
        function Novo(const a_Objeto: TOfertaNovo): TRecibo; overload;

        function Alterar(const a_Objeto: String): TRecibo; overload;
        function Alterar(const a_Objeto: TOfertaAlterar): TRecibo; overload;

        function Excluir(const a_Objeto: String): TRecibo; overload;
        function Excluir(const a_Objeto: TOfertaExcluir): TRecibo; overload;

        
    end;

implementation

{ TAPIservicos.Oferta }

function TAPIOferta.execute(const a_api: String; const a_param: String): TRecibo;
begin
  if (UpperCase(a_api) = 'OFERTANOVO')
    then begin
       Result := Self.Novo(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'OFERTAALTERAR')
    then begin
       Result := Self.Alterar(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'OFERTAEXCLUIR')
    then begin
       Result := Self.Excluir(a_Param);
       Exit();
    end;


end;

function TAPIOferta.execute(const a_param: TObject): TRecibo;
begin
  if (a_param is TOfertaNovo)
    then begin
       Result := Self.Novo(a_Param as TOfertaNovo);
       Exit();
    end;

  if (a_param is TOfertaAlterar)
    then begin
       Result := Self.Alterar(a_Param as TOfertaAlterar);
       Exit();
    end;

  if (a_param is TOfertaExcluir)
    then begin
       Result := Self.Excluir(a_Param as TOfertaExcluir);
       Exit();
    end;


end;

function TAPIOferta.Novo(const a_Objeto: TOfertaNovo): TRecibo;
begin
  Result := TDAO.callFunction('servicos.api_OfertaNovo', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIOferta.Novo(const a_Objeto: String): TRecibo;

  var t_Modelo: TOfertaNovo;

begin
  t_Modelo := TOfertaNovo.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Novo(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIOferta.Alterar(const a_Objeto: TOfertaAlterar): TRecibo;
begin
  Result := TDAO.callFunction('servicos.api_OfertaAlterar', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIOferta.Alterar(const a_Objeto: String): TRecibo;

  var t_Modelo: TOfertaAlterar;

begin
  t_Modelo := TOfertaAlterar.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Alterar(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIOferta.Excluir(const a_Objeto: TOfertaExcluir): TRecibo;
begin
  Result := TDAO.callFunction('servicos.api_OfertaExcluir', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIOferta.Excluir(const a_Objeto: String): TRecibo;

  var t_Modelo: TOfertaExcluir;

begin
  t_Modelo := TOfertaExcluir.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Excluir(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;


end.
