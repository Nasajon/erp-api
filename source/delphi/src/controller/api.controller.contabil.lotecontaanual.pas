unit api.controller.contabil.lotecontaanual;

interface

  uses
    System.SysUtils,

    api.model.contabil.lotecontaanual,
    api.model.recibo,
    api.dao,
    api.utils,
    api.command,

    Nasajon.Sdk.Helpers.Rest.Json.Generics    

    ;

  type
    TAPIlotecontaanual = class(TInterfacedObject, ICommandAPI)


      public

        function execute(const a_api: String; const a_param: String): TRecibo; overload;
        function execute(const a_param: TObject): TRecibo; overload;

        function Novo(const a_Objeto: String): TRecibo; overload;
        function Novo(const a_Objeto: TlotecontaanualNovo): TRecibo; overload;

        
    end;

implementation

{ TAPIcontabil.lotecontaanual }

function TAPIlotecontaanual.execute(const a_api: String; const a_param: String): TRecibo;
begin
  if (UpperCase(a_api) = 'LOTECONTAANUALNOVO')
    then begin
       Result := Self.Novo(a_Param);
       Exit();
    end;


end;

function TAPIlotecontaanual.execute(const a_param: TObject): TRecibo;
begin
  if (a_param is TlotecontaanualNovo)
    then begin
       Result := Self.Novo(a_Param as TlotecontaanualNovo);
       Exit();
    end;


end;

function TAPIlotecontaanual.Novo(const a_Objeto: TlotecontaanualNovo): TRecibo;
begin
  Result := TDAO.callFunction('contabil.api_lotecontaanualNovo', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIlotecontaanual.Novo(const a_Objeto: String): TRecibo;

  var t_Modelo: TlotecontaanualNovo;

begin
  t_Modelo := TlotecontaanualNovo.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Novo(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;


end.
