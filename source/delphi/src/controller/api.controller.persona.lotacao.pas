unit api.controller.persona.Lotacao;

interface

  uses
    System.SysUtils,

    api.model.persona.Lotacao,
    api.model.recibo,
    api.dao,
    api.utils,
    api.command,

    Nasajon.Sdk.Helpers.Rest.Json.Generics    

    ;

  type
    TAPILotacao = class(TInterfacedObject, ICommandAPI)


      public

        function execute(const a_api: String; const a_param: String): TRecibo; overload;
        function execute(const a_param: TObject): TRecibo; overload;

        function Novo(const a_Objeto: String): TRecibo; overload;
        function Novo(const a_Objeto: TLotacaoNovo): TRecibo; overload;

        function AlterarDadosGerais(const a_Objeto: String): TRecibo; overload;
        function AlterarDadosGerais(const a_Objeto: TLotacaoAlterarDadosGerais): TRecibo; overload;

        function AlterarTipoLotacaoEstabelecimento(const a_Objeto: String): TRecibo; overload;
        function AlterarTipoLotacaoEstabelecimento(const a_Objeto: TLotacaoAlterarTipoLotacaoEstabelecimento): TRecibo; overload;

        function AlterarTipoLotacaoObraEstabelecimento(const a_Objeto: String): TRecibo; overload;
        function AlterarTipoLotacaoObraEstabelecimento(const a_Objeto: TLotacaoAlterarTipoLotacaoObraEstabelecimento): TRecibo; overload;

        function AlterarTipoLotacaoTomador(const a_Objeto: String): TRecibo; overload;
        function AlterarTipoLotacaoTomador(const a_Objeto: TLotacaoAlterarTipoLotacaoTomador): TRecibo; overload;

        function AlterarTipoLotacaoObraTomador(const a_Objeto: String): TRecibo; overload;
        function AlterarTipoLotacaoObraTomador(const a_Objeto: TLotacaoAlterarTipoLotacaoObraTomador): TRecibo; overload;

        function AlterarEnderecoDiferenteDoVinculo(const a_Objeto: String): TRecibo; overload;
        function AlterarEnderecoDiferenteDoVinculo(const a_Objeto: TLotacaoAlterarEnderecoDiferenteDoVinculo): TRecibo; overload;

        function AlterarDadosEnderecoDiferenteDoVinculo(const a_Objeto: String): TRecibo; overload;
        function AlterarDadosEnderecoDiferenteDoVinculo(const a_Objeto: TLotacaoAlterarDadosEnderecoDiferenteDoVinculo): TRecibo; overload;

        function AlterarProcessoTerceiros(const a_Objeto: String): TRecibo; overload;
        function AlterarProcessoTerceiros(const a_Objeto: TLotacaoAlterarProcessoTerceiros): TRecibo; overload;

        function AlterarOutrasEntidadesDiferenteDoVinculo(const a_Objeto: String): TRecibo; overload;
        function AlterarOutrasEntidadesDiferenteDoVinculo(const a_Objeto: TLotacaoAlterarOutrasEntidadesDiferenteDoVinculo): TRecibo; overload;

        function AlterarDadosOutrasEntidadesDiferenteDoVinculo(const a_Objeto: String): TRecibo; overload;
        function AlterarDadosOutrasEntidadesDiferenteDoVinculo(const a_Objeto: TLotacaoAlterarDadosOutrasEntidadesDiferenteDoVinculo): TRecibo; overload;

        function Excluir(const a_Objeto: String): TRecibo; overload;
        function Excluir(const a_Objeto: TLotacaoExcluir): TRecibo; overload;

        
    end;

implementation

{ TAPIpersona.Lotacao }

function TAPILotacao.execute(const a_api: String; const a_param: String): TRecibo;
begin
  if (UpperCase(a_api) = 'LOTACAONOVO')
    then begin
       Result := Self.Novo(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'LOTACAOALTERARDADOSGERAIS')
    then begin
       Result := Self.AlterarDadosGerais(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'LOTACAOALTERARTIPOLOTACAOESTABELECIMENTO')
    then begin
       Result := Self.AlterarTipoLotacaoEstabelecimento(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'LOTACAOALTERARTIPOLOTACAOOBRAESTABELECIMENTO')
    then begin
       Result := Self.AlterarTipoLotacaoObraEstabelecimento(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'LOTACAOALTERARTIPOLOTACAOTOMADOR')
    then begin
       Result := Self.AlterarTipoLotacaoTomador(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'LOTACAOALTERARTIPOLOTACAOOBRATOMADOR')
    then begin
       Result := Self.AlterarTipoLotacaoObraTomador(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'LOTACAOALTERARENDERECODIFERENTEDOVINCULO')
    then begin
       Result := Self.AlterarEnderecoDiferenteDoVinculo(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'LOTACAOALTERARDADOSENDERECODIFERENTEDOVINCULO')
    then begin
       Result := Self.AlterarDadosEnderecoDiferenteDoVinculo(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'LOTACAOALTERARPROCESSOTERCEIROS')
    then begin
       Result := Self.AlterarProcessoTerceiros(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'LOTACAOALTERAROUTRASENTIDADESDIFERENTEDOVINCULO')
    then begin
       Result := Self.AlterarOutrasEntidadesDiferenteDoVinculo(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'LOTACAOALTERARDADOSOUTRASENTIDADESDIFERENTEDOVINCULO')
    then begin
       Result := Self.AlterarDadosOutrasEntidadesDiferenteDoVinculo(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'LOTACAOEXCLUIR')
    then begin
       Result := Self.Excluir(a_Param);
       Exit();
    end;


