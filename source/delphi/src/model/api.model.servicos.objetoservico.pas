unit api.model.servicos.ObjetoServico;

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

type TObjetoServicoNovo = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_objetoservico: String;
    var m_tipo_id: String;
    var m_grupoempresarial_id: String;
    var m_produto_id: String;
    var m_Codigo: String;
    var m_numero_serie: String;
    var m_precocompra: Currency;
    var m_observacao: String;
    

    function getobjetoservico(): String;
    function gettipo_id(): String;
    function getgrupoempresarial_id(): String;
    function getproduto_id(): String;
    function getCodigo(): String;
    function getnumero_serie(): String;
    function getprecocompra(): Currency;
    function getobservacao(): String;
    

    procedure setobjetoservico(const a_Value: String);
    procedure settipo_id(const a_Value: String);
    procedure setgrupoempresarial_id(const a_Value: String);
    procedure setproduto_id(const a_Value: String);
    procedure setCodigo(const a_Value: String);
    procedure setnumero_serie(const a_Value: String);
    procedure setprecocompra(const a_Value: Currency);
    procedure setobservacao(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('objetoservico')]
    property objetoservico: String read getobjetoservico write setobjetoservico;

    [NasajonSerializeAttribute('tipo_id')]
    property tipo_id: String read gettipo_id write settipo_id;

    [NasajonSerializeAttribute('grupoempresarial_id')]
    property grupoempresarial_id: String read getgrupoempresarial_id write setgrupoempresarial_id;

    [NasajonSerializeAttribute('produto_id')]
    property produto_id: String read getproduto_id write setproduto_id;

    [NasajonSerializeAttribute('codigo')]
    property codigo: String read getCodigo write setCodigo;

    [NasajonSerializeAttribute('numero_serie')]
    property numero_serie: String read getnumero_serie write setnumero_serie;

    [NasajonSerializeAttribute('precocompra')]
    property precocompra: Currency read getprecocompra write setprecocompra;

    [NasajonSerializeAttribute('observacao')]
    property observacao: String read getobservacao write setobservacao;

    

end;

type TObjetoServicoAlterar = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_objetoservico: String;
    var m_tipo_id: String;
    var m_grupoempresarial_id: String;
    var m_produto_id: String;
    var m_Codigo: String;
    var m_numero_serie: String;
    var m_precocompra: Currency;
    var m_observacao: String;
    

    function getobjetoservico(): String;
    function gettipo_id(): String;
    function getgrupoempresarial_id(): String;
    function getproduto_id(): String;
    function getCodigo(): String;
    function getnumero_serie(): String;
    function getprecocompra(): Currency;
    function getobservacao(): String;
    

    procedure setobjetoservico(const a_Value: String);
    procedure settipo_id(const a_Value: String);
    procedure setgrupoempresarial_id(const a_Value: String);
    procedure setproduto_id(const a_Value: String);
    procedure setCodigo(const a_Value: String);
    procedure setnumero_serie(const a_Value: String);
    procedure setprecocompra(const a_Value: Currency);
    procedure setobservacao(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('objetoservico')]
    property objetoservico: String read getobjetoservico write setobjetoservico;

    [NasajonSerializeAttribute('tipo_id')]
    property tipo_id: String read gettipo_id write settipo_id;

    [NasajonSerializeAttribute('grupoempresarial_id')]
    property grupoempresarial_id: String read getgrupoempresarial_id write setgrupoempresarial_id;

    [NasajonSerializeAttribute('produto_id')]
    property produto_id: String read getproduto_id write setproduto_id;

    [NasajonSerializeAttribute('codigo')]
    property codigo: String read getCodigo write setCodigo;

    [NasajonSerializeAttribute('numero_serie')]
    property numero_serie: String read getnumero_serie write setnumero_serie;

    [NasajonSerializeAttribute('precocompra')]
    property precocompra: Currency read getprecocompra write setprecocompra;

    [NasajonSerializeAttribute('observacao')]
    property observacao: String read getobservacao write setobservacao;

    

end;

type TObjetoServicoExcluir = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_objetoservico: String;
    

    function getobjetoservico(): String;
    

    procedure setobjetoservico(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('objetoservico')]
    property objetoservico: String read getobjetoservico write setobjetoservico;

    

end;

	
implementation

  uses
      api.send;  

function TObjetoServicoNovo.getobjetoservico: String;
begin
  Result := Self.m_objetoservico;
end;

procedure TObjetoServicoNovo.setobjetoservico(const a_Value: String);
begin
  Self.m_objetoservico := a_Value;
end;

function TObjetoServicoNovo.gettipo_id: String;
begin
  Result := Self.m_tipo_id;
end;

procedure TObjetoServicoNovo.settipo_id(const a_Value: String);
begin
  Self.m_tipo_id := a_Value;
end;

