unit api.controller.crm.ContratoTecnico;

interface

  uses
    System.SysUtils,

    api.model.crm.ContratoTecnico,
    api.model.recibo,
    api.dao,
    api.utils,
    api.command,

    Nasajon.Sdk.Helpers.Rest.Json.Generics    

    ;

  type
    TAPIContratoTecnico = class(TInterfacedObject, ICommandAPI)


      public

        function execute(const a_api: String; const a_param: String): TRecibo; overload;
        function execute(const a_param: TObject): TRecibo; overload;

        function Novo(const a_Objeto: String): TRecibo; overload;
        function Novo(const a_Objeto: TContratoTecnicoNovo): TRecibo; overload;

        
    end;

implementation

{ TAPIcrm.ContratoTecnico }

function TAPIContratoTecnico.execute(const a_api: String; const a_param: String): TRecibo;
begin
  if (UpperCase(a_api) = 'CONTRATOTECNICONOVO')
    then begin
       Result := Self.Novo(a_Param);
       Exit();
    end;


end;

function TAPIContratoTecnico.execute(const a_param: TObject): TRecibo;
begin
  if (a_param is TContratoTecnicoNovo)
    then begin
       Result := Self.Novo(a_Param as TContratoTecnicoNovo);
       Exit();
    end;


end;

function TAPIContratoTecnico.Novo(const a_Objeto: TContratoTecnicoNovo): TRecibo;
begin
  Result := TDAO.callFunction('crm.api_ContratoTecnicoNovo', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIContratoTecnico.Novo(const a_Objeto: String): TRecibo;

  var t_Modelo: TContratoTecnicoNovo;

begin
  t_Modelo := TContratoTecnicoNovo.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Novo(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;


end.
