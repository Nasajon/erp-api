unit api.controller.persona.Rubrica;

interface

  uses
    System.SysUtils,

    api.model.persona.Rubrica,
    api.model.recibo,
    api.dao,
    api.utils,
    api.command,

    Nasajon.Sdk.Helpers.Rest.Json.Generics    

    ;

  type
    TAPIRubrica = class(TInterfacedObject, ICommandAPI)


      public

        function execute(const a_api: String; const a_param: String): TRecibo; overload;
        function execute(const a_param: TObject): TRecibo; overload;

        function Novo(const a_Objeto: String): TRecibo; overload;
        function Novo(const a_Objeto: TRubricaNovo): TRecibo; overload;

        function AlterarDadosGerais(const a_Objeto: String): TRecibo; overload;
        function AlterarDadosGerais(const a_Objeto: TRubricaAlterarDadosGerais): TRecibo; overload;

        function AlterarDadosFormulaAvancada(const a_Objeto: String): TRecibo; overload;
        function AlterarDadosFormulaAvancada(const a_Objeto: TRubricaAlterarDadosFormulaAvancada): TRecibo; overload;

        function AlterarDadosFormulaBasica(const a_Objeto: String): TRecibo; overload;
        function AlterarDadosFormulaBasica(const a_Objeto: TRubricaAlterarDadosFormulaBasica): TRecibo; overload;

        function AlterarCodigoHomolognet(const a_Objeto: String): TRecibo; overload;
        function AlterarCodigoHomolognet(const a_Objeto: TRubricaAlterarCodigoHomolognet): TRecibo; overload;

        function AlterarCodigoESocial(const a_Objeto: String): TRecibo; overload;
        function AlterarCodigoESocial(const a_Objeto: TRubricaAlterarCodigoESocial): TRecibo; overload;

        function AlterarIncidencias(const a_Objeto: String): TRecibo; overload;
        function AlterarIncidencias(const a_Objeto: TRubricaAlterarIncidencias): TRecibo; overload;

        function AlterarDadosFaixa(const a_Objeto: String): TRecibo; overload;
        function AlterarDadosFaixa(const a_Objeto: TRubricaAlterarDadosFaixa): TRecibo; overload;

        function AlterarInstituicao(const a_Objeto: String): TRecibo; overload;
        function AlterarInstituicao(const a_Objeto: TRubricaAlterarInstituicao): TRecibo; overload;

        function AlterarDadosAnuenio(const a_Objeto: String): TRecibo; overload;
        function AlterarDadosAnuenio(const a_Objeto: TRubricaAlterarDadosAnuenio): TRecibo; overload;

        function AlterarDadosPiso(const a_Objeto: String): TRecibo; overload;
        function AlterarDadosPiso(const a_Objeto: TRubricaAlterarDadosPiso): TRecibo; overload;

        function AlterarDadosMedia(const a_Objeto: String): TRecibo; overload;
        function AlterarDadosMedia(const a_Objeto: TRubricaAlterarDadosMedia): TRecibo; overload;

        function AlterarDadosLimite(const a_Objeto: String): TRecibo; overload;
        function AlterarDadosLimite(const a_Objeto: TRubricaAlterarDadosLimite): TRecibo; overload;

        function AlterarValorIntegralBaseValorDia(const a_Objeto: String): TRecibo; overload;
        function AlterarValorIntegralBaseValorDia(const a_Objeto: TRubricaAlterarValorIntegralBaseValorDia): TRecibo; overload;

        function AlterarValorIntegralBaseValorHora(const a_Objeto: String): TRecibo; overload;
        function AlterarValorIntegralBaseValorHora(const a_Objeto: TRubricaAlterarValorIntegralBaseValorHora): TRecibo; overload;

        function AlterarValorIntegralBaseSindical(const a_Objeto: String): TRecibo; overload;
        function AlterarValorIntegralBaseSindical(const a_Objeto: TRubricaAlterarValorIntegralBaseSindical): TRecibo; overload;

        function AlterarValorIntegralBaseSalarioFamilia(const a_Objeto: String): TRecibo; overload;
        function AlterarValorIntegralBaseSalarioFamilia(const a_Objeto: TRubricaAlterarValorIntegralBaseSalarioFamilia): TRecibo; overload;

        function AlterarProporcaoNosCalculos(const a_Objeto: String): TRecibo; overload;
        function AlterarProporcaoNosCalculos(const a_Objeto: TRubricaAlterarProporcaoNosCalculos): TRecibo; overload;

        function AlterarComparaComTarifaVT(const a_Objeto: String): TRecibo; overload;
        function AlterarComparaComTarifaVT(const a_Objeto: TRubricaAlterarComparaComTarifaVT): TRecibo; overload;

        function Excluir(const a_Objeto: String): TRecibo; overload;
        function Excluir(const a_Objeto: TRubricaExcluir): TRecibo; overload;

        
    end;