function TObjetoServicoNovo.getgrupoempresarial_id: String;
begin
  Result := Self.m_grupoempresarial_id;
end;

procedure TObjetoServicoNovo.setgrupoempresarial_id(const a_Value: String);
begin
  Self.m_grupoempresarial_id := a_Value;
end;

function TObjetoServicoNovo.getproduto_id: String;
begin
  Result := Self.m_produto_id;
end;

procedure TObjetoServicoNovo.setproduto_id(const a_Value: String);
begin
  Self.m_produto_id := a_Value;
end;

function TObjetoServicoNovo.getCodigo: String;
begin
  Result := Self.m_Codigo;
end;

procedure TObjetoServicoNovo.setCodigo(const a_Value: String);
begin
  Self.m_Codigo := a_Value;
end;

function TObjetoServicoNovo.getnumero_serie: String;
begin
  Result := Self.m_numero_serie;
end;

procedure TObjetoServicoNovo.setnumero_serie(const a_Value: String);
begin
  Self.m_numero_serie := a_Value;
end;

function TObjetoServicoNovo.getprecocompra: Currency;
begin
  Result := Self.m_precocompra;
end;

procedure TObjetoServicoNovo.setprecocompra(const a_Value: Currency);
begin
  Self.m_precocompra := a_Value;
end;

function TObjetoServicoNovo.getobservacao: String;
begin
  Result := Self.m_observacao;
end;

procedure TObjetoServicoNovo.setobservacao(const a_Value: String);
begin
  Self.m_observacao := a_Value;
end;

destructor TObjetoServicoNovo.Destroy;
begin

end;

function TObjetoServicoNovo.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TObjetoServicoNovo.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TObjetoServicoNovo.getNameAPI(): String;
begin
  Result := 'ObjetoServicoNovo';
end;

function TObjetoServicoNovo.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TObjetoServicoNovo.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TObjetoServicoAlterar.getobjetoservico: String;
begin
  Result := Self.m_objetoservico;
end;

procedure TObjetoServicoAlterar.setobjetoservico(const a_Value: String);
begin
  Self.m_objetoservico := a_Value;
end;

function TObjetoServicoAlterar.gettipo_id: String;
begin
  Result := Self.m_tipo_id;
end;

procedure TObjetoServicoAlterar.settipo_id(const a_Value: String);
begin
  Self.m_tipo_id := a_Value;
end;

function TObjetoServicoAlterar.getgrupoempresarial_id: String;
begin
  Result := Self.m_grupoempresarial_id;
end;

procedure TObjetoServicoAlterar.setgrupoempresarial_id(const a_Value: String);
begin
  Self.m_grupoempresarial_id := a_Value;
end;

function TObjetoServicoAlterar.getproduto_id: String;
begin
  Result := Self.m_produto_id;
end;

procedure TObjetoServicoAlterar.setproduto_id(const a_Value: String);
begin
  Self.m_produto_id := a_Value;
end;

function TObjetoServicoAlterar.getCodigo: String;
begin
  Result := Self.m_Codigo;
end;

procedure TObjetoServicoAlterar.setCodigo(const a_Value: String);
begin
  Self.m_Codigo := a_Value;
end;

function TObjetoServicoAlterar.getnumero_serie: String;
begin
  Result := Self.m_numero_serie;
end;

procedure TObjetoServicoAlterar.setnumero_serie(const a_Value: String);
begin
  Self.m_numero_serie := a_Value;
end;

function TObjetoServicoAlterar.getprecocompra: Currency;
begin
  Result := Self.m_precocompra;
end;

procedure TObjetoServicoAlterar.setprecocompra(const a_Value: Currency);
begin
  Self.m_precocompra := a_Value;
end;

function TObjetoServicoAlterar.getobservacao: String;
begin
  Result := Self.m_observacao;
end;

procedure TObjetoServicoAlterar.setobservacao(const a_Value: String);
begin
  Self.m_observacao := a_Value;
end;

destructor TObjetoServicoAlterar.Destroy;
begin

end;

function TObjetoServicoAlterar.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TObjetoServicoAlterar.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TObjetoServicoAlterar.getNameAPI(): String;
begin
  Result := 'ObjetoServicoAlterar';
end;

function TObjetoServicoAlterar.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TObjetoServicoAlterar.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TObjetoServicoExcluir.getobjetoservico: String;
begin
  Result := Self.m_objetoservico;
end;

procedure TObjetoServicoExcluir.setobjetoservico(const a_Value: String);
begin
  Self.m_objetoservico := a_Value;
end;

destructor TObjetoServicoExcluir.Destroy;
begin

end;

function TObjetoServicoExcluir.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TObjetoServicoExcluir.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TObjetoServicoExcluir.getNameAPI(): String;
begin
  Result := 'ObjetoServicoExcluir';
end;

function TObjetoServicoExcluir.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TObjetoServicoExcluir.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

	
end.