end;

function TAPILotacao.execute(const a_param: TObject): TRecibo;
begin
  if (a_param is TLotacaoNovo)
    then begin
       Result := Self.Novo(a_Param as TLotacaoNovo);
       Exit();
    end;

  if (a_param is TLotacaoAlterarDadosGerais)
    then begin
       Result := Self.AlterarDadosGerais(a_Param as TLotacaoAlterarDadosGerais);
       Exit();
    end;

  if (a_param is TLotacaoAlterarTipoLotacaoEstabelecimento)
    then begin
       Result := Self.AlterarTipoLotacaoEstabelecimento(a_Param as TLotacaoAlterarTipoLotacaoEstabelecimento);
       Exit();
    end;

  if (a_param is TLotacaoAlterarTipoLotacaoObraEstabelecimento)
    then begin
       Result := Self.AlterarTipoLotacaoObraEstabelecimento(a_Param as TLotacaoAlterarTipoLotacaoObraEstabelecimento);
       Exit();
    end;

  if (a_param is TLotacaoAlterarTipoLotacaoTomador)
    then begin
       Result := Self.AlterarTipoLotacaoTomador(a_Param as TLotacaoAlterarTipoLotacaoTomador);
       Exit();
    end;

  if (a_param is TLotacaoAlterarTipoLotacaoObraTomador)
    then begin
       Result := Self.AlterarTipoLotacaoObraTomador(a_Param as TLotacaoAlterarTipoLotacaoObraTomador);
       Exit();
    end;

  if (a_param is TLotacaoAlterarEnderecoDiferenteDoVinculo)
    then begin
       Result := Self.AlterarEnderecoDiferenteDoVinculo(a_Param as TLotacaoAlterarEnderecoDiferenteDoVinculo);
       Exit();
    end;

  if (a_param is TLotacaoAlterarDadosEnderecoDiferenteDoVinculo)
    then begin
       Result := Self.AlterarDadosEnderecoDiferenteDoVinculo(a_Param as TLotacaoAlterarDadosEnderecoDiferenteDoVinculo);
       Exit();
    end;

  if (a_param is TLotacaoAlterarProcessoTerceiros)
    then begin
       Result := Self.AlterarProcessoTerceiros(a_Param as TLotacaoAlterarProcessoTerceiros);
       Exit();
    end;

  if (a_param is TLotacaoAlterarOutrasEntidadesDiferenteDoVinculo)
    then begin
       Result := Self.AlterarOutrasEntidadesDiferenteDoVinculo(a_Param as TLotacaoAlterarOutrasEntidadesDiferenteDoVinculo);
       Exit();
    end;

  if (a_param is TLotacaoAlterarDadosOutrasEntidadesDiferenteDoVinculo)
    then begin
       Result := Self.AlterarDadosOutrasEntidadesDiferenteDoVinculo(a_Param as TLotacaoAlterarDadosOutrasEntidadesDiferenteDoVinculo);
       Exit();
    end;

  if (a_param is TLotacaoExcluir)
    then begin
       Result := Self.Excluir(a_Param as TLotacaoExcluir);
       Exit();
    end;


end;

function TAPILotacao.Novo(const a_Objeto: TLotacaoNovo): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_LotacaoNovo', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPILotacao.Novo(const a_Objeto: String): TRecibo;

  var t_Modelo: TLotacaoNovo;