implementation

{ TAPIpersona.Rubrica }

function TAPIRubrica.execute(const a_api: String; const a_param: String): TRecibo;
begin
  if (UpperCase(a_api) = 'RUBRICANOVO')
    then begin
       Result := Self.Novo(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'RUBRICAALTERARDADOSGERAIS')
    then begin
       Result := Self.AlterarDadosGerais(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'RUBRICAALTERARDADOSFORMULAAVANCADA')
    then begin
       Result := Self.AlterarDadosFormulaAvancada(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'RUBRICAALTERARDADOSFORMULABASICA')
    then begin
       Result := Self.AlterarDadosFormulaBasica(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'RUBRICAALTERARCODIGOHOMOLOGNET')
    then begin
       Result := Self.AlterarCodigoHomolognet(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'RUBRICAALTERARCODIGOESOCIAL')
    then begin
       Result := Self.AlterarCodigoESocial(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'RUBRICAALTERARINCIDENCIAS')
    then begin
       Result := Self.AlterarIncidencias(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'RUBRICAALTERARDADOSFAIXA')
    then begin
       Result := Self.AlterarDadosFaixa(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'RUBRICAALTERARINSTITUICAO')
    then begin
       Result := Self.AlterarInstituicao(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'RUBRICAALTERARDADOSANUENIO')
    then begin
       Result := Self.AlterarDadosAnuenio(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'RUBRICAALTERARDADOSPISO')
    then begin
       Result := Self.AlterarDadosPiso(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'RUBRICAALTERARDADOSMEDIA')
    then begin
       Result := Self.AlterarDadosMedia(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'RUBRICAALTERARDADOSLIMITE')
    then begin
       Result := Self.AlterarDadosLimite(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'RUBRICAALTERARVALORINTEGRALBASEVALORDIA')
    then begin
       Result := Self.AlterarValorIntegralBaseValorDia(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'RUBRICAALTERARVALORINTEGRALBASEVALORHORA')
    then begin
       Result := Self.AlterarValorIntegralBaseValorHora(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'RUBRICAALTERARVALORINTEGRALBASESINDICAL')
    then begin
       Result := Self.AlterarValorIntegralBaseSindical(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'RUBRICAALTERARVALORINTEGRALBASESALARIOFAMILIA')
    then begin
       Result := Self.AlterarValorIntegralBaseSalarioFamilia(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'RUBRICAALTERARPROPORCAONOSCALCULOS')
    then begin
       Result := Self.AlterarProporcaoNosCalculos(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'RUBRICAALTERARCOMPARACOMTARIFAVT')
    then begin
       Result := Self.AlterarComparaComTarifaVT(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'RUBRICAEXCLUIR')
    then begin
       Result := Self.Excluir(a_Param);
       Exit();
    end;


end;

