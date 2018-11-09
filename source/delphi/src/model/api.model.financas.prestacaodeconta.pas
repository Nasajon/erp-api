unit api.model.financas.PrestacaoDeConta;

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
	
  , api.model.financas.ItemPrestacaoDeConta
  , System.Generics.Collections
  , api.model.financas.ItemEmprestimoPrestacao
	

	;

type TPrestacaoDeContaNovo = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_ID: String;
    var m_Numero: String;
    var m_Data: TDate;
    var m_ID_ContaEmprestimo: String;
    var m_Situacao: Integer;
    var m_ID_GrupoEmpresarial: String;
    var m_ItensPrestacaoDeConta: TObjectList<TItemPrestacaoDeContaNovo>;
    var m_ItensEmprestimoPrestacao: TObjectList<TItemEmprestimoPrestacaoNovo>;
    var m_DocumentoRateado: String;
    var m_ValorEspecie: Currency;
    var m_contaespecie: String;
    var m_Empresa: String;
    var m_Estabelecimento: String;
    var m_Fornecedor: String;
    var m_ValorPerdoado: Currency;
    var m_DataLancamento: TDate;
    var m_Tipo: Integer;
    

    function getID(): String;
    function getNumero(): String;
    function getData(): TDate;
    function getID_ContaEmprestimo(): String;
    function getSituacao(): Integer;
    function getID_GrupoEmpresarial(): String;
    function getItensPrestacaoDeConta(): TObjectList<TItemPrestacaoDeContaNovo>;
    function getItensEmprestimoPrestacao(): TObjectList<TItemEmprestimoPrestacaoNovo>;
    function getDocumentoRateado(): String;
    function getValorEspecie(): Currency;
    function getcontaespecie(): String;
    function getEmpresa(): String;
    function getEstabelecimento(): String;
    function getFornecedor(): String;
    function getValorPerdoado(): Currency;
    function getDataLancamento(): TDate;
    function getTipo(): Integer;
    

    procedure setID(const a_Value: String);
    procedure setNumero(const a_Value: String);
    procedure setData(const a_Value: TDate);
    procedure setID_ContaEmprestimo(const a_Value: String);
    procedure setSituacao(const a_Value: Integer);
    procedure setID_GrupoEmpresarial(const a_Value: String);
    procedure setItensPrestacaoDeConta(const a_Value: TObjectList<TItemPrestacaoDeContaNovo>);
    procedure setItensEmprestimoPrestacao(const a_Value: TObjectList<TItemEmprestimoPrestacaoNovo>);
    procedure setDocumentoRateado(const a_Value: String);
    procedure setValorEspecie(const a_Value: Currency);
    procedure setcontaespecie(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setEstabelecimento(const a_Value: String);
    procedure setFornecedor(const a_Value: String);
    procedure setValorPerdoado(const a_Value: Currency);
    procedure setDataLancamento(const a_Value: TDate);
    procedure setTipo(const a_Value: Integer);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('id')]
    property id: String read getID write setID;

    [NasajonSerializeAttribute('numero')]
    property numero: String read getNumero write setNumero;

    [NasajonSerializeAttribute('data')]
    property data: TDate read getData write setData;

    [NasajonSerializeAttribute('id_contaemprestimo')]
    property id_contaemprestimo: String read getID_ContaEmprestimo write setID_ContaEmprestimo;

    [NasajonSerializeAttribute('situacao')]
    property situacao: Integer read getSituacao write setSituacao;

    [NasajonSerializeAttribute('id_grupoempresarial')]
    property id_grupoempresarial: String read getID_GrupoEmpresarial write setID_GrupoEmpresarial;

    [NasajonSerializeAttribute('itensprestacaodeconta')]
    property itensprestacaodeconta: TObjectList<TItemPrestacaoDeContaNovo> read getItensPrestacaoDeConta write setItensPrestacaoDeConta;

    [NasajonSerializeAttribute('itensemprestimoprestacao')]
    property itensemprestimoprestacao: TObjectList<TItemEmprestimoPrestacaoNovo> read getItensEmprestimoPrestacao write setItensEmprestimoPrestacao;

    [NasajonSerializeAttribute('documentorateado')]
    property documentorateado: String read getDocumentoRateado write setDocumentoRateado;

    [NasajonSerializeAttribute('valorespecie')]
    property valorespecie: Currency read getValorEspecie write setValorEspecie;

    [NasajonSerializeAttribute('contaespecie')]
    property contaespecie: String read getcontaespecie write setcontaespecie;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('estabelecimento')]
    property estabelecimento: String read getEstabelecimento write setEstabelecimento;

    [NasajonSerializeAttribute('fornecedor')]
    property fornecedor: String read getFornecedor write setFornecedor;

    [NasajonSerializeAttribute('valorperdoado')]
    property valorperdoado: Currency read getValorPerdoado write setValorPerdoado;

    [NasajonSerializeAttribute('datalancamento')]
    property datalancamento: TDate read getDataLancamento write setDataLancamento;

    [NasajonSerializeAttribute('tipo')]
    property tipo: Integer read getTipo write setTipo;

    

