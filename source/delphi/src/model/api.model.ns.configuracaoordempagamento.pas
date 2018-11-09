unit api.model.ns.configuracaoordempagamento;

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

type TconfiguracaoordempagamentoNovo = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_id: String;
    var m_grupoempresarial: String;
    var m_empresa: String;
    var m_estabelecimento: String;
    var m_tipoordempagamento: Integer;
    var m_fornecedor: String;
    var m_contacorrente: String;
    var m_diapagamento: Integer;
    var m_classificacaofinanceira: String;
    var m_CentroDeCusto: String;
    var m_Projeto: String;
    

    function getid(): String;
    function getgrupoempresarial(): String;
    function getempresa(): String;
    function getestabelecimento(): String;
    function gettipoordempagamento(): Integer;
    function getfornecedor(): String;
    function getcontacorrente(): String;
    function getdiapagamento(): Integer;
    function getclassificacaofinanceira(): String;
    function getCentroDeCusto(): String;
    function getProjeto(): String;
    

    procedure setid(const a_Value: String);
    procedure setgrupoempresarial(const a_Value: String);
    procedure setempresa(const a_Value: String);
    procedure setestabelecimento(const a_Value: String);
    procedure settipoordempagamento(const a_Value: Integer);
    procedure setfornecedor(const a_Value: String);
    procedure setcontacorrente(const a_Value: String);
    procedure setdiapagamento(const a_Value: Integer);
    procedure setclassificacaofinanceira(const a_Value: String);
    procedure setCentroDeCusto(const a_Value: String);
    procedure setProjeto(const a_Value: String);
    

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

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getempresa write setempresa;

    [NasajonSerializeAttribute('estabelecimento')]
    property estabelecimento: String read getestabelecimento write setestabelecimento;

    /// <summary>
/// Informe: 
///                             0  - Folha
///                             1  - AdiantamentoDeFolha
///                             2  - FolhaCorretiva
///                             3  - DecimoTerceiroSalario
///                             4  - AdiantamentoDeDecimoTerceiroSalario
///                             5  - ComplementoDeDecimoTerceiroSalario
///                             6  - Ferias
///                             7  - ComplementoDeFerias
///                             8  - Recisao
///                             9  - ReajusteSindical
///                             10 - PPLR
///                             11 - ValeTransporte
///                             12 - ValrRefeicao
///                             13 - ValeAlimentacao
///                             14 - PlanoDeSaude
///                             15 - PlanoOdontologico
///                             16 - GPSEmpresa
///                             17 - GPSContribuinteIndividual
///                             18 - GPSTrabalhadoresDomesticos
///                             19 - SEFIP
///                             20 - GRRF
///                             21 - DARFFuncionario
///                             22 - DARFEstabiario
///                             23 - DARFContribuinteIndividual
///                             24 - DARFPIS
///                             25 - GRCSSindical
///                             26 - GRCSConfederativa
///                             27 - GRCSAssistencial
///                             28 - GRCSAssociativa
///                             29 - GRCSPatronal
    /// </summary>
    [NasajonSerializeAttribute('tipoordempagamento')]
    property tipoordempagamento: Integer read gettipoordempagamento write settipoordempagamento;

    [NasajonSerializeAttribute('fornecedor')]
    property fornecedor: String read getfornecedor write setfornecedor;

    [NasajonSerializeAttribute('contacorrente')]
    property contacorrente: String read getcontacorrente write setcontacorrente;

    [NasajonSerializeAttribute('diapagamento')]
    property diapagamento: Integer read getdiapagamento write setdiapagamento;

    [NasajonSerializeAttribute('classificacaofinanceira')]
    property classificacaofinanceira: String read getclassificacaofinanceira write setclassificacaofinanceira;

    [NasajonSerializeAttribute('centrodecusto')]
    property centrodecusto: String read getCentroDeCusto write setCentroDeCusto;

    [NasajonSerializeAttribute('projeto')]
    property projeto: String read getProjeto write setProjeto;

    

end;

