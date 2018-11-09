unit api.controller.ns.DocumentoFiscalNs;

interface

  uses
    System.SysUtils,

    api.model.ns.DocumentoFiscalNs,
    api.model.recibo,
    api.dao,
    api.utils,
    api.command,

    Nasajon.Sdk.Helpers.Rest.Json.Generics    

    ;

  type
    TAPIDocumentoFiscalNs = class(TInterfacedObject, ICommandAPI)


      public

        function execute(const a_api: String; const a_param: String): TRecibo; overload;
        function execute(const a_param: TObject): TRecibo; overload;

        function Excluir(const a_Objeto: String): TRecibo; overload;
        function Excluir(const a_Objeto: TDocumentoFiscalNsExcluir): TRecibo; overload;

        
    end;

implementation

{ TAPIns.DocumentoFiscalNs }

function TAPIDocumentoFiscalNs.execute(const a_api: String; const a_param: String): TRecibo;
begin
  if (UpperCase(a_api) = 'DOCUMENTOFISCALNSEXCLUIR')
    then begin
       Result := Self.Excluir(a_Param);
       Exit();
    end;


end;

function TAPIDocumentoFiscalNs.execute(const a_param: TObject): TRecibo;
begin
  if (a_param is TDocumentoFiscalNsExcluir)
    then begin
       Result := Self.Excluir(a_Param as TDocumentoFiscalNsExcluir);
       Exit();
    end;


end;

function TAPIDocumentoFiscalNs.Excluir(const a_Objeto: TDocumentoFiscalNsExcluir): TRecibo;
begin
  Result := TDAO.callFunction('ns.api_DocumentoFiscalNsExcluir', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIDocumentoFiscalNs.Excluir(const a_Objeto: String): TRecibo;

  var t_Modelo: TDocumentoFiscalNsExcluir;

begin
  t_Modelo := TDocumentoFiscalNsExcluir.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Excluir(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;


end.
