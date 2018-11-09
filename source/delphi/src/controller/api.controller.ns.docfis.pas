unit api.controller.ns.DocFis;

interface

  uses
    System.SysUtils,

    api.model.ns.DocFis,
    api.model.recibo,
    api.dao,
    api.utils,
    api.command,

    Nasajon.Sdk.Helpers.Rest.Json.Generics    

    ;

  type
    TAPIDocFis = class(TInterfacedObject, ICommandAPI)


      public

        function execute(const a_api: String; const a_param: String): TRecibo; overload;
        function execute(const a_param: TObject): TRecibo; overload;

        function processarXML(const a_Objeto: String): TRecibo; overload;
        function processarXML(const a_Objeto: TDocFisprocessarXML): TRecibo; overload;

        
    end;

implementation

{ TAPIns.DocFis }

function TAPIDocFis.execute(const a_api: String; const a_param: String): TRecibo;
begin
  if (UpperCase(a_api) = 'DOCFISPROCESSARXML')
    then begin
       Result := Self.processarXML(a_Param);
       Exit();
    end;


end;

function TAPIDocFis.execute(const a_param: TObject): TRecibo;
begin
  if (a_param is TDocFisprocessarXML)
    then begin
       Result := Self.processarXML(a_Param as TDocFisprocessarXML);
       Exit();
    end;


end;

function TAPIDocFis.processarXML(const a_Objeto: TDocFisprocessarXML): TRecibo;
begin
  Result := TDAO.callFunction('ns.api_DocFisprocessarXML', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIDocFis.processarXML(const a_Objeto: String): TRecibo;

  var t_Modelo: TDocFisprocessarXML;

begin
  t_Modelo := TDocFisprocessarXML.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.processarXML(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;


end.
