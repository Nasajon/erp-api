unit api.controller.servicos.ItemRPS;

interface

  uses
    System.SysUtils,

    api.model.servicos.ItemRPS,
    api.model.recibo,
    api.dao,
    api.utils,
    api.command,

    Nasajon.Sdk.Helpers.Rest.Json.Generics    

    ;

  type
    TAPIItemRPS = class(TInterfacedObject, ICommandAPI)


      public

        function execute(const a_api: String; const a_param: String): TRecibo; overload;
        function execute(const a_param: TObject): TRecibo; overload;

        function Novo(const a_Objeto: String): TRecibo; overload;
        function Novo(const a_Objeto: TItemRPSNovo): TRecibo; overload;

        
    end;

implementation

{ TAPIservicos.ItemRPS }

function TAPIItemRPS.execute(const a_api: String; const a_param: String): TRecibo;
begin
  if (UpperCase(a_api) = 'ITEMRPSNOVO')
    then begin
       Result := Self.Novo(a_Param);
       Exit();
    end;


end;

function TAPIItemRPS.execute(const a_param: TObject): TRecibo;
begin
  if (a_param is TItemRPSNovo)
    then begin
       Result := Self.Novo(a_Param as TItemRPSNovo);
       Exit();
    end;


end;

function TAPIItemRPS.Novo(const a_Objeto: TItemRPSNovo): TRecibo;
begin
  Result := TDAO.callFunction('servicos.api_ItemRPSNovo', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIItemRPS.Novo(const a_Objeto: String): TRecibo;

  var t_Modelo: TItemRPSNovo;

begin
  t_Modelo := TItemRPSNovo.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Novo(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;


end.
