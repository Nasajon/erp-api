unit api.controller.contabil.lote;

interface

  uses
    System.SysUtils,

    api.model.contabil.lote,
    api.model.recibo,
    api.dao,
    api.utils,
    api.command,

    Nasajon.Sdk.Helpers.Rest.Json.Generics    

    ;

  type
    TAPIlote = class(TInterfacedObject, ICommandAPI)


      public

        function execute(const a_api: String; const a_param: String): TRecibo; overload;
        function execute(const a_param: TObject): TRecibo; overload;

        function Novo(const a_Objeto: String): TRecibo; overload;
        function Novo(const a_Objeto: TloteNovo): TRecibo; overload;

        function Excluir(const a_Objeto: String): TRecibo; overload;
        function Excluir(const a_Objeto: TloteExcluir): TRecibo; overload;

        
    end;

implementation

{ TAPIcontabil.lote }

function TAPIlote.execute(const a_api: String; const a_param: String): TRecibo;
begin
  if (UpperCase(a_api) = 'LOTENOVO')
    then begin
       Result := Self.Novo(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'LOTEEXCLUIR')
    then begin
       Result := Self.Excluir(a_Param);
       Exit();
    end;


end;

function TAPIlote.execute(const a_param: TObject): TRecibo;
begin
  if (a_param is TloteNovo)
    then begin
       Result := Self.Novo(a_Param as TloteNovo);
       Exit();
    end;

  if (a_param is TloteExcluir)
    then begin
       Result := Self.Excluir(a_Param as TloteExcluir);
       Exit();
    end;


end;

function TAPIlote.Novo(const a_Objeto: TloteNovo): TRecibo;
begin
  Result := TDAO.callFunction('contabil.api_loteNovo', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIlote.Novo(const a_Objeto: String): TRecibo;

  var t_Modelo: TloteNovo;

begin
  t_Modelo := TloteNovo.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Novo(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIlote.Excluir(const a_Objeto: TloteExcluir): TRecibo;
begin
  Result := TDAO.callFunction('contabil.api_loteExcluir', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIlote.Excluir(const a_Objeto: String): TRecibo;

  var t_Modelo: TloteExcluir;

begin
  t_Modelo := TloteExcluir.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Excluir(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;


end.
