unit api.controller.financas.LotesFatura;

interface

  uses
    System.SysUtils,

    api.model.financas.LotesFatura,
    api.model.recibo,
    api.dao,
    api.utils,
    api.command,

    Nasajon.Sdk.Helpers.Rest.Json.Generics    

    ;

  type
    TAPILotesFatura = class(TInterfacedObject, ICommandAPI)


      public

        function execute(const a_api: String; const a_param: String): TRecibo; overload;
        function execute(const a_param: TObject): TRecibo; overload;

        function Novo(const a_Objeto: String): TRecibo; overload;
        function Novo(const a_Objeto: TLotesFaturaNovo): TRecibo; overload;

        function Excluir(const a_Objeto: String): TRecibo; overload;
        function Excluir(const a_Objeto: TLotesFaturaExcluir): TRecibo; overload;

        
    end;

implementation

{ TAPIfinancas.LotesFatura }

function TAPILotesFatura.execute(const a_api: String; const a_param: String): TRecibo;
begin
  if (UpperCase(a_api) = 'LOTESFATURANOVO')
    then begin
       Result := Self.Novo(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'LOTESFATURAEXCLUIR')
    then begin
       Result := Self.Excluir(a_Param);
       Exit();
    end;


end;

function TAPILotesFatura.execute(const a_param: TObject): TRecibo;
begin
  if (a_param is TLotesFaturaNovo)
    then begin
       Result := Self.Novo(a_Param as TLotesFaturaNovo);
       Exit();
    end;

  if (a_param is TLotesFaturaExcluir)
    then begin
       Result := Self.Excluir(a_Param as TLotesFaturaExcluir);
       Exit();
    end;


end;

function TAPILotesFatura.Novo(const a_Objeto: TLotesFaturaNovo): TRecibo;
begin
  Result := TDAO.callFunction('financas.api_LotesFaturaNovo', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPILotesFatura.Novo(const a_Objeto: String): TRecibo;

  var t_Modelo: TLotesFaturaNovo;

begin
  t_Modelo := TLotesFaturaNovo.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Novo(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPILotesFatura.Excluir(const a_Objeto: TLotesFaturaExcluir): TRecibo;
begin
  Result := TDAO.callFunction('financas.api_LotesFaturaExcluir', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPILotesFatura.Excluir(const a_Objeto: String): TRecibo;

  var t_Modelo: TLotesFaturaExcluir;

begin
  t_Modelo := TLotesFaturaExcluir.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Excluir(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;


end.
