unit api.model.ns.configuracaocategoriaporclassfinan;

interface

	uses
		  {$IFDEF VER310}System.JSON,{$ENDIF}Data.DBXJson,
		
		  Nasajon.Sdk.Helpers.Json.Serializer,
  		Nasajon.Sdk.Helpers.Rest.Json.Generics,
  		
  		nsbroker.model.conteudomensagem,
  		nsbroker.model.conteudomensagem_api,
  		nsbroker.utils.buildconteudomensagem,
  		nsbroker.constants,
  		
      api.model.recibo,

  		Uni
	
	

	;

type TconfiguracaocategoriaporclassfinanNovo = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_id: String;
    var m_grupoempresarial: String;
    var m_tipocategoria: Integer;
    var m_categoriarubrica: Integer;
    var m_ClassificacaoFinanceira: String;
    var m_tipocalculo: Integer;
    

    function getid(): String;
    function getgrupoempresarial(): String;
    function gettipocategoria(): Integer;
    function getcategoriarubrica(): Integer;
    function getClassificacaoFinanceira(): String;
    function gettipocalculo(): Integer;
    

    procedure setid(const a_Value: String);
    procedure setgrupoempresarial(const a_Value: String);
    procedure settipocategoria(const a_Value: Integer);
    procedure setcategoriarubrica(const a_Value: Integer);
    procedure setClassificacaoFinanceira(const a_Value: String);
    procedure settipocalculo(const a_Value: Integer);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('id')]
    property id: String read getid write setid;

    [NasajonSerializeAttribute('grupoempresarial')]
    property grupoempresarial: String read getgrupoempresarial write setgrupoempresarial;

    /// <summary>
/// Informe: 
///                             0  - Recebimento
///                             1  - Desconto
    /// </summary>
    [NasajonSerializeAttribute('tipocategoria')]
    property tipocategoria: Integer read gettipocategoria write settipocategoria;

    /// <summary>
