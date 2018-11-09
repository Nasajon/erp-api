unit api.controller.scritta.DocumentoFiscal;

interface

  uses
    System.SysUtils,

    api.model.scritta.DocumentoFiscal,
    api.model.recibo,
    api.dao,
    api.utils,
    api.command,

    Nasajon.Sdk.Helpers.Rest.Json.Generics    

    ;

  type
    TAPIDocumentoFiscal = class(TInterfacedObject, ICommandAPI)


      public

        function execute(const a_api: String; const a_param: String): TRecibo; overload;
        function execute(const a_param: TObject): TRecibo; overload;

        function Cancelar(const a_Objeto: String): TRecibo; overload;
        function Cancelar(const a_Objeto: TDocumentoFiscalCancelar): TRecibo; overload;

        
    end;

implementation

{ TAPIscritta.DocumentoFiscal }

function TAPIDocumentoFiscal.execute(const a_api: String; const a_param: String): TRecibo;
begin
  if (UpperCase(a_api) = 'DOCUMENTOFISCALCANCELAR')
    then begin
       Result := Self.Cancelar(a_Param);
       Exit();
    end;


end;

function TAPIDocumentoFiscal.execute(const a_param: TObject): TRecibo;
begin
  if (a_param is TDocumentoFiscalCancelar)
    then begin
       Result := Self.Cancelar(a_Param as TDocumentoFiscalCancelar);
       Exit();
    end;


end;

function TAPIDocumentoFiscal.Cancelar(const a_Objeto: TDocumentoFiscalCancelar): TRecibo;
begin
  Result := TDAO.callFunction('scritta.api_DocumentoFiscalCancelar', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIDocumentoFiscal.Cancelar(const a_Objeto: String): TRecibo;

  var t_Modelo: TDocumentoFiscalCancelar;

begin
  t_Modelo := TDocumentoFiscalCancelar.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Cancelar(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;


end.
