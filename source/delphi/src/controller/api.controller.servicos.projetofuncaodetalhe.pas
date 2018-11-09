unit api.controller.servicos.ProjetoFuncaoDetalhe;

interface

  uses
    System.SysUtils,

    api.model.servicos.ProjetoFuncaoDetalhe,
    api.model.recibo,
    api.dao,
    api.utils,
    api.command,

    Nasajon.Sdk.Helpers.Rest.Json.Generics    

    ;

  type
    TAPIProjetoFuncaoDetalhe = class(TInterfacedObject, ICommandAPI)


      public

        function execute(const a_api: String; const a_param: String): TRecibo; overload;
        function execute(const a_param: TObject): TRecibo; overload;

        function NovoAgrupador(const a_Objeto: String): TRecibo; overload;
        function NovoAgrupador(const a_Objeto: TProjetoFuncaoDetalheNovoAgrupador): TRecibo; overload;

        function NovoEPI(const a_Objeto: String): TRecibo; overload;
        function NovoEPI(const a_Objeto: TProjetoFuncaoDetalheNovoEPI): TRecibo; overload;

        function NovoFormacaoSalarial(const a_Objeto: String): TRecibo; overload;
        function NovoFormacaoSalarial(const a_Objeto: TProjetoFuncaoDetalheNovoFormacaoSalarial): TRecibo; overload;

        function NovoBeneficio(const a_Objeto: String): TRecibo; overload;
        function NovoBeneficio(const a_Objeto: TProjetoFuncaoDetalheNovoBeneficio): TRecibo; overload;

        function DeleteByFuncao(const a_Objeto: String): TRecibo; overload;
        function DeleteByFuncao(const a_Objeto: TProjetoFuncaoDetalheDeleteByFuncao): TRecibo; overload;

        
    end;

implementation

{ TAPIservicos.ProjetoFuncaoDetalhe }

function TAPIProjetoFuncaoDetalhe.execute(const a_api: String; const a_param: String): TRecibo;
begin
  if (UpperCase(a_api) = 'PROJETOFUNCAODETALHENOVOAGRUPADOR')
    then begin
       Result := Self.NovoAgrupador(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'PROJETOFUNCAODETALHENOVOEPI')
    then begin
       Result := Self.NovoEPI(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'PROJETOFUNCAODETALHENOVOFORMACAOSALARIAL')
    then begin
       Result := Self.NovoFormacaoSalarial(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'PROJETOFUNCAODETALHENOVOBENEFICIO')
    then begin
       Result := Self.NovoBeneficio(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'PROJETOFUNCAODETALHEDELETEBYFUNCAO')
    then begin
       Result := Self.DeleteByFuncao(a_Param);
       Exit();
    end;


end;

function TAPIProjetoFuncaoDetalhe.execute(const a_param: TObject): TRecibo;
begin
  if (a_param is TProjetoFuncaoDetalheNovoAgrupador)
    then begin
       Result := Self.NovoAgrupador(a_Param as TProjetoFuncaoDetalheNovoAgrupador);
       Exit();
    end;

  if (a_param is TProjetoFuncaoDetalheNovoEPI)
    then begin
       Result := Self.NovoEPI(a_Param as TProjetoFuncaoDetalheNovoEPI);
       Exit();
    end;

  if (a_param is TProjetoFuncaoDetalheNovoFormacaoSalarial)
    then begin
       Result := Self.NovoFormacaoSalarial(a_Param as TProjetoFuncaoDetalheNovoFormacaoSalarial);
       Exit();
    end;

  if (a_param is TProjetoFuncaoDetalheNovoBeneficio)
    then begin
       Result := Self.NovoBeneficio(a_Param as TProjetoFuncaoDetalheNovoBeneficio);
       Exit();
    end;

  if (a_param is TProjetoFuncaoDetalheDeleteByFuncao)
    then begin
       Result := Self.DeleteByFuncao(a_Param as TProjetoFuncaoDetalheDeleteByFuncao);
       Exit();
    end;


end;

function TAPIProjetoFuncaoDetalhe.NovoAgrupador(const a_Objeto: TProjetoFuncaoDetalheNovoAgrupador): TRecibo;
begin
  Result := TDAO.callFunction('servicos.api_ProjetoFuncaoDetalheNovoAgrupador', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIProjetoFuncaoDetalhe.NovoAgrupador(const a_Objeto: String): TRecibo;

  var t_Modelo: TProjetoFuncaoDetalheNovoAgrupador;

begin
  t_Modelo := TProjetoFuncaoDetalheNovoAgrupador.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.NovoAgrupador(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIProjetoFuncaoDetalhe.NovoEPI(const a_Objeto: TProjetoFuncaoDetalheNovoEPI): TRecibo;
begin
  Result := TDAO.callFunction('servicos.api_ProjetoFuncaoDetalheNovoEPI', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIProjetoFuncaoDetalhe.NovoEPI(const a_Objeto: String): TRecibo;

  var t_Modelo: TProjetoFuncaoDetalheNovoEPI;

begin
  t_Modelo := TProjetoFuncaoDetalheNovoEPI.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.NovoEPI(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIProjetoFuncaoDetalhe.NovoFormacaoSalarial(const a_Objeto: TProjetoFuncaoDetalheNovoFormacaoSalarial): TRecibo;
begin
  Result := TDAO.callFunction('servicos.api_ProjetoFuncaoDetalheNovoFormacaoSalarial', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIProjetoFuncaoDetalhe.NovoFormacaoSalarial(const a_Objeto: String): TRecibo;

  var t_Modelo: TProjetoFuncaoDetalheNovoFormacaoSalarial;

begin
  t_Modelo := TProjetoFuncaoDetalheNovoFormacaoSalarial.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.NovoFormacaoSalarial(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIProjetoFuncaoDetalhe.NovoBeneficio(const a_Objeto: TProjetoFuncaoDetalheNovoBeneficio): TRecibo;
begin
  Result := TDAO.callFunction('servicos.api_ProjetoFuncaoDetalheNovoBeneficio', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIProjetoFuncaoDetalhe.NovoBeneficio(const a_Objeto: String): TRecibo;

  var t_Modelo: TProjetoFuncaoDetalheNovoBeneficio;

begin
  t_Modelo := TProjetoFuncaoDetalheNovoBeneficio.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.NovoBeneficio(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIProjetoFuncaoDetalhe.DeleteByFuncao(const a_Objeto: TProjetoFuncaoDetalheDeleteByFuncao): TRecibo;
begin
  Result := TDAO.callFunction('servicos.api_ProjetoFuncaoDetalheDeleteByFuncao', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIProjetoFuncaoDetalhe.DeleteByFuncao(const a_Objeto: String): TRecibo;

  var t_Modelo: TProjetoFuncaoDetalheDeleteByFuncao;

begin
  t_Modelo := TProjetoFuncaoDetalheDeleteByFuncao.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.DeleteByFuncao(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;


end.