/// Informe: 
///                      Outros = 0;
///                      Salario = 1;
///                      SalarioHora = 2;
///                      Falta = 3;
///                      Atraso = 4;
///                      Pensao = 5;
///                      Anuenio = 6;
///                      Medicas = 7;
///                      PrevidenciaPrivada = 8;
///                      AdicionalNoturno = 9;
///                      AdicionalFeriasMes = 10;
///                      AdicionalFeriasProxMes = 11
///                      AbonoPecuniario = 12;
///                      AdicionalPecuniario = 13;
///                      DiferencaAPagar = 14;
///                      Dobrado = 15;
///                      FeriasNoMes = 16;
///                      FeriasNoProxMes = 17;
///                      IRRF = 18;
///                      ValorPago = 19;
///                      Proporcional = 20;
///                      Vencida = 21;
///                      VencidaEmDobro = 22;
///                      Indenizado = 23;
///                      AbonoContProporcional = 24;
///                      AbonoContVencida = 25;
///                      AbonoConstIndenizada = 26;
///                      Comissao = 27;
///                      Adiantamento = 28;
///                      ValorJaPago = 29;
///                      FGTS = 30;
///                      INSS = 31;
///                      FGTSEmpresa = 32;
///                      SalarioFamilia = 33;
///                      SalarioFamiliaMesAnt = 34;
///                      Sindical = 35;
///                      ValeTransporte = 36;
///                      DiferencaSalario = 37;
///                      DSR = 38;
///                      DSRHorista = 39;
///                      ISS = 40;
///                      SEST = 41;
///                      SENAT = 42;
///                      ValorPagoMaior = 43;
///                      FaltaMesAnterior = 44;
///                      ValeAlimentacao = 45;
///                      ReembolsoValeAlim = 46;
///                      ReembolsoVT = 47;
///                      DifSalarialNegativa = 48;
///                      DifSalarialINSS = 49;
///                      Insalubridade = 50;
///                      Sobreaviso = 51;
///                      Viagens = 52;
///                      Premios = 53;
///                      Percentagem = 54;
///                      Periculosidade = 55;
///                      BolsaMedico = 56;
///                      VoluntarioCopa = 57;
///                      EtapasMaritimas = 58;
///                      AdicTransfLocal = 59;
///                      Prontidao = 60;
///                      Multa476 = 61;
///                      Gorjeta = 62;
///                      Gratificacao = 63;
///                      IRAcumulado = 64;
///                      ContribuicaoFAPI = 65;
///                      OutrosIsentos = 66;
///                      ParcelaIsenta = 67;
///                      Invalidez = 68;
///                      DiariasEAjudaCusto = 69;
///                      LicencaRemunerada = 70;
///                      INSSRetido = 71;
///                      AvisoPrevioIndenizado = 72;
///                      MultaDemissaoAntesDissidio = 73;
///                      MultaSaldoFGTS = 74;
///                      MultaAtrasoPgtoRescisao = 75;
///                      MultaFGTSEmpresa = 76;
///                      IndenizacaoNaoOptanteFGTS = 77;
///                      MultaFimContratoAntecipado = 78;
///                      ValorPagoRescisao = 79;
///                      IndenizacoesRescisao = 80;
///                      Associativa = 81;
///                      Assistencial = 82;
///                      Confederativa = 83;
///                      Emprestimo = 84;
///                      Saldo = 85;
///                      Arredondamento = 86;
///                      SalarioMaternidade = 87;
///                      DependenteIR = 88;
///                      INSSVinculoMaisOutros = 89;
///                      IRRFVinculoMaisOutros = 90;
///                      HoraExtra   = 91;
///                      HoraFolga   = 92;
///                      HoraSabado  = 93;
///                      HoraDomingo = 94;
///                      HoraFeriado = 95;
///                      INSSAcumulado = 96;
///                      AdicionalVencidaDobro = 97;
///                      PensaoRRA = 98;
///                      DedDepIRRRA = 99;
///                      IRRFRRA = 100;
///                      LucroDiretor = 101;
///                      Complemento = 102;
///                      PrevidenciaComplementar = 103;
    /// </summary>
    [NasajonSerializeAttribute('categoriarubrica')]
    property categoriarubrica: Integer read getcategoriarubrica write setcategoriarubrica;

    [NasajonSerializeAttribute('classificacaofinanceira')]
    property classificacaofinanceira: String read getClassificacaoFinanceira write setClassificacaoFinanceira;

    /// <summary>
/// Informe: 
///                             0  - Folha
///                             1  - Férias
/// 							2  - 13º Salário
/// 							3  - PPLR
    /// </summary>
    [NasajonSerializeAttribute('tipocalculo')]
    property tipocalculo: Integer read gettipocalculo write settipocalculo;

    

end;

type TconfiguracaocategoriaporclassfinanAlterar = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_id: String;
    var m_grupoempresarial: String;
    var m_tipocategoria: Integer;
    var m_categoriarubrica: Integer;
    var m_ClassificacaoFinanceira: String;
    var m_tipocalculo: Integer;
    

    function getid(): String;
    function getgrupoempresarial(): String;
    function gettipocategoria(): Integer;
    function getcategoriarubrica(): Integer;
    function getClassificacaoFinanceira(): String;
    function gettipocalculo(): Integer;
    

    procedure setid(const a_Value: String);
    procedure setgrupoempresarial(const a_Value: String);
    procedure settipocategoria(const a_Value: Integer);
    procedure setcategoriarubrica(const a_Value: Integer);
    procedure setClassificacaoFinanceira(const a_Value: String);
    procedure settipocalculo(const a_Value: Integer);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('id')]
    property id: String read getid write setid;

    [NasajonSerializeAttribute('grupoempresarial')]
    property grupoempresarial: String read getgrupoempresarial write setgrupoempresarial;

    /// <summary>
/// Informe: 
///                             0  - Recebimento
///                             1  - Desconto
    /// </summary>
    [NasajonSerializeAttribute('tipocategoria')]
    property tipocategoria: Integer read gettipocategoria write settipocategoria;

    /// <summary>
