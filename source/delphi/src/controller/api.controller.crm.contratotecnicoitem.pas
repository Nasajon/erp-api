unit api.controller.crm.ContratoTecnicoItem;

interface

  uses
    System.SysUtils,

    api.model.crm.ContratoTecnicoItem,
    api.model.recibo,
    api.dao,
    api.utils,
    api.command,

    Nasajon.Sdk.Helpers.Rest.Json.Generics    

    ;

  type
    TAPIContratoTecnicoItem = class(TInterfacedObject, ICommandAPI)


      public

        function execute(const a_api: String; const a_param: String): TRecibo; overload;
        function execute(const a_param: TObject): TRecibo; overload;

        function Novo(const a_Objeto: String): TRecibo; overload;
        function Novo(const a_Objeto: TContratoTecnicoItemNovo): TRecibo; overload;

        
    end;

implementation

{ TAPIcrm.ContratoTecnicoItem }

function TAPIContratoTecnicoItem.execute(const a_api: String; const a_param: String): TRecibo;
begin
  if (UpperCase(a_api) = 'CONTRATOTECNICOITEMNOVO')
    then begin
       Result := Self.Novo(a_Param);
       Exit();
    end;


end;

function TAPIContratoTecnicoItem.execute(const a_param: TObject): TRecibo;
begin
  if (a_param is TContratoTecnicoItemNovo)
    then begin
       Result := Self.Novo(a_Param as TContratoTecnicoItemNovo);
       Exit();
    end;


end;

function TAPIContratoTecnicoItem.Novo(const a_Objeto: TContratoTecnicoItemNovo): TRecibo;
begin
  Result := TDAO.callFunction('crm.api_ContratoTecnicoItemNovo', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIContratoTecnicoItem.Novo(const a_Objeto: String): TRecibo;

  var t_Modelo: TContratoTecnicoItemNovo;

begin
  t_Modelo := TContratoTecnicoItemNovo.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Novo(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;


end.
