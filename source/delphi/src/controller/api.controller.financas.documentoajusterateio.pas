unit api.controller.financas.DocumentoAjusteRateio;

interface

  uses
    System.SysUtils,

    api.model.financas.DocumentoAjusteRateio,
    api.model.recibo,
    api.dao,
    api.utils,
    api.command,

    Nasajon.Sdk.Helpers.Rest.Json.Generics    

    ;

  type
    TAPIDocumentoAjusteRateio = class(TInterfacedObject, ICommandAPI)


      public

        function execute(const a_api: String; const a_param: String): TRecibo; overload;
        function execute(const a_param: TObject): TRecibo; overload;

        function Novo(const a_Objeto: String): TRecibo; overload;
        function Novo(const a_Objeto: TDocumentoAjusteRateioNovo): TRecibo; overload;

        function Alterar(const a_Objeto: String): TRecibo; overload;
        function Alterar(const a_Objeto: TDocumentoAjusteRateioAlterar): TRecibo; overload;

        function Excluir(const a_Objeto: String): TRecibo; overload;
        function Excluir(const a_Objeto: TDocumentoAjusteRateioExcluir): TRecibo; overload;

        
    end;

implementation

{ TAPIfinancas.DocumentoAjusteRateio }

function TAPIDocumentoAjusteRateio.execute(const a_api: String; const a_param: String): TRecibo;
begin
  if (UpperCase(a_api) = 'DOCUMENTOAJUSTERATEIONOVO')
    then begin
       Result := Self.Novo(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'DOCUMENTOAJUSTERATEIOALTERAR')
    then begin
       Result := Self.Alterar(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'DOCUMENTOAJUSTERATEIOEXCLUIR')
    then begin
       Result := Self.Excluir(a_Param);
       Exit();
    end;


end;

function TAPIDocumentoAjusteRateio.execute(const a_param: TObject): TRecibo;
begin
  if (a_param is TDocumentoAjusteRateioNovo)
    then begin
       Result := Self.Novo(a_Param as TDocumentoAjusteRateioNovo);
       Exit();
    end;

  if (a_param is TDocumentoAjusteRateioAlterar)
    then begin
       Result := Self.Alterar(a_Param as TDocumentoAjusteRateioAlterar);
       Exit();
    end;

  if (a_param is TDocumentoAjusteRateioExcluir)
    then begin
       Result := Self.Excluir(a_Param as TDocumentoAjusteRateioExcluir);
       Exit();
    end;


end;

function TAPIDocumentoAjusteRateio.Novo(const a_Objeto: TDocumentoAjusteRateioNovo): TRecibo;
begin
  Result := TDAO.callFunction('financas.api_DocumentoAjusteRateioNovo', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIDocumentoAjusteRateio.Novo(const a_Objeto: String): TRecibo;

  var t_Modelo: TDocumentoAjusteRateioNovo;

begin
  t_Modelo := TDocumentoAjusteRateioNovo.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Novo(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIDocumentoAjusteRateio.Alterar(const a_Objeto: TDocumentoAjusteRateioAlterar): TRecibo;
begin
  Result := TDAO.callFunction('financas.api_DocumentoAjusteRateioAlterar', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIDocumentoAjusteRateio.Alterar(const a_Objeto: String): TRecibo;

  var t_Modelo: TDocumentoAjusteRateioAlterar;

begin
  t_Modelo := TDocumentoAjusteRateioAlterar.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Alterar(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIDocumentoAjusteRateio.Excluir(const a_Objeto: TDocumentoAjusteRateioExcluir): TRecibo;
begin
  Result := TDAO.callFunction('financas.api_DocumentoAjusteRateioExcluir', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIDocumentoAjusteRateio.Excluir(const a_Objeto: String): TRecibo;

  var t_Modelo: TDocumentoAjusteRateioExcluir;

begin
  t_Modelo := TDocumentoAjusteRateioExcluir.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Excluir(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;


end.