type TconfiguracaoordempagamentoAlterar = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_id: String;
    var m_grupoempresarial: String;
    var m_empresa: String;
    var m_estabelecimento: String;
    var m_tipoordempagamento: Integer;
    var m_fornecedor: String;
    var m_contacorrente: String;
    var m_diapagamento: Integer;
    var m_classificacaofinanceira: String;
    var m_CentroDeCusto: String;
    var m_Projeto: String;
    

    function getid(): String;
    function getgrupoempresarial(): String;
    function getempresa(): String;
    function getestabelecimento(): String;
    function gettipoordempagamento(): Integer;
    function getfornecedor(): String;
    function getcontacorrente(): String;
    function getdiapagamento(): Integer;
    function getclassificacaofinanceira(): String;
    function getCentroDeCusto(): String;
    function getProjeto(): String;
    

    procedure setid(const a_Value: String);
    procedure setgrupoempresarial(const a_Value: String);
    procedure setempresa(const a_Value: String);
    procedure setestabelecimento(const a_Value: String);
    procedure settipoordempagamento(const a_Value: Integer);
    procedure setfornecedor(const a_Value: String);
    procedure setcontacorrente(const a_Value: String);
    procedure setdiapagamento(const a_Value: Integer);
    procedure setclassificacaofinanceira(const a_Value: String);
    procedure setCentroDeCusto(const a_Value: String);
    procedure setProjeto(const a_Value: String);
    

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

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getempresa write setempresa;

    [NasajonSerializeAttribute('estabelecimento')]
    property estabelecimento: String read getestabelecimento write setestabelecimento;

    /// <summary>
/// Informe: 
///                             0  - Folha
///                             1  - AdiantamentoDeFolha
///                             2  - FolhaCorretiva
///                             3  - DecimoTerceiroSalario
///                             4  - AdiantamentoDeDecimoTerceiroSalario
///                             5  - ComplementoDeDecimoTerceiroSalario
///                             6  - Ferias
///                             7  - ComplementoDeFerias
///                             8  - Recisao
///                             9  - ReajusteSindical
///                             10 - PPLR
///                             11 - ValeTransporte
///                             12 - ValrRefeicao
///                             13 - ValeAlimentacao
///                             14 - PlanoDeSaude
///                             15 - PlanoOdontologico
///                             16 - GPSEmpresa
///                             17 - GPSContribuinteIndividual
///                             18 - GPSTrabalhadoresDomesticos
///                             19 - SEFIP
///                             20 - GRRF
///                             21 - DARFFuncionario
///                             22 - DARFEstabiario
///                             23 - DARFContribuinteIndividual
///                             24 - DARFPIS
///                             25 - GRCSSindical
///                             26 - GRCSConfederativa
///                             27 - GRCSAssistencial
///                             28 - GRCSAssociativa
///                             29 - GRCSPatronal
    /// </summary>
    [NasajonSerializeAttribute('tipoordempagamento')]
    property tipoordempagamento: Integer read gettipoordempagamento write settipoordempagamento;

    [NasajonSerializeAttribute('fornecedor')]
    property fornecedor: String read getfornecedor write setfornecedor;

    [NasajonSerializeAttribute('contacorrente')]
    property contacorrente: String read getcontacorrente write setcontacorrente;

    [NasajonSerializeAttribute('diapagamento')]
    property diapagamento: Integer read getdiapagamento write setdiapagamento;

    [NasajonSerializeAttribute('classificacaofinanceira')]
    property classificacaofinanceira: String read getclassificacaofinanceira write setclassificacaofinanceira;

    [NasajonSerializeAttribute('centrodecusto')]
    property centrodecusto: String read getCentroDeCusto write setCentroDeCusto;

    [NasajonSerializeAttribute('projeto')]
    property projeto: String read getProjeto write setProjeto;

    

end;

type TconfiguracaoordempagamentoExcluir = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_id: String;
    var m_grupoempresarial: String;
    var m_empresa: String;
    var m_estabelecimento: String;
    var m_tipoordempagamento: Integer;
    

    function getid(): String;
    function getgrupoempresarial(): String;
    function getempresa(): String;
    function getestabelecimento(): String;
    function gettipoordempagamento(): Integer;
    

    procedure setid(const a_Value: String);
    procedure setgrupoempresarial(const a_Value: String);
    procedure setempresa(const a_Value: String);
    procedure setestabelecimento(const a_Value: String);
    procedure settipoordempagamento(const a_Value: Integer);
    

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

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getempresa write setempresa;

    [NasajonSerializeAttribute('estabelecimento')]
    property estabelecimento: String read getestabelecimento write setestabelecimento;

    [NasajonSerializeAttribute('tipoordempagamento')]
    property tipoordempagamento: Integer read gettipoordempagamento write settipoordempagamento;

    

end;

	
implementation

  uses
      api.send;  

function TconfiguracaoordempagamentoNovo.getid: String;
begin
  Result := Self.m_id;
end;

procedure TconfiguracaoordempagamentoNovo.setid(const a_Value: String);
begin
  Self.m_id := a_Value;