end;

type TPrestacaoDeContaAlterar = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_ID: String;
    var m_Numero: String;
    var m_Data: TDate;
    var m_ID_ContaEmprestimo: String;
    var m_Situacao: Integer;
    var m_ID_GrupoEmpresarial: String;
    var m_ItensPrestacaoDeConta: TObjectList<TItemPrestacaoDeContaNovo>;
    var m_ItensEmprestimoPrestacao: TObjectList<TItemEmprestimoPrestacaoNovo>;
    var m_DocumentoRateado: String;
    var m_ValorEspecie: Currency;
    var m_contaespecie: String;
    var m_Empresa: String;
    var m_Estabelecimento: String;
    var m_Fornecedor: String;
    var m_ValorPerdoado: Currency;
    var m_DataLancamento: TDate;
    var m_Tipo: Integer;
    

    function getID(): String;
    function getNumero(): String;
    function getData(): TDate;
    function getID_ContaEmprestimo(): String;
    function getSituacao(): Integer;
    function getID_GrupoEmpresarial(): String;
    function getItensPrestacaoDeConta(): TObjectList<TItemPrestacaoDeContaNovo>;
    function getItensEmprestimoPrestacao(): TObjectList<TItemEmprestimoPrestacaoNovo>;
    function getDocumentoRateado(): String;
    function getValorEspecie(): Currency;
    function getcontaespecie(): String;
    function getEmpresa(): String;
    function getEstabelecimento(): String;
    function getFornecedor(): String;
    function getValorPerdoado(): Currency;
    function getDataLancamento(): TDate;
    function getTipo(): Integer;
    

    procedure setID(const a_Value: String);
    procedure setNumero(const a_Value: String);
    procedure setData(const a_Value: TDate);
    procedure setID_ContaEmprestimo(const a_Value: String);
    procedure setSituacao(const a_Value: Integer);
    procedure setID_GrupoEmpresarial(const a_Value: String);
    procedure setItensPrestacaoDeConta(const a_Value: TObjectList<TItemPrestacaoDeContaNovo>);
    procedure setItensEmprestimoPrestacao(const a_Value: TObjectList<TItemEmprestimoPrestacaoNovo>);
    procedure setDocumentoRateado(const a_Value: String);
    procedure setValorEspecie(const a_Value: Currency);
    procedure setcontaespecie(const a_Value: String);
    procedure setEmpresa(const a_Value: String);
    procedure setEstabelecimento(const a_Value: String);
    procedure setFornecedor(const a_Value: String);
    procedure setValorPerdoado(const a_Value: Currency);
    procedure setDataLancamento(const a_Value: TDate);
    procedure setTipo(const a_Value: Integer);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('id')]
    property id: String read getID write setID;

    [NasajonSerializeAttribute('numero')]
    property numero: String read getNumero write setNumero;

    [NasajonSerializeAttribute('data')]
    property data: TDate read getData write setData;

    [NasajonSerializeAttribute('id_contaemprestimo')]
    property id_contaemprestimo: String read getID_ContaEmprestimo write setID_ContaEmprestimo;

    [NasajonSerializeAttribute('situacao')]
    property situacao: Integer read getSituacao write setSituacao;

    [NasajonSerializeAttribute('id_grupoempresarial')]
    property id_grupoempresarial: String read getID_GrupoEmpresarial write setID_GrupoEmpresarial;

    [NasajonSerializeAttribute('itensprestacaodeconta')]
    property itensprestacaodeconta: TObjectList<TItemPrestacaoDeContaNovo> read getItensPrestacaoDeConta write setItensPrestacaoDeConta;

    [NasajonSerializeAttribute('itensemprestimoprestacao')]
    property itensemprestimoprestacao: TObjectList<TItemEmprestimoPrestacaoNovo> read getItensEmprestimoPrestacao write setItensEmprestimoPrestacao;

    [NasajonSerializeAttribute('documentorateado')]
    property documentorateado: String read getDocumentoRateado write setDocumentoRateado;

    [NasajonSerializeAttribute('valorespecie')]
    property valorespecie: Currency read getValorEspecie write setValorEspecie;

    [NasajonSerializeAttribute('contaespecie')]
    property contaespecie: String read getcontaespecie write setcontaespecie;

    [NasajonSerializeAttribute('empresa')]
    property empresa: String read getEmpresa write setEmpresa;

    [NasajonSerializeAttribute('estabelecimento')]
    property estabelecimento: String read getEstabelecimento write setEstabelecimento;

    [NasajonSerializeAttribute('fornecedor')]
    property fornecedor: String read getFornecedor write setFornecedor;

    [NasajonSerializeAttribute('valorperdoado')]
    property valorperdoado: Currency read getValorPerdoado write setValorPerdoado;

    [NasajonSerializeAttribute('datalancamento')]
    property datalancamento: TDate read getDataLancamento write setDataLancamento;

    [NasajonSerializeAttribute('tipo')]
    property tipo: Integer read getTipo write setTipo;

    