/// Informe: 
///                      Outros = 0;
///                      Salario = 1;
///                      SalarioHora = 2;
///                      Falta = 3;
///                      Atraso = 4;
///                      Pensao = 5;
///                      Anuenio = 6;
///                      Medicas = 7;
///                      PrevidenciaPrivada = 8;
///                      AdicionalNoturno = 9;
///                      AdicionalFeriasMes = 10;
///                      AdicionalFeriasProxMes = 11
///                      AbonoPecuniario = 12;
///                      AdicionalPecuniario = 13;
///                      DiferencaAPagar = 14;
///                      Dobrado = 15;
///                      FeriasNoMes = 16;
///                      FeriasNoProxMes = 17;
///                      IRRF = 18;
///                      ValorPago = 19;
///                      Proporcional = 20;
///                      Vencida = 21;
///                      VencidaEmDobro = 22;
///                      Indenizado = 23;
///                      AbonoContProporcional = 24;
///                      AbonoContVencida = 25;
///                      AbonoConstIndenizada = 26;
///                      Comissao = 27;
///                      Adiantamento = 28;
///                      ValorJaPago = 29;
///                      FGTS = 30;
///                      INSS = 31;
///                      FGTSEmpresa = 32;
///                      SalarioFamilia = 33;
///                      SalarioFamiliaMesAnt = 34;
///                      Sindical = 35;
///                      ValeTransporte = 36;
///                      DiferencaSalario = 37;
///                      DSR = 38;
///                      DSRHorista = 39;
///                      ISS = 40;
///                      SEST = 41;
///                      SENAT = 42;
///                      ValorPagoMaior = 43;
///                      FaltaMesAnterior = 44;
///                      ValeAlimentacao = 45;
///                      ReembolsoValeAlim = 46;
///                      ReembolsoVT = 47;
///                      DifSalarialNegativa = 48;
///                      DifSalarialINSS = 49;
///                      Insalubridade = 50;
///                      Sobreaviso = 51;
///                      Viagens = 52;
///                      Premios = 53;
///                      Percentagem = 54;
///                      Periculosidade = 55;
///                      BolsaMedico = 56;
///                      VoluntarioCopa = 57;
///                      EtapasMaritimas = 58;
///                      AdicTransfLocal = 59;
///                      Prontidao = 60;
///                      Multa476 = 61;
///                      Gorjeta = 62;
///                      Gratificacao = 63;
///                      IRAcumulado = 64;
///                      ContribuicaoFAPI = 65;
///                      OutrosIsentos = 66;
///                      ParcelaIsenta = 67;
///                      Invalidez = 68;
///                      DiariasEAjudaCusto = 69;
///                      LicencaRemunerada = 70;
///                      INSSRetido = 71;
///                      AvisoPrevioIndenizado = 72;
///                      MultaDemissaoAntesDissidio = 73;
///                      MultaSaldoFGTS = 74;
///                      MultaAtrasoPgtoRescisao = 75;
///                      MultaFGTSEmpresa = 76;
///                      IndenizacaoNaoOptanteFGTS = 77;
///                      MultaFimContratoAntecipado = 78;
///                      ValorPagoRescisao = 79;
///                      IndenizacoesRescisao = 80;
///                      Associativa = 81;
///                      Assistencial = 82;
///                      Confederativa = 83;
///                      Emprestimo = 84;
///                      Saldo = 85;
///                      Arredondamento = 86;
///                      SalarioMaternidade = 87;
///                      DependenteIR = 88;
///                      INSSVinculoMaisOutros = 89;
///                      IRRFVinculoMaisOutros = 90;
///                      HoraExtra   = 91;
///                      HoraFolga   = 92;
///                      HoraSabado  = 93;
///                      HoraDomingo = 94;
///                      HoraFeriado = 95;
///                      INSSAcumulado = 96;
///                      AdicionalVencidaDobro = 97;
///                      PensaoRRA = 98;
///                      DedDepIRRRA = 99;
///                      IRRFRRA = 100;
///                      LucroDiretor = 101;
///                      Complemento = 102;
///                      PrevidenciaComplementar = 103;
    /// </summary>
    [NasajonSerializeAttribute('categoriarubrica')]
    property categoriarubrica: Integer read getcategoriarubrica write setcategoriarubrica;

    [NasajonSerializeAttribute('classificacaofinanceira')]
    property classificacaofinanceira: String read getClassificacaoFinanceira write setClassificacaoFinanceira;

    /// <summary>