begin
  t_Modelo := TLotacaoNovo.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Novo(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPILotacao.AlterarDadosGerais(const a_Objeto: TLotacaoAlterarDadosGerais): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_LotacaoAlterarDadosGerais', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPILotacao.AlterarDadosGerais(const a_Objeto: String): TRecibo;

  var t_Modelo: TLotacaoAlterarDadosGerais;

begin
  t_Modelo := TLotacaoAlterarDadosGerais.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarDadosGerais(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPILotacao.AlterarTipoLotacaoEstabelecimento(const a_Objeto: TLotacaoAlterarTipoLotacaoEstabelecimento): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_LotacaoAlterarTipoLotacaoEstabelecimento', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPILotacao.AlterarTipoLotacaoEstabelecimento(const a_Objeto: String): TRecibo;

  var t_Modelo: TLotacaoAlterarTipoLotacaoEstabelecimento;

begin
  t_Modelo := TLotacaoAlterarTipoLotacaoEstabelecimento.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarTipoLotacaoEstabelecimento(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPILotacao.AlterarTipoLotacaoObraEstabelecimento(const a_Objeto: TLotacaoAlterarTipoLotacaoObraEstabelecimento): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_LotacaoAlterarTipoLotacaoObraEstabelecimento', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPILotacao.AlterarTipoLotacaoObraEstabelecimento(const a_Objeto: String): TRecibo;

  var t_Modelo: TLotacaoAlterarTipoLotacaoObraEstabelecimento;

begin
  t_Modelo := TLotacaoAlterarTipoLotacaoObraEstabelecimento.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarTipoLotacaoObraEstabelecimento(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPILotacao.AlterarTipoLotacaoTomador(const a_Objeto: TLotacaoAlterarTipoLotacaoTomador): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_LotacaoAlterarTipoLotacaoTomador', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPILotacao.AlterarTipoLotacaoTomador(const a_Objeto: String): TRecibo;

  var t_Modelo: TLotacaoAlterarTipoLotacaoTomador;

begin
  t_Modelo := TLotacaoAlterarTipoLotacaoTomador.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarTipoLotacaoTomador(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPILotacao.AlterarTipoLotacaoObraTomador(const a_Objeto: TLotacaoAlterarTipoLotacaoObraTomador): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_LotacaoAlterarTipoLotacaoObraTomador', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPILotacao.AlterarTipoLotacaoObraTomador(const a_Objeto: String): TRecibo;

  var t_Modelo: TLotacaoAlterarTipoLotacaoObraTomador;

begin
  t_Modelo := TLotacaoAlterarTipoLotacaoObraTomador.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarTipoLotacaoObraTomador(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPILotacao.AlterarEnderecoDiferenteDoVinculo(const a_Objeto: TLotacaoAlterarEnderecoDiferenteDoVinculo): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_LotacaoAlterarEnderecoDiferenteDoVinculo', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPILotacao.AlterarEnderecoDiferenteDoVinculo(const a_Objeto: String): TRecibo;

  var t_Modelo: TLotacaoAlterarEnderecoDiferenteDoVinculo;

begin
  t_Modelo := TLotacaoAlterarEnderecoDiferenteDoVinculo.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarEnderecoDiferenteDoVinculo(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPILotacao.AlterarDadosEnderecoDiferenteDoVinculo(const a_Objeto: TLotacaoAlterarDadosEnderecoDiferenteDoVinculo): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_LotacaoAlterarDadosEnderecoDiferenteDoVinculo', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPILotacao.AlterarDadosEnderecoDiferenteDoVinculo(const a_Objeto: String): TRecibo;

  var t_Modelo: TLotacaoAlterarDadosEnderecoDiferenteDoVinculo;

begin
  t_Modelo := TLotacaoAlterarDadosEnderecoDiferenteDoVinculo.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarDadosEnderecoDiferenteDoVinculo(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPILotacao.AlterarProcessoTerceiros(const a_Objeto: TLotacaoAlterarProcessoTerceiros): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_LotacaoAlterarProcessoTerceiros', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPILotacao.AlterarProcessoTerceiros(const a_Objeto: String): TRecibo;

  var t_Modelo: TLotacaoAlterarProcessoTerceiros;

begin
  t_Modelo := TLotacaoAlterarProcessoTerceiros.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarProcessoTerceiros(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPILotacao.AlterarOutrasEntidadesDiferenteDoVinculo(const a_Objeto: TLotacaoAlterarOutrasEntidadesDiferenteDoVinculo): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_LotacaoAlterarOutrasEntidadesDiferenteDoVinculo', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPILotacao.AlterarOutrasEntidadesDiferenteDoVinculo(const a_Objeto: String): TRecibo;

  var t_Modelo: TLotacaoAlterarOutrasEntidadesDiferenteDoVinculo;

begin
  t_Modelo := TLotacaoAlterarOutrasEntidadesDiferenteDoVinculo.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarOutrasEntidadesDiferenteDoVinculo(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPILotacao.AlterarDadosOutrasEntidadesDiferenteDoVinculo(const a_Objeto: TLotacaoAlterarDadosOutrasEntidadesDiferenteDoVinculo): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_LotacaoAlterarDadosOutrasEntidadesDiferenteDoVinculo', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPILotacao.AlterarDadosOutrasEntidadesDiferenteDoVinculo(const a_Objeto: String): TRecibo;

  var t_Modelo: TLotacaoAlterarDadosOutrasEntidadesDiferenteDoVinculo;

begin
  t_Modelo := TLotacaoAlterarDadosOutrasEntidadesDiferenteDoVinculo.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarDadosOutrasEntidadesDiferenteDoVinculo(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPILotacao.Excluir(const a_Objeto: TLotacaoExcluir): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_LotacaoExcluir', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPILotacao.Excluir(const a_Objeto: String): TRecibo;

  var t_Modelo: TLotacaoExcluir;

begin
  t_Modelo := TLotacaoExcluir.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Excluir(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;


end.