end;

function TconfiguracaoordempagamentoNovo.getgrupoempresarial: String;
begin
  Result := Self.m_grupoempresarial;
end;

procedure TconfiguracaoordempagamentoNovo.setgrupoempresarial(const a_Value: String);
begin
  Self.m_grupoempresarial := a_Value;
end;

function TconfiguracaoordempagamentoNovo.getempresa: String;
begin
  Result := Self.m_empresa;
end;

procedure TconfiguracaoordempagamentoNovo.setempresa(const a_Value: String);
begin
  Self.m_empresa := a_Value;
end;

function TconfiguracaoordempagamentoNovo.getestabelecimento: String;
begin
  Result := Self.m_estabelecimento;
end;

procedure TconfiguracaoordempagamentoNovo.setestabelecimento(const a_Value: String);
begin
  Self.m_estabelecimento := a_Value;
end;

function TconfiguracaoordempagamentoNovo.gettipoordempagamento: Integer;
begin
  Result := Self.m_tipoordempagamento;
end;

procedure TconfiguracaoordempagamentoNovo.settipoordempagamento(const a_Value: Integer);
begin
  Self.m_tipoordempagamento := a_Value;
end;

function TconfiguracaoordempagamentoNovo.getfornecedor: String;
begin
  Result := Self.m_fornecedor;
end;

procedure TconfiguracaoordempagamentoNovo.setfornecedor(const a_Value: String);
begin
  Self.m_fornecedor := a_Value;
end;

function TconfiguracaoordempagamentoNovo.getcontacorrente: String;
begin
  Result := Self.m_contacorrente;
end;

procedure TconfiguracaoordempagamentoNovo.setcontacorrente(const a_Value: String);
begin
  Self.m_contacorrente := a_Value;
end;

function TconfiguracaoordempagamentoNovo.getdiapagamento: Integer;
begin
  Result := Self.m_diapagamento;
end;

procedure TconfiguracaoordempagamentoNovo.setdiapagamento(const a_Value: Integer);
begin
  Self.m_diapagamento := a_Value;
end;

function TconfiguracaoordempagamentoNovo.getclassificacaofinanceira: String;
begin
  Result := Self.m_classificacaofinanceira;
end;

procedure TconfiguracaoordempagamentoNovo.setclassificacaofinanceira(const a_Value: String);
begin
  Self.m_classificacaofinanceira := a_Value;
end;

function TconfiguracaoordempagamentoNovo.getCentroDeCusto: String;
begin
  Result := Self.m_CentroDeCusto;
end;

procedure TconfiguracaoordempagamentoNovo.setCentroDeCusto(const a_Value: String);
begin
  Self.m_CentroDeCusto := a_Value;
end;

function TconfiguracaoordempagamentoNovo.getProjeto: String;
begin
  Result := Self.m_Projeto;
end;

procedure TconfiguracaoordempagamentoNovo.setProjeto(const a_Value: String);
begin
  Self.m_Projeto := a_Value;
end;

destructor TconfiguracaoordempagamentoNovo.Destroy;
begin

end;

function TconfiguracaoordempagamentoNovo.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TconfiguracaoordempagamentoNovo.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TconfiguracaoordempagamentoNovo.getNameAPI(): String;
begin
  Result := 'configuracaoordempagamentoNovo';
end;

function TconfiguracaoordempagamentoNovo.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TconfiguracaoordempagamentoNovo.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TconfiguracaoordempagamentoAlterar.getid: String;
begin
  Result := Self.m_id;
end;

procedure TconfiguracaoordempagamentoAlterar.setid(const a_Value: String);
begin
  Self.m_id := a_Value;
end;

function TconfiguracaoordempagamentoAlterar.getgrupoempresarial: String;
begin
  Result := Self.m_grupoempresarial;
end;

procedure TconfiguracaoordempagamentoAlterar.setgrupoempresarial(const a_Value: String);
begin
  Self.m_grupoempresarial := a_Value;
end;

function TconfiguracaoordempagamentoAlterar.getempresa: String;
begin
  Result := Self.m_empresa;
end;

procedure TconfiguracaoordempagamentoAlterar.setempresa(const a_Value: String);
begin
  Self.m_empresa := a_Value;
end;

function TconfiguracaoordempagamentoAlterar.getestabelecimento: String;
begin
  Result := Self.m_estabelecimento;
end;

procedure TconfiguracaoordempagamentoAlterar.setestabelecimento(const a_Value: String);
begin
  Self.m_estabelecimento := a_Value;