end;

type TPrestacaoDeContaExcluir = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_ID: String;
    

    function getID(): String;
    

    procedure setID(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('id')]
    property id: String read getID write setID;

    

end;

	
implementation

  uses
      api.send;  

function TPrestacaoDeContaNovo.getID: String;
begin
  Result := Self.m_ID;
end;

procedure TPrestacaoDeContaNovo.setID(const a_Value: String);
begin
  Self.m_ID := a_Value;
end;

function TPrestacaoDeContaNovo.getNumero: String;
begin
  Result := Self.m_Numero;
end;

procedure TPrestacaoDeContaNovo.setNumero(const a_Value: String);
begin
  Self.m_Numero := a_Value;
end;

function TPrestacaoDeContaNovo.getData: TDate;
begin
  Result := Self.m_Data;
end;

procedure TPrestacaoDeContaNovo.setData(const a_Value: TDate);
begin
  Self.m_Data := a_Value;
end;

function TPrestacaoDeContaNovo.getID_ContaEmprestimo: String;
begin
  Result := Self.m_ID_ContaEmprestimo;
end;

procedure TPrestacaoDeContaNovo.setID_ContaEmprestimo(const a_Value: String);
begin
  Self.m_ID_ContaEmprestimo := a_Value;
end;

function TPrestacaoDeContaNovo.getSituacao: Integer;
begin
  Result := Self.m_Situacao;
end;

procedure TPrestacaoDeContaNovo.setSituacao(const a_Value: Integer);
begin
  Self.m_Situacao := a_Value;
end;

function TPrestacaoDeContaNovo.getID_GrupoEmpresarial: String;
begin
  Result := Self.m_ID_GrupoEmpresarial;
end;

procedure TPrestacaoDeContaNovo.setID_GrupoEmpresarial(const a_Value: String);
begin
  Self.m_ID_GrupoEmpresarial := a_Value;
end;

function TPrestacaoDeContaNovo.getItensPrestacaoDeConta: TObjectList<TItemPrestacaoDeContaNovo>;
begin
  if not Assigned(Self.m_ItensPrestacaoDeConta)
    then Self.m_ItensPrestacaoDeConta := TObjectList<TItemPrestacaoDeContaNovo>.Create();
  Result := Self.m_ItensPrestacaoDeConta;
end;

procedure TPrestacaoDeContaNovo.setItensPrestacaoDeConta(const a_Value: TObjectList<TItemPrestacaoDeContaNovo>);
begin
  Self.m_ItensPrestacaoDeConta := a_Value;
end;

function TPrestacaoDeContaNovo.getItensEmprestimoPrestacao: TObjectList<TItemEmprestimoPrestacaoNovo>;
begin
  if not Assigned(Self.m_ItensEmprestimoPrestacao)
    then Self.m_ItensEmprestimoPrestacao := TObjectList<TItemEmprestimoPrestacaoNovo>.Create();
  Result := Self.m_ItensEmprestimoPrestacao;
end;

procedure TPrestacaoDeContaNovo.setItensEmprestimoPrestacao(const a_Value: TObjectList<TItemEmprestimoPrestacaoNovo>);
begin
  Self.m_ItensEmprestimoPrestacao := a_Value;
end;

function TPrestacaoDeContaNovo.getDocumentoRateado: String;
begin
  Result := Self.m_DocumentoRateado;
end;

procedure TPrestacaoDeContaNovo.setDocumentoRateado(const a_Value: String);
begin
  Self.m_DocumentoRateado := a_Value;
end;

function TPrestacaoDeContaNovo.getValorEspecie: Currency;
begin
  Result := Self.m_ValorEspecie;
end;

