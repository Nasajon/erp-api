unit api.controller.servicos.ContratoServicoPadraoReceber;

interface

  uses
    System.SysUtils,

    api.model.servicos.ContratoServicoPadraoReceber,
    api.model.recibo,
    api.dao,
    api.utils,
    api.command,

    Nasajon.Sdk.Helpers.Rest.Json.Generics    

    ;

  type
    TAPIContratoServicoPadraoReceber = class(TInterfacedObject, ICommandAPI)


      public

        function execute(const a_api: String; const a_param: String): TRecibo; overload;
        function execute(const a_param: TObject): TRecibo; overload;

        function Novo(const a_Objeto: String): TRecibo; overload;
        function Novo(const a_Objeto: TContratoServicoPadraoReceberNovo): TRecibo; overload;

        function Novo_Importacao(const a_Objeto: String): TRecibo; overload;
        function Novo_Importacao(const a_Objeto: TContratoServicoPadraoReceberNovo_Importacao): TRecibo; overload;

        function Excluir(const a_Objeto: String): TRecibo; overload;
        function Excluir(const a_Objeto: TContratoServicoPadraoReceberExcluir): TRecibo; overload;

        
    end;

implementation

{ TAPIservicos.ContratoServicoPadraoReceber }

function TAPIContratoServicoPadraoReceber.execute(const a_api: String; const a_param: String): TRecibo;
begin
  if (UpperCase(a_api) = 'CONTRATOSERVICOPADRAORECEBERNOVO')
    then begin
       Result := Self.Novo(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'CONTRATOSERVICOPADRAORECEBERNOVO_IMPORTACAO')
    then begin
       Result := Self.Novo_Importacao(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'CONTRATOSERVICOPADRAORECEBEREXCLUIR')
    then begin
       Result := Self.Excluir(a_Param);
       Exit();
    end;


end;

function TAPIContratoServicoPadraoReceber.execute(const a_param: TObject): TRecibo;
begin
  if (a_param is TContratoServicoPadraoReceberNovo)
    then begin
       Result := Self.Novo(a_Param as TContratoServicoPadraoReceberNovo);
       Exit();
    end;

  if (a_param is TContratoServicoPadraoReceberNovo_Importacao)
    then begin
       Result := Self.Novo_Importacao(a_Param as TContratoServicoPadraoReceberNovo_Importacao);
       Exit();
    end;

  if (a_param is TContratoServicoPadraoReceberExcluir)
    then begin
       Result := Self.Excluir(a_Param as TContratoServicoPadraoReceberExcluir);
       Exit();
    end;


end;

function TAPIContratoServicoPadraoReceber.Novo(const a_Objeto: TContratoServicoPadraoReceberNovo): TRecibo;
begin
  Result := TDAO.callFunction('servicos.api_ContratoServicoPadraoReceberNovo', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIContratoServicoPadraoReceber.Novo(const a_Objeto: String): TRecibo;

  var t_Modelo: TContratoServicoPadraoReceberNovo;

begin
  t_Modelo := TContratoServicoPadraoReceberNovo.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Novo(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIContratoServicoPadraoReceber.Novo_Importacao(const a_Objeto: TContratoServicoPadraoReceberNovo_Importacao): TRecibo;
begin
  Result := TDAO.callFunction('servicos.api_ContratoServicoPadraoReceberNovo_Importacao', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIContratoServicoPadraoReceber.Novo_Importacao(const a_Objeto: String): TRecibo;

  var t_Modelo: TContratoServicoPadraoReceberNovo_Importacao;

begin
  t_Modelo := TContratoServicoPadraoReceberNovo_Importacao.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Novo_Importacao(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIContratoServicoPadraoReceber.Excluir(const a_Objeto: TContratoServicoPadraoReceberExcluir): TRecibo;
begin
  Result := TDAO.callFunction('servicos.api_ContratoServicoPadraoReceberExcluir', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIContratoServicoPadraoReceber.Excluir(const a_Objeto: String): TRecibo;

  var t_Modelo: TContratoServicoPadraoReceberExcluir;

begin
  t_Modelo := TContratoServicoPadraoReceberExcluir.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Excluir(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;


end.