/// Informe: 
///                             0  - Folha
///                             1  - Férias
/// 							2  - 13º Salário
/// 							3  - PPLR
    /// </summary>
    [NasajonSerializeAttribute('tipocalculo')]
    property tipocalculo: Integer read gettipocalculo write settipocalculo;

    

end;

type TconfiguracaocategoriaporclassfinanExcluir = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_id: String;
    var m_grupoempresarial: String;
    var m_tipocategoria: Integer;
    var m_categoriarubrica: Integer;
    

    function getid(): String;
    function getgrupoempresarial(): String;
    function gettipocategoria(): Integer;
    function getcategoriarubrica(): Integer;
    

    procedure setid(const a_Value: String);
    procedure setgrupoempresarial(const a_Value: String);
    procedure settipocategoria(const a_Value: Integer);
    procedure setcategoriarubrica(const a_Value: Integer);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('id')]
    property id: String read getid write setid;

    [NasajonSerializeAttribute('grupoempresarial')]
    property grupoempresarial: String read getgrupoempresarial write setgrupoempresarial;

    /// <summary>
/// Informe: 
///                             0  - Recebimento
///                             1  - Desconto
    /// </summary>
    [NasajonSerializeAttribute('tipocategoria')]
    property tipocategoria: Integer read gettipocategoria write settipocategoria;

    /// <summary>
/// Informe: 
///                      Outros = 0;
///                      Salario = 1;
///                      SalarioHora = 2;
///                      Falta = 3;
///                      Atraso = 4;
///                      Pensao = 5;
///                      Anuenio = 6;
///                      Medicas = 7;
///                      PrevidenciaPrivada = 8;
///                      AdicionalNoturno = 9;
///                      AdicionalFeriasMes = 10;
///                      AdicionalFeriasProxMes = 11
///                      AbonoPecuniario = 12;
///                      AdicionalPecuniario = 13;
///                      DiferencaAPagar = 14;
///                      Dobrado = 15;
///                      FeriasNoMes = 16;
///                      FeriasNoProxMes = 17;
///                      IRRF = 18;
///                      ValorPago = 19;
///                      Proporcional = 20;
///                      Vencida = 21;
///                      VencidaEmDobro = 22;
///                      Indenizado = 23;
///                      AbonoContProporcional = 24;
///                      AbonoContVencida = 25;
///                      AbonoConstIndenizada = 26;
///                      Comissao = 27;
///                      Adiantamento = 28;
///                      ValorJaPago = 29;
///                      FGTS = 30;
///                      INSS = 31;
///                      FGTSEmpresa = 32;
///                      SalarioFamilia = 33;
///                      SalarioFamiliaMesAnt = 34;
///                      Sindical = 35;
///                      ValeTransporte = 36;
///                      DiferencaSalario = 37;
///                      DSR = 38;
///                      DSRHorista = 39;
///                      ISS = 40;
///                      SEST = 41;
///                      SENAT = 42;
///                      ValorPagoMaior = 43;
///                      FaltaMesAnterior = 44;
///                      ValeAlimentacao = 45;
///                      ReembolsoValeAlim = 46;
///                      ReembolsoVT = 47;
///                      DifSalarialNegativa = 48;
///                      DifSalarialINSS = 49;
///                      Insalubridade = 50;
///                      Sobreaviso = 51;
///                      Viagens = 52;
///                      Premios = 53;
///                      Percentagem = 54;
///                      Periculosidade = 55;
///                      BolsaMedico = 56;
///                      VoluntarioCopa = 57;
///                      EtapasMaritimas = 58;
///                      AdicTransfLocal = 59;
///                      Prontidao = 60;
///                      Multa476 = 61;
///                      Gorjeta = 62;
///                      Gratificacao = 63;
///                      IRAcumulado = 64;
///                      ContribuicaoFAPI = 65;
///                      OutrosIsentos = 66;
///                      ParcelaIsenta = 67;
///                      Invalidez = 68;
///                      DiariasEAjudaCusto = 69;
///                      LicencaRemunerada = 70;
///                      INSSRetido = 71;
///                      AvisoPrevioIndenizado = 72;
///                      MultaDemissaoAntesDissidio = 73;
///                      MultaSaldoFGTS = 74;
///                      MultaAtrasoPgtoRescisao = 75;
///                      MultaFGTSEmpresa = 76;
///                      IndenizacaoNaoOptanteFGTS = 77;
///                      MultaFimContratoAntecipado = 78;
///                      ValorPagoRescisao = 79;
///                      IndenizacoesRescisao = 80;
///                      Associativa = 81;
///                      Assistencial = 82;
///                      Confederativa = 83;
///                      Emprestimo = 84;
///                      Saldo = 85;
///                      Arredondamento = 86;
///                      SalarioMaternidade = 87;
///                      DependenteIR = 88;
///                      INSSVinculoMaisOutros = 89;
///                      IRRFVinculoMaisOutros = 90;
///                      HoraExtra   = 91;
///                      HoraFolga   = 92;
///                      HoraSabado  = 93;
///                      HoraDomingo = 94;
///                      HoraFeriado = 95;
///                      INSSAcumulado = 96;
///                      AdicionalVencidaDobro = 97;
///                      PensaoRRA = 98;
///                      DedDepIRRRA = 99;
///                      IRRFRRA = 100;
///                      LucroDiretor = 101;
///                      Complemento = 102;
///                      PrevidenciaComplementar = 103;
    /// </summary>
    [NasajonSerializeAttribute('categoriarubrica')]
    property categoriarubrica: Integer read getcategoriarubrica write setcategoriarubrica;

    