procedure TPrestacaoDeContaNovo.setValorEspecie(const a_Value: Currency);
begin
  Self.m_ValorEspecie := a_Value;
end;

function TPrestacaoDeContaNovo.getcontaespecie: String;
begin
  Result := Self.m_contaespecie;
end;

procedure TPrestacaoDeContaNovo.setcontaespecie(const a_Value: String);
begin
  Self.m_contaespecie := a_Value;
end;

function TPrestacaoDeContaNovo.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TPrestacaoDeContaNovo.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TPrestacaoDeContaNovo.getEstabelecimento: String;
begin
  Result := Self.m_Estabelecimento;
end;

procedure TPrestacaoDeContaNovo.setEstabelecimento(const a_Value: String);
begin
  Self.m_Estabelecimento := a_Value;
end;

function TPrestacaoDeContaNovo.getFornecedor: String;
begin
  Result := Self.m_Fornecedor;
end;

procedure TPrestacaoDeContaNovo.setFornecedor(const a_Value: String);
begin
  Self.m_Fornecedor := a_Value;
end;

function TPrestacaoDeContaNovo.getValorPerdoado: Currency;
begin
  Result := Self.m_ValorPerdoado;
end;

procedure TPrestacaoDeContaNovo.setValorPerdoado(const a_Value: Currency);
begin
  Self.m_ValorPerdoado := a_Value;
end;

function TPrestacaoDeContaNovo.getDataLancamento: TDate;
begin
  Result := Self.m_DataLancamento;
end;

procedure TPrestacaoDeContaNovo.setDataLancamento(const a_Value: TDate);
begin
  Self.m_DataLancamento := a_Value;
end;

function TPrestacaoDeContaNovo.getTipo: Integer;
begin
  Result := Self.m_Tipo;
end;

procedure TPrestacaoDeContaNovo.setTipo(const a_Value: Integer);
begin
  Self.m_Tipo := a_Value;
end;

destructor TPrestacaoDeContaNovo.Destroy;
begin
  Self.ItensPrestacaoDeConta.Free();  Self.ItensEmprestimoPrestacao.Free();
end;

function TPrestacaoDeContaNovo.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TPrestacaoDeContaNovo.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TPrestacaoDeContaNovo.getNameAPI(): String;
begin
  Result := 'PrestacaoDeContaNovo';
end;

function TPrestacaoDeContaNovo.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TPrestacaoDeContaNovo.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TPrestacaoDeContaAlterar.getID: String;
begin
  Result := Self.m_ID;
end;

procedure TPrestacaoDeContaAlterar.setID(const a_Value: String);
begin
  Self.m_ID := a_Value;
end;

function TPrestacaoDeContaAlterar.getNumero: String;
begin
  Result := Self.m_Numero;
end;

procedure TPrestacaoDeContaAlterar.setNumero(const a_Value: String);
begin
  Self.m_Numero := a_Value;
end;

function TPrestacaoDeContaAlterar.getData: TDate;
begin
  Result := Self.m_Data;
end;

procedure TPrestacaoDeContaAlterar.setData(const a_Value: TDate);
begin
  Self.m_Data := a_Value;
end;

function TPrestacaoDeContaAlterar.getID_ContaEmprestimo: String;
begin
  Result := Self.m_ID_ContaEmprestimo;
end;

procedure TPrestacaoDeContaAlterar.setID_ContaEmprestimo(const a_Value: String);
begin
  Self.m_ID_ContaEmprestimo := a_Value;
end;

function TPrestacaoDeContaAlterar.getSituacao: Integer;
begin
  Result := Self.m_Situacao;
end;

procedure TPrestacaoDeContaAlterar.setSituacao(const a_Value: Integer);
begin
  Self.m_Situacao := a_Value;
end;

function TPrestacaoDeContaAlterar.getID_GrupoEmpresarial: String;
begin
  Result := Self.m_ID_GrupoEmpresarial;
end;

procedure TPrestacaoDeContaAlterar.setID_GrupoEmpresarial(const a_Value: String);
begin
  Self.m_ID_GrupoEmpresarial := a_Value;
end;

function TPrestacaoDeContaAlterar.getItensPrestacaoDeConta: TObjectList<TItemPrestacaoDeContaNovo>;
begin
  if not Assigned(Self.m_ItensPrestacaoDeConta)
    then Self.m_ItensPrestacaoDeConta := TObjectList<TItemPrestacaoDeContaNovo>.Create();
  Result := Self.m_ItensPrestacaoDeConta;
end;

