unit api.controller.servicos.ContratoLocacaoImovelPagar;

interface

  uses
    System.SysUtils,

    api.model.servicos.ContratoLocacaoImovelPagar,
    api.model.recibo,
    api.dao,
    api.utils,
    api.command,

    Nasajon.Sdk.Helpers.Rest.Json.Generics    

    ;

  type
    TAPIContratoLocacaoImovelPagar = class(TInterfacedObject, ICommandAPI)


      public

        function execute(const a_api: String; const a_param: String): TRecibo; overload;
        function execute(const a_param: TObject): TRecibo; overload;

        function Novo(const a_Objeto: String): TRecibo; overload;
        function Novo(const a_Objeto: TContratoLocacaoImovelPagarNovo): TRecibo; overload;

        function Excluir(const a_Objeto: String): TRecibo; overload;
        function Excluir(const a_Objeto: TContratoLocacaoImovelPagarExcluir): TRecibo; overload;

        
    end;

implementation

{ TAPIservicos.ContratoLocacaoImovelPagar }

function TAPIContratoLocacaoImovelPagar.execute(const a_api: String; const a_param: String): TRecibo;
begin
  if (UpperCase(a_api) = 'CONTRATOLOCACAOIMOVELPAGARNOVO')
    then begin
       Result := Self.Novo(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'CONTRATOLOCACAOIMOVELPAGAREXCLUIR')
    then begin
       Result := Self.Excluir(a_Param);
       Exit();
    end;


end;

function TAPIContratoLocacaoImovelPagar.execute(const a_param: TObject): TRecibo;
begin
  if (a_param is TContratoLocacaoImovelPagarNovo)
    then begin
       Result := Self.Novo(a_Param as TContratoLocacaoImovelPagarNovo);
       Exit();
    end;

  if (a_param is TContratoLocacaoImovelPagarExcluir)
    then begin
       Result := Self.Excluir(a_Param as TContratoLocacaoImovelPagarExcluir);
       Exit();
    end;


end;

function TAPIContratoLocacaoImovelPagar.Novo(const a_Objeto: TContratoLocacaoImovelPagarNovo): TRecibo;
begin
  Result := TDAO.callFunction('servicos.api_ContratoLocacaoImovelPagarNovo', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIContratoLocacaoImovelPagar.Novo(const a_Objeto: String): TRecibo;

  var t_Modelo: TContratoLocacaoImovelPagarNovo;

begin
  t_Modelo := TContratoLocacaoImovelPagarNovo.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Novo(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIContratoLocacaoImovelPagar.Excluir(const a_Objeto: TContratoLocacaoImovelPagarExcluir): TRecibo;
begin
  Result := TDAO.callFunction('servicos.api_ContratoLocacaoImovelPagarExcluir', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIContratoLocacaoImovelPagar.Excluir(const a_Objeto: String): TRecibo;

  var t_Modelo: TContratoLocacaoImovelPagarExcluir;

begin
  t_Modelo := TContratoLocacaoImovelPagarExcluir.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Excluir(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;


end.
