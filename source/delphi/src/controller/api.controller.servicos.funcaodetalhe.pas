unit api.controller.servicos.FuncaoDetalhe;

interface

  uses
    System.SysUtils,

    api.model.servicos.FuncaoDetalhe,
    api.model.recibo,
    api.dao,
    api.utils,
    api.command,

    Nasajon.Sdk.Helpers.Rest.Json.Generics    

    ;

  type
    TAPIFuncaoDetalhe = class(TInterfacedObject, ICommandAPI)


      public

        function execute(const a_api: String; const a_param: String): TRecibo; overload;
        function execute(const a_param: TObject): TRecibo; overload;

        function Novo(const a_Objeto: String): TRecibo; overload;
        function Novo(const a_Objeto: TFuncaoDetalheNovo): TRecibo; overload;

        function NovoAgrupador(const a_Objeto: String): TRecibo; overload;
        function NovoAgrupador(const a_Objeto: TFuncaoDetalheNovoAgrupador): TRecibo; overload;

        function NovoEPI(const a_Objeto: String): TRecibo; overload;
        function NovoEPI(const a_Objeto: TFuncaoDetalheNovoEPI): TRecibo; overload;

        function NovoFormacaoSalarial(const a_Objeto: String): TRecibo; overload;
        function NovoFormacaoSalarial(const a_Objeto: TFuncaoDetalheNovoFormacaoSalarial): TRecibo; overload;

        function NovoBeneficio(const a_Objeto: String): TRecibo; overload;
        function NovoBeneficio(const a_Objeto: TFuncaoDetalheNovoBeneficio): TRecibo; overload;

        function Excluir(const a_Objeto: String): TRecibo; overload;
        function Excluir(const a_Objeto: TFuncaoDetalheExcluir): TRecibo; overload;

        
    end;

implementation

{ TAPIservicos.FuncaoDetalhe }

function TAPIFuncaoDetalhe.execute(const a_api: String; const a_param: String): TRecibo;
begin
  if (UpperCase(a_api) = 'FUNCAODETALHENOVO')
    then begin
       Result := Self.Novo(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'FUNCAODETALHENOVOAGRUPADOR')
    then begin
       Result := Self.NovoAgrupador(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'FUNCAODETALHENOVOEPI')
    then begin
       Result := Self.NovoEPI(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'FUNCAODETALHENOVOFORMACAOSALARIAL')
    then begin
       Result := Self.NovoFormacaoSalarial(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'FUNCAODETALHENOVOBENEFICIO')
    then begin
       Result := Self.NovoBeneficio(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'FUNCAODETALHEEXCLUIR')
    then begin
       Result := Self.Excluir(a_Param);
       Exit();
    end;


end;

function TAPIFuncaoDetalhe.execute(const a_param: TObject): TRecibo;
begin
  if (a_param is TFuncaoDetalheNovo)
    then begin
       Result := Self.Novo(a_Param as TFuncaoDetalheNovo);
       Exit();
    end;

  if (a_param is TFuncaoDetalheNovoAgrupador)
    then begin
       Result := Self.NovoAgrupador(a_Param as TFuncaoDetalheNovoAgrupador);
       Exit();
    end;

  if (a_param is TFuncaoDetalheNovoEPI)
    then begin
       Result := Self.NovoEPI(a_Param as TFuncaoDetalheNovoEPI);
       Exit();
    end;

  if (a_param is TFuncaoDetalheNovoFormacaoSalarial)
    then begin
       Result := Self.NovoFormacaoSalarial(a_Param as TFuncaoDetalheNovoFormacaoSalarial);
       Exit();
    end;

  if (a_param is TFuncaoDetalheNovoBeneficio)
    then begin
       Result := Self.NovoBeneficio(a_Param as TFuncaoDetalheNovoBeneficio);
       Exit();
    end;

  if (a_param is TFuncaoDetalheExcluir)
    then begin
       Result := Self.Excluir(a_Param as TFuncaoDetalheExcluir);
       Exit();
    end;


end;

function TAPIFuncaoDetalhe.Novo(const a_Objeto: TFuncaoDetalheNovo): TRecibo;
begin
  Result := TDAO.callFunction('servicos.api_FuncaoDetalheNovo', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIFuncaoDetalhe.Novo(const a_Objeto: String): TRecibo;

  var t_Modelo: TFuncaoDetalheNovo;

begin
  t_Modelo := TFuncaoDetalheNovo.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Novo(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIFuncaoDetalhe.NovoAgrupador(const a_Objeto: TFuncaoDetalheNovoAgrupador): TRecibo;
begin
  Result := TDAO.callFunction('servicos.api_FuncaoDetalheNovoAgrupador', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIFuncaoDetalhe.NovoAgrupador(const a_Objeto: String): TRecibo;

  var t_Modelo: TFuncaoDetalheNovoAgrupador;

begin
  t_Modelo := TFuncaoDetalheNovoAgrupador.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.NovoAgrupador(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIFuncaoDetalhe.NovoEPI(const a_Objeto: TFuncaoDetalheNovoEPI): TRecibo;
begin
  Result := TDAO.callFunction('servicos.api_FuncaoDetalheNovoEPI', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIFuncaoDetalhe.NovoEPI(const a_Objeto: String): TRecibo;

  var t_Modelo: TFuncaoDetalheNovoEPI;

begin
  t_Modelo := TFuncaoDetalheNovoEPI.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.NovoEPI(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIFuncaoDetalhe.NovoFormacaoSalarial(const a_Objeto: TFuncaoDetalheNovoFormacaoSalarial): TRecibo;
begin
  Result := TDAO.callFunction('servicos.api_FuncaoDetalheNovoFormacaoSalarial', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIFuncaoDetalhe.NovoFormacaoSalarial(const a_Objeto: String): TRecibo;

  var t_Modelo: TFuncaoDetalheNovoFormacaoSalarial;

begin
  t_Modelo := TFuncaoDetalheNovoFormacaoSalarial.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.NovoFormacaoSalarial(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIFuncaoDetalhe.NovoBeneficio(const a_Objeto: TFuncaoDetalheNovoBeneficio): TRecibo;
begin
  Result := TDAO.callFunction('servicos.api_FuncaoDetalheNovoBeneficio', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIFuncaoDetalhe.NovoBeneficio(const a_Objeto: String): TRecibo;

  var t_Modelo: TFuncaoDetalheNovoBeneficio;

begin
  t_Modelo := TFuncaoDetalheNovoBeneficio.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.NovoBeneficio(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIFuncaoDetalhe.Excluir(const a_Objeto: TFuncaoDetalheExcluir): TRecibo;
begin
  Result := TDAO.callFunction('servicos.api_FuncaoDetalheExcluir', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIFuncaoDetalhe.Excluir(const a_Objeto: String): TRecibo;

  var t_Modelo: TFuncaoDetalheExcluir;

begin
  t_Modelo := TFuncaoDetalheExcluir.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Excluir(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;


end.