procedure TPrestacaoDeContaAlterar.setItensPrestacaoDeConta(const a_Value: TObjectList<TItemPrestacaoDeContaNovo>);
begin
  Self.m_ItensPrestacaoDeConta := a_Value;
end;

function TPrestacaoDeContaAlterar.getItensEmprestimoPrestacao: TObjectList<TItemEmprestimoPrestacaoNovo>;
begin
  if not Assigned(Self.m_ItensEmprestimoPrestacao)
    then Self.m_ItensEmprestimoPrestacao := TObjectList<TItemEmprestimoPrestacaoNovo>.Create();
  Result := Self.m_ItensEmprestimoPrestacao;
end;

procedure TPrestacaoDeContaAlterar.setItensEmprestimoPrestacao(const a_Value: TObjectList<TItemEmprestimoPrestacaoNovo>);
begin
  Self.m_ItensEmprestimoPrestacao := a_Value;
end;

function TPrestacaoDeContaAlterar.getDocumentoRateado: String;
begin
  Result := Self.m_DocumentoRateado;
end;

procedure TPrestacaoDeContaAlterar.setDocumentoRateado(const a_Value: String);
begin
  Self.m_DocumentoRateado := a_Value;
end;

function TPrestacaoDeContaAlterar.getValorEspecie: Currency;
begin
  Result := Self.m_ValorEspecie;
end;

procedure TPrestacaoDeContaAlterar.setValorEspecie(const a_Value: Currency);
begin
  Self.m_ValorEspecie := a_Value;
end;

function TPrestacaoDeContaAlterar.getcontaespecie: String;
begin
  Result := Self.m_contaespecie;
end;

procedure TPrestacaoDeContaAlterar.setcontaespecie(const a_Value: String);
begin
  Self.m_contaespecie := a_Value;
end;

function TPrestacaoDeContaAlterar.getEmpresa: String;
begin
  Result := Self.m_Empresa;
end;

procedure TPrestacaoDeContaAlterar.setEmpresa(const a_Value: String);
begin
  Self.m_Empresa := a_Value;
end;

function TPrestacaoDeContaAlterar.getEstabelecimento: String;
begin
  Result := Self.m_Estabelecimento;
end;

procedure TPrestacaoDeContaAlterar.setEstabelecimento(const a_Value: String);
begin
  Self.m_Estabelecimento := a_Value;
end;

function TPrestacaoDeContaAlterar.getFornecedor: String;
begin
  Result := Self.m_Fornecedor;
end;

procedure TPrestacaoDeContaAlterar.setFornecedor(const a_Value: String);
begin
  Self.m_Fornecedor := a_Value;
end;

function TPrestacaoDeContaAlterar.getValorPerdoado: Currency;
begin
  Result := Self.m_ValorPerdoado;
end;

procedure TPrestacaoDeContaAlterar.setValorPerdoado(const a_Value: Currency);
begin
  Self.m_ValorPerdoado := a_Value;
end;

function TPrestacaoDeContaAlterar.getDataLancamento: TDate;
begin
  Result := Self.m_DataLancamento;
end;

procedure TPrestacaoDeContaAlterar.setDataLancamento(const a_Value: TDate);
begin
  Self.m_DataLancamento := a_Value;
end;

function TPrestacaoDeContaAlterar.getTipo: Integer;
begin
  Result := Self.m_Tipo;
end;

procedure TPrestacaoDeContaAlterar.setTipo(const a_Value: Integer);
begin
  Self.m_Tipo := a_Value;
end;

destructor TPrestacaoDeContaAlterar.Destroy;
begin
  Self.ItensPrestacaoDeConta.Free();  Self.ItensEmprestimoPrestacao.Free();
end;

function TPrestacaoDeContaAlterar.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TPrestacaoDeContaAlterar.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TPrestacaoDeContaAlterar.getNameAPI(): String;
begin
  Result := 'PrestacaoDeContaAlterar';
end;

function TPrestacaoDeContaAlterar.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TPrestacaoDeContaAlterar.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TPrestacaoDeContaExcluir.getID: String;
begin
  Result := Self.m_ID;
end;

procedure TPrestacaoDeContaExcluir.setID(const a_Value: String);
begin
  Self.m_ID := a_Value;
end;

destructor TPrestacaoDeContaExcluir.Destroy;
begin

end;

function TPrestacaoDeContaExcluir.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TPrestacaoDeContaExcluir.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TPrestacaoDeContaExcluir.getNameAPI(): String;
begin
  Result := 'PrestacaoDeContaExcluir';
end;

function TPrestacaoDeContaExcluir.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TPrestacaoDeContaExcluir.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

	
end.