end;

	
implementation

  uses
      api.send;  

function TconfiguracaocategoriaporclassfinanNovo.getid: String;
begin
  Result := Self.m_id;
end;

procedure TconfiguracaocategoriaporclassfinanNovo.setid(const a_Value: String);
begin
  Self.m_id := a_Value;
end;

function TconfiguracaocategoriaporclassfinanNovo.getgrupoempresarial: String;
begin
  Result := Self.m_grupoempresarial;
end;

procedure TconfiguracaocategoriaporclassfinanNovo.setgrupoempresarial(const a_Value: String);
begin
  Self.m_grupoempresarial := a_Value;
end;

function TconfiguracaocategoriaporclassfinanNovo.gettipocategoria: Integer;
begin
  Result := Self.m_tipocategoria;
end;

procedure TconfiguracaocategoriaporclassfinanNovo.settipocategoria(const a_Value: Integer);
begin
  Self.m_tipocategoria := a_Value;
end;

function TconfiguracaocategoriaporclassfinanNovo.getcategoriarubrica: Integer;
begin
  Result := Self.m_categoriarubrica;
end;

procedure TconfiguracaocategoriaporclassfinanNovo.setcategoriarubrica(const a_Value: Integer);
begin
  Self.m_categoriarubrica := a_Value;
end;

function TconfiguracaocategoriaporclassfinanNovo.getClassificacaoFinanceira: String;
begin
  Result := Self.m_ClassificacaoFinanceira;
end;

procedure TconfiguracaocategoriaporclassfinanNovo.setClassificacaoFinanceira(const a_Value: String);
begin
  Self.m_ClassificacaoFinanceira := a_Value;
end;

function TconfiguracaocategoriaporclassfinanNovo.gettipocalculo: Integer;
begin
  Result := Self.m_tipocalculo;
end;

procedure TconfiguracaocategoriaporclassfinanNovo.settipocalculo(const a_Value: Integer);
begin
  Self.m_tipocalculo := a_Value;
end;

destructor TconfiguracaocategoriaporclassfinanNovo.Destroy;
begin

end;

function TconfiguracaocategoriaporclassfinanNovo.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TconfiguracaocategoriaporclassfinanNovo.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TconfiguracaocategoriaporclassfinanNovo.getNameAPI(): String;
begin
  Result := 'configuracaocategoriaporclassfinanNovo';
end;

function TconfiguracaocategoriaporclassfinanNovo.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TconfiguracaocategoriaporclassfinanNovo.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TconfiguracaocategoriaporclassfinanAlterar.getid: String;
begin
  Result := Self.m_id;
end;

