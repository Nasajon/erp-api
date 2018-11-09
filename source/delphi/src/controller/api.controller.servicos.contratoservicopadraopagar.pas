unit api.controller.servicos.ContratoServicoPadraoPagar;

interface

  uses
    System.SysUtils,

    api.model.servicos.ContratoServicoPadraoPagar,
    api.model.recibo,
    api.dao,
    api.utils,
    api.command,

    Nasajon.Sdk.Helpers.Rest.Json.Generics    

    ;

  type
    TAPIContratoServicoPadraoPagar = class(TInterfacedObject, ICommandAPI)


      public

        function execute(const a_api: String; const a_param: String): TRecibo; overload;
        function execute(const a_param: TObject): TRecibo; overload;

        function Novo(const a_Objeto: String): TRecibo; overload;
        function Novo(const a_Objeto: TContratoServicoPadraoPagarNovo): TRecibo; overload;

        function Novo_Importacao(const a_Objeto: String): TRecibo; overload;
        function Novo_Importacao(const a_Objeto: TContratoServicoPadraoPagarNovo_Importacao): TRecibo; overload;

        function Excluir(const a_Objeto: String): TRecibo; overload;
        function Excluir(const a_Objeto: TContratoServicoPadraoPagarExcluir): TRecibo; overload;

        
    end;

implementation

{ TAPIservicos.ContratoServicoPadraoPagar }

function TAPIContratoServicoPadraoPagar.execute(const a_api: String; const a_param: String): TRecibo;
begin
  if (UpperCase(a_api) = 'CONTRATOSERVICOPADRAOPAGARNOVO')
    then begin
       Result := Self.Novo(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'CONTRATOSERVICOPADRAOPAGARNOVO_IMPORTACAO')
    then begin
       Result := Self.Novo_Importacao(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'CONTRATOSERVICOPADRAOPAGAREXCLUIR')
    then begin
       Result := Self.Excluir(a_Param);
       Exit();
    end;


end;

function TAPIContratoServicoPadraoPagar.execute(const a_param: TObject): TRecibo;
begin
  if (a_param is TContratoServicoPadraoPagarNovo)
    then begin
       Result := Self.Novo(a_Param as TContratoServicoPadraoPagarNovo);
       Exit();
    end;

  if (a_param is TContratoServicoPadraoPagarNovo_Importacao)
    then begin
       Result := Self.Novo_Importacao(a_Param as TContratoServicoPadraoPagarNovo_Importacao);
       Exit();
    end;

  if (a_param is TContratoServicoPadraoPagarExcluir)
    then begin
       Result := Self.Excluir(a_Param as TContratoServicoPadraoPagarExcluir);
       Exit();
    end;


end;

function TAPIContratoServicoPadraoPagar.Novo(const a_Objeto: TContratoServicoPadraoPagarNovo): TRecibo;
begin
  Result := TDAO.callFunction('servicos.api_ContratoServicoPadraoPagarNovo', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIContratoServicoPadraoPagar.Novo(const a_Objeto: String): TRecibo;

  var t_Modelo: TContratoServicoPadraoPagarNovo;

begin
  t_Modelo := TContratoServicoPadraoPagarNovo.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Novo(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIContratoServicoPadraoPagar.Novo_Importacao(const a_Objeto: TContratoServicoPadraoPagarNovo_Importacao): TRecibo;
begin
  Result := TDAO.callFunction('servicos.api_ContratoServicoPadraoPagarNovo_Importacao', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIContratoServicoPadraoPagar.Novo_Importacao(const a_Objeto: String): TRecibo;

  var t_Modelo: TContratoServicoPadraoPagarNovo_Importacao;

begin
  t_Modelo := TContratoServicoPadraoPagarNovo_Importacao.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Novo_Importacao(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIContratoServicoPadraoPagar.Excluir(const a_Objeto: TContratoServicoPadraoPagarExcluir): TRecibo;
begin
  Result := TDAO.callFunction('servicos.api_ContratoServicoPadraoPagarExcluir', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIContratoServicoPadraoPagar.Excluir(const a_Objeto: String): TRecibo;

  var t_Modelo: TContratoServicoPadraoPagarExcluir;

begin
  t_Modelo := TContratoServicoPadraoPagarExcluir.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Excluir(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;


end.