end;

function TconfiguracaoordempagamentoAlterar.gettipoordempagamento: Integer;
begin
  Result := Self.m_tipoordempagamento;
end;

procedure TconfiguracaoordempagamentoAlterar.settipoordempagamento(const a_Value: Integer);
begin
  Self.m_tipoordempagamento := a_Value;
end;

function TconfiguracaoordempagamentoAlterar.getfornecedor: String;
begin
  Result := Self.m_fornecedor;
end;

procedure TconfiguracaoordempagamentoAlterar.setfornecedor(const a_Value: String);
begin
  Self.m_fornecedor := a_Value;
end;

function TconfiguracaoordempagamentoAlterar.getcontacorrente: String;
begin
  Result := Self.m_contacorrente;
end;

procedure TconfiguracaoordempagamentoAlterar.setcontacorrente(const a_Value: String);
begin
  Self.m_contacorrente := a_Value;
end;

function TconfiguracaoordempagamentoAlterar.getdiapagamento: Integer;
begin
  Result := Self.m_diapagamento;
end;

procedure TconfiguracaoordempagamentoAlterar.setdiapagamento(const a_Value: Integer);
begin
  Self.m_diapagamento := a_Value;
end;

function TconfiguracaoordempagamentoAlterar.getclassificacaofinanceira: String;
begin
  Result := Self.m_classificacaofinanceira;
end;

procedure TconfiguracaoordempagamentoAlterar.setclassificacaofinanceira(const a_Value: String);
begin
  Self.m_classificacaofinanceira := a_Value;
end;

function TconfiguracaoordempagamentoAlterar.getCentroDeCusto: String;
begin
  Result := Self.m_CentroDeCusto;
end;

procedure TconfiguracaoordempagamentoAlterar.setCentroDeCusto(const a_Value: String);
begin
  Self.m_CentroDeCusto := a_Value;
end;

function TconfiguracaoordempagamentoAlterar.getProjeto: String;
begin
  Result := Self.m_Projeto;
end;

procedure TconfiguracaoordempagamentoAlterar.setProjeto(const a_Value: String);
begin
  Self.m_Projeto := a_Value;
end;

destructor TconfiguracaoordempagamentoAlterar.Destroy;
begin

end;

function TconfiguracaoordempagamentoAlterar.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TconfiguracaoordempagamentoAlterar.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TconfiguracaoordempagamentoAlterar.getNameAPI(): String;
begin
  Result := 'configuracaoordempagamentoAlterar';
end;

function TconfiguracaoordempagamentoAlterar.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TconfiguracaoordempagamentoAlterar.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TconfiguracaoordempagamentoExcluir.getid: String;
begin
  Result := Self.m_id;
end;

procedure TconfiguracaoordempagamentoExcluir.setid(const a_Value: String);
begin
  Self.m_id := a_Value;
end;

function TconfiguracaoordempagamentoExcluir.getgrupoempresarial: String;
begin
  Result := Self.m_grupoempresarial;
end;

procedure TconfiguracaoordempagamentoExcluir.setgrupoempresarial(const a_Value: String);
begin
  Self.m_grupoempresarial := a_Value;
end;

function TconfiguracaoordempagamentoExcluir.getempresa: String;
begin
  Result := Self.m_empresa;
end;

procedure TconfiguracaoordempagamentoExcluir.setempresa(const a_Value: String);
begin
  Self.m_empresa := a_Value;
end;

function TconfiguracaoordempagamentoExcluir.getestabelecimento: String;
begin
  Result := Self.m_estabelecimento;
end;

procedure TconfiguracaoordempagamentoExcluir.setestabelecimento(const a_Value: String);
begin
  Self.m_estabelecimento := a_Value;
end;

function TconfiguracaoordempagamentoExcluir.gettipoordempagamento: Integer;
begin
  Result := Self.m_tipoordempagamento;
end;

procedure TconfiguracaoordempagamentoExcluir.settipoordempagamento(const a_Value: Integer);
begin
  Self.m_tipoordempagamento := a_Value;
end;

destructor TconfiguracaoordempagamentoExcluir.Destroy;
begin

end;

function TconfiguracaoordempagamentoExcluir.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TconfiguracaoordempagamentoExcluir.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TconfiguracaoordempagamentoExcluir.getNameAPI(): String;
begin
  Result := 'configuracaoordempagamentoExcluir';
end;

function TconfiguracaoordempagamentoExcluir.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TconfiguracaoordempagamentoExcluir.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

	
end.