procedure TconfiguracaocategoriaporclassfinanAlterar.setid(const a_Value: String);
begin
  Self.m_id := a_Value;
end;

function TconfiguracaocategoriaporclassfinanAlterar.getgrupoempresarial: String;
begin
  Result := Self.m_grupoempresarial;
end;

procedure TconfiguracaocategoriaporclassfinanAlterar.setgrupoempresarial(const a_Value: String);
begin
  Self.m_grupoempresarial := a_Value;
end;

function TconfiguracaocategoriaporclassfinanAlterar.gettipocategoria: Integer;
begin
  Result := Self.m_tipocategoria;
end;

procedure TconfiguracaocategoriaporclassfinanAlterar.settipocategoria(const a_Value: Integer);
begin
  Self.m_tipocategoria := a_Value;
end;

function TconfiguracaocategoriaporclassfinanAlterar.getcategoriarubrica: Integer;
begin
  Result := Self.m_categoriarubrica;
end;

procedure TconfiguracaocategoriaporclassfinanAlterar.setcategoriarubrica(const a_Value: Integer);
begin
  Self.m_categoriarubrica := a_Value;
end;

function TconfiguracaocategoriaporclassfinanAlterar.getClassificacaoFinanceira: String;
begin
  Result := Self.m_ClassificacaoFinanceira;
end;

procedure TconfiguracaocategoriaporclassfinanAlterar.setClassificacaoFinanceira(const a_Value: String);
begin
  Self.m_ClassificacaoFinanceira := a_Value;
end;

function TconfiguracaocategoriaporclassfinanAlterar.gettipocalculo: Integer;
begin
  Result := Self.m_tipocalculo;
end;

procedure TconfiguracaocategoriaporclassfinanAlterar.settipocalculo(const a_Value: Integer);
begin
  Self.m_tipocalculo := a_Value;
end;

destructor TconfiguracaocategoriaporclassfinanAlterar.Destroy;
begin

end;

function TconfiguracaocategoriaporclassfinanAlterar.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TconfiguracaocategoriaporclassfinanAlterar.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TconfiguracaocategoriaporclassfinanAlterar.getNameAPI(): String;
begin
  Result := 'configuracaocategoriaporclassfinanAlterar';
end;

function TconfiguracaocategoriaporclassfinanAlterar.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TconfiguracaocategoriaporclassfinanAlterar.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TconfiguracaocategoriaporclassfinanExcluir.getid: String;
begin
  Result := Self.m_id;
end;

procedure TconfiguracaocategoriaporclassfinanExcluir.setid(const a_Value: String);
begin
  Self.m_id := a_Value;
end;

function TconfiguracaocategoriaporclassfinanExcluir.getgrupoempresarial: String;
begin
  Result := Self.m_grupoempresarial;
end;

procedure TconfiguracaocategoriaporclassfinanExcluir.setgrupoempresarial(const a_Value: String);
begin
  Self.m_grupoempresarial := a_Value;
end;

function TconfiguracaocategoriaporclassfinanExcluir.gettipocategoria: Integer;
begin
  Result := Self.m_tipocategoria;
end;

procedure TconfiguracaocategoriaporclassfinanExcluir.settipocategoria(const a_Value: Integer);
begin
  Self.m_tipocategoria := a_Value;
end;

function TconfiguracaocategoriaporclassfinanExcluir.getcategoriarubrica: Integer;
begin
  Result := Self.m_categoriarubrica;
end;

procedure TconfiguracaocategoriaporclassfinanExcluir.setcategoriarubrica(const a_Value: Integer);
begin
  Self.m_categoriarubrica := a_Value;
end;

destructor TconfiguracaocategoriaporclassfinanExcluir.Destroy;
begin

end;

function TconfiguracaocategoriaporclassfinanExcluir.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TconfiguracaocategoriaporclassfinanExcluir.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TconfiguracaocategoriaporclassfinanExcluir.getNameAPI(): String;
begin
  Result := 'configuracaocategoriaporclassfinanExcluir';
end;

function TconfiguracaocategoriaporclassfinanExcluir.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TconfiguracaocategoriaporclassfinanExcluir.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

	
end.