function TAPIRubrica.execute(const a_param: TObject): TRecibo;
begin
  if (a_param is TRubricaNovo)
    then begin
       Result := Self.Novo(a_Param as TRubricaNovo);
       Exit();
    end;

  if (a_param is TRubricaAlterarDadosGerais)
    then begin
       Result := Self.AlterarDadosGerais(a_Param as TRubricaAlterarDadosGerais);
       Exit();
    end;

  if (a_param is TRubricaAlterarDadosFormulaAvancada)
    then begin
       Result := Self.AlterarDadosFormulaAvancada(a_Param as TRubricaAlterarDadosFormulaAvancada);
       Exit();
    end;

  if (a_param is TRubricaAlterarDadosFormulaBasica)
    then begin
       Result := Self.AlterarDadosFormulaBasica(a_Param as TRubricaAlterarDadosFormulaBasica);
       Exit();
    end;

  if (a_param is TRubricaAlterarCodigoHomolognet)
    then begin
       Result := Self.AlterarCodigoHomolognet(a_Param as TRubricaAlterarCodigoHomolognet);
       Exit();
    end;

  if (a_param is TRubricaAlterarCodigoESocial)
    then begin
       Result := Self.AlterarCodigoESocial(a_Param as TRubricaAlterarCodigoESocial);
       Exit();
    end;

  if (a_param is TRubricaAlterarIncidencias)
    then begin
       Result := Self.AlterarIncidencias(a_Param as TRubricaAlterarIncidencias);
       Exit();
    end;

  if (a_param is TRubricaAlterarDadosFaixa)
    then begin
       Result := Self.AlterarDadosFaixa(a_Param as TRubricaAlterarDadosFaixa);
       Exit();
    end;

  if (a_param is TRubricaAlterarInstituicao)
    then begin
       Result := Self.AlterarInstituicao(a_Param as TRubricaAlterarInstituicao);
       Exit();
    end;

  if (a_param is TRubricaAlterarDadosAnuenio)
    then begin
       Result := Self.AlterarDadosAnuenio(a_Param as TRubricaAlterarDadosAnuenio);
       Exit();
    end;

  if (a_param is TRubricaAlterarDadosPiso)
    then begin
       Result := Self.AlterarDadosPiso(a_Param as TRubricaAlterarDadosPiso);
       Exit();
    end;

  if (a_param is TRubricaAlterarDadosMedia)
    then begin
       Result := Self.AlterarDadosMedia(a_Param as TRubricaAlterarDadosMedia);
       Exit();
    end;

  if (a_param is TRubricaAlterarDadosLimite)
    then begin
       Result := Self.AlterarDadosLimite(a_Param as TRubricaAlterarDadosLimite);
       Exit();
    end;

  if (a_param is TRubricaAlterarValorIntegralBaseValorDia)
    then begin
       Result := Self.AlterarValorIntegralBaseValorDia(a_Param as TRubricaAlterarValorIntegralBaseValorDia);
       Exit();
    end;

  if (a_param is TRubricaAlterarValorIntegralBaseValorHora)
    then begin
       Result := Self.AlterarValorIntegralBaseValorHora(a_Param as TRubricaAlterarValorIntegralBaseValorHora);
       Exit();
    end;

  if (a_param is TRubricaAlterarValorIntegralBaseSindical)
    then begin
       Result := Self.AlterarValorIntegralBaseSindical(a_Param as TRubricaAlterarValorIntegralBaseSindical);
       Exit();
    end;

  if (a_param is TRubricaAlterarValorIntegralBaseSalarioFamilia)
    then begin
       Result := Self.AlterarValorIntegralBaseSalarioFamilia(a_Param as TRubricaAlterarValorIntegralBaseSalarioFamilia);
       Exit();
    end;

  if (a_param is TRubricaAlterarProporcaoNosCalculos)
    then begin
       Result := Self.AlterarProporcaoNosCalculos(a_Param as TRubricaAlterarProporcaoNosCalculos);
       Exit();
    end;

  if (a_param is TRubricaAlterarComparaComTarifaVT)
    then begin
       Result := Self.AlterarComparaComTarifaVT(a_Param as TRubricaAlterarComparaComTarifaVT);
       Exit();
    end;

  if (a_param is TRubricaExcluir)
    then begin
       Result := Self.Excluir(a_Param as TRubricaExcluir);
       Exit();
    end;


end;

function TAPIRubrica.Novo(const a_Objeto: TRubricaNovo): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_RubricaNovo', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIRubrica.Novo(const a_Objeto: String): TRecibo;

  var t_Modelo: TRubricaNovo;

