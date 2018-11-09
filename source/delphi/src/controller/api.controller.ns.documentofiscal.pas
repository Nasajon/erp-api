unit api.controller.ns.DocumentoFiscal;

interface

  uses
    System.SysUtils,

    api.model.ns.DocumentoFiscal,
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

        function Excluir(const a_Objeto: String): TRecibo; overload;
        function Excluir(const a_Objeto: TDocumentoFiscalExcluir): TRecibo; overload;

        
    end;

implementation

{ TAPIns.DocumentoFiscal }

function TAPIDocumentoFiscal.execute(const a_api: String; const a_param: String): TRecibo;
begin
  if (UpperCase(a_api) = 'DOCUMENTOFISCALEXCLUIR')
    then begin
       Result := Self.Excluir(a_Param);
       Exit();
    end;


end;

function TAPIDocumentoFiscal.execute(const a_param: TObject): TRecibo;
begin
  if (a_param is TDocumentoFiscalExcluir)
    then begin
       Result := Self.Excluir(a_Param as TDocumentoFiscalExcluir);
       Exit();
    end;


end;

function TAPIDocumentoFiscal.Excluir(const a_Objeto: TDocumentoFiscalExcluir): TRecibo;
begin
  Result := TDAO.callFunction('ns.api_DocumentoFiscalExcluir', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIDocumentoFiscal.Excluir(const a_Objeto: String): TRecibo;

  var t_Modelo: TDocumentoFiscalExcluir;

begin
  t_Modelo := TDocumentoFiscalExcluir.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Excluir(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;


end.