begin
  t_Modelo := TRubricaNovo.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Novo(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIRubrica.AlterarDadosGerais(const a_Objeto: TRubricaAlterarDadosGerais): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_RubricaAlterarDadosGerais', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIRubrica.AlterarDadosGerais(const a_Objeto: String): TRecibo;

  var t_Modelo: TRubricaAlterarDadosGerais;

begin
  t_Modelo := TRubricaAlterarDadosGerais.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarDadosGerais(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIRubrica.AlterarDadosFormulaAvancada(const a_Objeto: TRubricaAlterarDadosFormulaAvancada): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_RubricaAlterarDadosFormulaAvancada', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIRubrica.AlterarDadosFormulaAvancada(const a_Objeto: String): TRecibo;

  var t_Modelo: TRubricaAlterarDadosFormulaAvancada;

begin
  t_Modelo := TRubricaAlterarDadosFormulaAvancada.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarDadosFormulaAvancada(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIRubrica.AlterarDadosFormulaBasica(const a_Objeto: TRubricaAlterarDadosFormulaBasica): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_RubricaAlterarDadosFormulaBasica', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIRubrica.AlterarDadosFormulaBasica(const a_Objeto: String): TRecibo;

  var t_Modelo: TRubricaAlterarDadosFormulaBasica;

begin
  t_Modelo := TRubricaAlterarDadosFormulaBasica.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarDadosFormulaBasica(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIRubrica.AlterarCodigoHomolognet(const a_Objeto: TRubricaAlterarCodigoHomolognet): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_RubricaAlterarCodigoHomolognet', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIRubrica.AlterarCodigoHomolognet(const a_Objeto: String): TRecibo;

  var t_Modelo: TRubricaAlterarCodigoHomolognet;

begin
  t_Modelo := TRubricaAlterarCodigoHomolognet.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarCodigoHomolognet(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIRubrica.AlterarCodigoESocial(const a_Objeto: TRubricaAlterarCodigoESocial): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_RubricaAlterarCodigoESocial', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIRubrica.AlterarCodigoESocial(const a_Objeto: String): TRecibo;

  var t_Modelo: TRubricaAlterarCodigoESocial;

begin
  t_Modelo := TRubricaAlterarCodigoESocial.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarCodigoESocial(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIRubrica.AlterarIncidencias(const a_Objeto: TRubricaAlterarIncidencias): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_RubricaAlterarIncidencias', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIRubrica.AlterarIncidencias(const a_Objeto: String): TRecibo;

  var t_Modelo: TRubricaAlterarIncidencias;

begin
  t_Modelo := TRubricaAlterarIncidencias.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarIncidencias(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIRubrica.AlterarDadosFaixa(const a_Objeto: TRubricaAlterarDadosFaixa): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_RubricaAlterarDadosFaixa', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIRubrica.AlterarDadosFaixa(const a_Objeto: String): TRecibo;

  var t_Modelo: TRubricaAlterarDadosFaixa;

begin
  t_Modelo := TRubricaAlterarDadosFaixa.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarDadosFaixa(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIRubrica.AlterarInstituicao(const a_Objeto: TRubricaAlterarInstituicao): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_RubricaAlterarInstituicao', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIRubrica.AlterarInstituicao(const a_Objeto: String): TRecibo;

  var t_Modelo: TRubricaAlterarInstituicao;

begin
  t_Modelo := TRubricaAlterarInstituicao.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarInstituicao(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIRubrica.AlterarDadosAnuenio(const a_Objeto: TRubricaAlterarDadosAnuenio): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_RubricaAlterarDadosAnuenio', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIRubrica.AlterarDadosAnuenio(const a_Objeto: String): TRecibo;

  var t_Modelo: TRubricaAlterarDadosAnuenio;

begin
  t_Modelo := TRubricaAlterarDadosAnuenio.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarDadosAnuenio(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIRubrica.AlterarDadosPiso(const a_Objeto: TRubricaAlterarDadosPiso): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_RubricaAlterarDadosPiso', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIRubrica.AlterarDadosPiso(const a_Objeto: String): TRecibo;

  var t_Modelo: TRubricaAlterarDadosPiso;

begin
  t_Modelo := TRubricaAlterarDadosPiso.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarDadosPiso(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIRubrica.AlterarDadosMedia(const a_Objeto: TRubricaAlterarDadosMedia): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_RubricaAlterarDadosMedia', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIRubrica.AlterarDadosMedia(const a_Objeto: String): TRecibo;

  var t_Modelo: TRubricaAlterarDadosMedia;

begin
  t_Modelo := TRubricaAlterarDadosMedia.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarDadosMedia(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIRubrica.AlterarDadosLimite(const a_Objeto: TRubricaAlterarDadosLimite): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_RubricaAlterarDadosLimite', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIRubrica.AlterarDadosLimite(const a_Objeto: String): TRecibo;

  var t_Modelo: TRubricaAlterarDadosLimite;

begin
  t_Modelo := TRubricaAlterarDadosLimite.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarDadosLimite(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIRubrica.AlterarValorIntegralBaseValorDia(const a_Objeto: TRubricaAlterarValorIntegralBaseValorDia): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_RubricaAlterarValorIntegralBaseValorDia', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIRubrica.AlterarValorIntegralBaseValorDia(const a_Objeto: String): TRecibo;

  var t_Modelo: TRubricaAlterarValorIntegralBaseValorDia;

begin
  t_Modelo := TRubricaAlterarValorIntegralBaseValorDia.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarValorIntegralBaseValorDia(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIRubrica.AlterarValorIntegralBaseValorHora(const a_Objeto: TRubricaAlterarValorIntegralBaseValorHora): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_RubricaAlterarValorIntegralBaseValorHora', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIRubrica.AlterarValorIntegralBaseValorHora(const a_Objeto: String): TRecibo;

  var t_Modelo: TRubricaAlterarValorIntegralBaseValorHora;

begin
  t_Modelo := TRubricaAlterarValorIntegralBaseValorHora.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarValorIntegralBaseValorHora(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIRubrica.AlterarValorIntegralBaseSindical(const a_Objeto: TRubricaAlterarValorIntegralBaseSindical): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_RubricaAlterarValorIntegralBaseSindical', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIRubrica.AlterarValorIntegralBaseSindical(const a_Objeto: String): TRecibo;

  var t_Modelo: TRubricaAlterarValorIntegralBaseSindical;

begin
  t_Modelo := TRubricaAlterarValorIntegralBaseSindical.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarValorIntegralBaseSindical(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIRubrica.AlterarValorIntegralBaseSalarioFamilia(const a_Objeto: TRubricaAlterarValorIntegralBaseSalarioFamilia): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_RubricaAlterarValorIntegralBaseSalarioFamilia', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIRubrica.AlterarValorIntegralBaseSalarioFamilia(const a_Objeto: String): TRecibo;

  var t_Modelo: TRubricaAlterarValorIntegralBaseSalarioFamilia;

begin
  t_Modelo := TRubricaAlterarValorIntegralBaseSalarioFamilia.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarValorIntegralBaseSalarioFamilia(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIRubrica.AlterarProporcaoNosCalculos(const a_Objeto: TRubricaAlterarProporcaoNosCalculos): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_RubricaAlterarProporcaoNosCalculos', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIRubrica.AlterarProporcaoNosCalculos(const a_Objeto: String): TRecibo;

  var t_Modelo: TRubricaAlterarProporcaoNosCalculos;

begin
  t_Modelo := TRubricaAlterarProporcaoNosCalculos.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarProporcaoNosCalculos(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIRubrica.AlterarComparaComTarifaVT(const a_Objeto: TRubricaAlterarComparaComTarifaVT): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_RubricaAlterarComparaComTarifaVT', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIRubrica.AlterarComparaComTarifaVT(const a_Objeto: String): TRecibo;

  var t_Modelo: TRubricaAlterarComparaComTarifaVT;

begin
  t_Modelo := TRubricaAlterarComparaComTarifaVT.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarComparaComTarifaVT(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIRubrica.Excluir(const a_Objeto: TRubricaExcluir): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_RubricaExcluir', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIRubrica.Excluir(const a_Objeto: String): TRecibo;

  var t_Modelo: TRubricaExcluir;

begin
  t_Modelo := TRubricaExcluir.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Excluir(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;


end.
