unit api.model.financas.RenegociacaoTitulos;

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
	
  , api.model.financas.TituloRenegociado
  , System.Generics.Collections
  , api.model.financas.FormaPagamentoRenegociacaoTitulos
  , api.model.financas.ParcelaFormaPagamentoRenegociacaoTitulos
	

	;

type TRenegociacaoTitulosNovo = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Id: String;
    var m_Estabelecimento: String;
    var m_Pessoa: String;
    var m_DataRenegociacao: TDate;
    var m_Numero: String;
    var m_Usuario: String;
    var m_Tipo: Integer;
    var m_TitulosRenegociados: TObjectList<TTituloRenegociado>;
    var m_FormasPagamentos: TObjectList<TFormaPagamentoRenegociacaoTitulosNovo>;
    var m_Parcelas: TObjectList<TParcelaFormaPagamentoRenegociacaoTitulosNovo>;
    var m_QtdTitulosRenegociados: Integer;
    var m_ValorTitulosRenegociados: Currency;
    var m_AcaoImpostos: Integer;
    var m_Desconto: Currency;
    var m_Acrescimo: Currency;
    var m_Observacao: String;
    

    function getId(): String;
    function getEstabelecimento(): String;
    function getPessoa(): String;
    function getDataRenegociacao(): TDate;
    function getNumero(): String;
    function getUsuario(): String;
    function getTipo(): Integer;
    function getTitulosRenegociados(): TObjectList<TTituloRenegociado>;
    function getFormasPagamentos(): TObjectList<TFormaPagamentoRenegociacaoTitulosNovo>;
    function getParcelas(): TObjectList<TParcelaFormaPagamentoRenegociacaoTitulosNovo>;
    function getQtdTitulosRenegociados(): Integer;
    function getValorTitulosRenegociados(): Currency;
    function getAcaoImpostos(): Integer;
    function getDesconto(): Currency;
    function getAcrescimo(): Currency;
    function getObservacao(): String;


    procedure setId(const a_Value: String);
    procedure setEstabelecimento(const a_Value: String);
    procedure setPessoa(const a_Value: String);
    procedure setDataRenegociacao(const a_Value: TDate);
    procedure setNumero(const a_Value: String);
    procedure setUsuario(const a_Value: String);
    procedure setTipo(const a_Value: Integer);
    procedure setTitulosRenegociados(const a_Value: TObjectList<TTituloRenegociado>);
    procedure setFormasPagamentos(const a_Value: TObjectList<TFormaPagamentoRenegociacaoTitulosNovo>);
    procedure setParcelas(const a_Value: TObjectList<TParcelaFormaPagamentoRenegociacaoTitulosNovo>);
    procedure setQtdTitulosRenegociados(const a_Value: Integer);
    procedure setValorTitulosRenegociados(const a_Value: Currency);
    procedure setAcaoImpostos(const a_Value: Integer);
    procedure setDesconto(const a_Value: Currency);
    procedure setAcrescimo(const a_Value: Currency);
    procedure setObservacao(const a_Value: String);

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('id')]
    property id: String read getId write setId;

    [NasajonSerializeAttribute('estabelecimento')]
    property estabelecimento: String read getEstabelecimento write setEstabelecimento;

    [NasajonSerializeAttribute('pessoa')]
    property pessoa: String read getPessoa write setPessoa;

    [NasajonSerializeAttribute('datarenegociacao')]
    property datarenegociacao: TDate read getDataRenegociacao write setDataRenegociacao;

    [NasajonSerializeAttribute('numero')]
    property numero: String read getNumero write setNumero;

    [NasajonSerializeAttribute('usuario')]
    property usuario: String read getUsuario write setUsuario;

    [NasajonSerializeAttribute('tipo')]
    property tipo: Integer read getTipo write setTipo;

    [NasajonSerializeAttribute('titulosrenegociados')]
    property titulosrenegociados: TObjectList<TTituloRenegociado> read getTitulosRenegociados write setTitulosRenegociados;

    [NasajonSerializeAttribute('formaspagamentos')]
    property formaspagamentos: TObjectList<TFormaPagamentoRenegociacaoTitulosNovo> read getFormasPagamentos write setFormasPagamentos;

    [NasajonSerializeAttribute('parcelas')]
    property parcelas: TObjectList<TParcelaFormaPagamentoRenegociacaoTitulosNovo> read getParcelas write setParcelas;

    [NasajonSerializeAttribute('qtdtitulosrenegociados')]
    property qtdtitulosrenegociados: Integer read getQtdTitulosRenegociados write setQtdTitulosRenegociados;

    [NasajonSerializeAttribute('valortitulosrenegociados')]
    property valortitulosrenegociados: Currency read getValorTitulosRenegociados write setValorTitulosRenegociados;

    [NasajonSerializeAttribute('acaoimpostos')]
    property acaoimpostos: Integer read getAcaoImpostos write setAcaoImpostos;

    [NasajonSerializeAttribute('desconto')]
    property desconto: Currency read getDesconto write setDesconto;

    [NasajonSerializeAttribute('acrescimo')]
    property acrescimo: Currency read getAcrescimo write setAcrescimo;

    [NasajonSerializeAttribute('observacao')]
    property observacao: String read getObservacao write setObservacao;

end;

type TRenegociacaoTitulosAlterar = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Id: String;
    var m_Estabelecimento: String;
    var m_Pessoa: String;
    var m_DataRenegociacao: TDate;
    var m_Numero: String;
    var m_Usuario: String;
    var m_Tipo: Integer;
    var m_TitulosRenegociados: TObjectList<TTituloRenegociado>;
    var m_FormasPagamentos: TObjectList<TFormaPagamentoRenegociacaoTitulosNovo>;
    var m_Parcelas: TObjectList<TParcelaFormaPagamentoRenegociacaoTitulosNovo>;
    var m_QtdTitulosRenegociados: Integer;
    var m_ValorTitulosRenegociados: Currency;
    var m_AcaoImpostos: Integer;
    var m_Desconto: Currency;
    var m_Acrescimo: Currency;
    var m_Observacao: String;

    function getId(): String;
    function getEstabelecimento(): String;
    function getPessoa(): String;
    function getDataRenegociacao(): TDate;
    function getNumero(): String;
    function getUsuario(): String;
    function getTipo(): Integer;
    function getTitulosRenegociados(): TObjectList<TTituloRenegociado>;
    function getFormasPagamentos(): TObjectList<TFormaPagamentoRenegociacaoTitulosNovo>;
    function getParcelas(): TObjectList<TParcelaFormaPagamentoRenegociacaoTitulosNovo>;
    function getQtdTitulosRenegociados(): Integer;
    function getValorTitulosRenegociados(): Currency;
    function getAcaoImpostos(): Integer;
    function getDesconto(): Currency;
    function getAcrescimo(): Currency;
    function getObservacao(): String;

    procedure setId(const a_Value: String);
    procedure setEstabelecimento(const a_Value: String);
    procedure setPessoa(const a_Value: String);
    procedure setDataRenegociacao(const a_Value: TDate);
    procedure setNumero(const a_Value: String);
    procedure setUsuario(const a_Value: String);
    procedure setTipo(const a_Value: Integer);
    procedure setTitulosRenegociados(const a_Value: TObjectList<TTituloRenegociado>);
    procedure setFormasPagamentos(const a_Value: TObjectList<TFormaPagamentoRenegociacaoTitulosNovo>);
    procedure setParcelas(const a_Value: TObjectList<TParcelaFormaPagamentoRenegociacaoTitulosNovo>);
    procedure setQtdTitulosRenegociados(const a_Value: Integer);
    procedure setValorTitulosRenegociados(const a_Value: Currency);
    procedure setAcaoImpostos(const a_Value: Integer);
    procedure setDesconto(const a_Value: Currency);
    procedure setAcrescimo(const a_Value: Currency);
    procedure setObservacao(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('id')]
    property id: String read getId write setId;

    [NasajonSerializeAttribute('estabelecimento')]
    property estabelecimento: String read getEstabelecimento write setEstabelecimento;

    [NasajonSerializeAttribute('pessoa')]
    property pessoa: String read getPessoa write setPessoa;

    [NasajonSerializeAttribute('datarenegociacao')]
    property datarenegociacao: TDate read getDataRenegociacao write setDataRenegociacao;

    [NasajonSerializeAttribute('numero')]
    property numero: String read getNumero write setNumero;

    [NasajonSerializeAttribute('usuario')]
    property usuario: String read getUsuario write setUsuario;

    [NasajonSerializeAttribute('tipo')]
    property tipo: Integer read getTipo write setTipo;

    [NasajonSerializeAttribute('titulosrenegociados')]
    property titulosrenegociados: TObjectList<TTituloRenegociado> read getTitulosRenegociados write setTitulosRenegociados;

    [NasajonSerializeAttribute('formaspagamentos')]
    property formaspagamentos: TObjectList<TFormaPagamentoRenegociacaoTitulosNovo> read getFormasPagamentos write setFormasPagamentos;

    [NasajonSerializeAttribute('parcelas')]
    property parcelas: TObjectList<TParcelaFormaPagamentoRenegociacaoTitulosNovo> read getParcelas write setParcelas;

    [NasajonSerializeAttribute('qtdtitulosrenegociados')]
    property qtdtitulosrenegociados: Integer read getQtdTitulosRenegociados write setQtdTitulosRenegociados;

    [NasajonSerializeAttribute('valortitulosrenegociados')]
    property valortitulosrenegociados: Currency read getValorTitulosRenegociados write setValorTitulosRenegociados;

    [NasajonSerializeAttribute('acaoimpostos')]
    property acaoimpostos: Integer read getAcaoImpostos write setAcaoImpostos;

    [NasajonSerializeAttribute('desconto')]
    property desconto: Currency read getDesconto write setDesconto;

    [NasajonSerializeAttribute('acrescimo')]
    property acrescimo: Currency read getAcrescimo write setAcrescimo;

    [NasajonSerializeAttribute('observacao')]
    property observacao: String read getObservacao write setObservacao;

end;

type TRenegociacaoTitulosExcluir = class(TInterfacedObject, IConteudoMensagemBroker, IConteudoMensagemBroker_API)

  strict private

    var m_Id: String;
    

    function getId(): String;
    

    procedure setId(const a_Value: String);
    

  public

    destructor Destroy(); override;

    function getType(): String;

    function getBody(): String;

    function getNameAPI(): String;

    function getJSON(): TJSONObject;

    function execute(const a_Connection: TUniConnection): TRecibo;
    

    [NasajonSerializeAttribute('id')]
    property id: String read getId write setId;

    

end;

	
implementation

  uses
      api.send;  

function TRenegociacaoTitulosNovo.getId: String;
begin
  Result := Self.m_Id;
end;

procedure TRenegociacaoTitulosNovo.setId(const a_Value: String);
begin
  Self.m_Id := a_Value;
end;

function TRenegociacaoTitulosNovo.getEstabelecimento: String;
begin
  Result := Self.m_Estabelecimento;
end;

procedure TRenegociacaoTitulosNovo.setEstabelecimento(const a_Value: String);
begin
  Self.m_Estabelecimento := a_Value;
end;

function TRenegociacaoTitulosNovo.getPessoa: String;
begin
  Result := Self.m_Pessoa;
end;

procedure TRenegociacaoTitulosNovo.setPessoa(const a_Value: String);
begin
  Self.m_Pessoa := a_Value;
end;

function TRenegociacaoTitulosNovo.getDataRenegociacao: TDate;
begin
  Result := Self.m_DataRenegociacao;
end;

procedure TRenegociacaoTitulosNovo.setDataRenegociacao(const a_Value: TDate);
begin
  Self.m_DataRenegociacao := a_Value;
end;

function TRenegociacaoTitulosNovo.getNumero: String;
begin
  Result := Self.m_Numero;
end;

function TRenegociacaoTitulosNovo.getObservacao: String;
begin
  Result := Self.m_Observacao;
end;

procedure TRenegociacaoTitulosNovo.setNumero(const a_Value: String);
begin
  Self.m_Numero := a_Value;
end;

procedure TRenegociacaoTitulosNovo.setObservacao(const a_Value: String);
begin
  Self.m_Observacao := a_Value;
end;

function TRenegociacaoTitulosNovo.getUsuario: String;
begin
  Result := Self.m_Usuario;
end;

procedure TRenegociacaoTitulosNovo.setUsuario(const a_Value: String);
begin
  Self.m_Usuario := a_Value;
end;

function TRenegociacaoTitulosNovo.getTipo: Integer;
begin
  Result := Self.m_Tipo;
end;

procedure TRenegociacaoTitulosNovo.setTipo(const a_Value: Integer);
begin
  Self.m_Tipo := a_Value;
end;

function TRenegociacaoTitulosNovo.getTitulosRenegociados: TObjectList<TTituloRenegociado>;
begin
  if not Assigned(Self.m_TitulosRenegociados)
    then Self.m_TitulosRenegociados := TObjectList<TTituloRenegociado>.Create();
  Result := Self.m_TitulosRenegociados;
end;

procedure TRenegociacaoTitulosNovo.setTitulosRenegociados(const a_Value: TObjectList<TTituloRenegociado>);
begin
  Self.m_TitulosRenegociados := a_Value;
end;

function TRenegociacaoTitulosNovo.getFormasPagamentos: TObjectList<TFormaPagamentoRenegociacaoTitulosNovo>;
begin
  if not Assigned(Self.m_FormasPagamentos)
    then Self.m_FormasPagamentos := TObjectList<TFormaPagamentoRenegociacaoTitulosNovo>.Create();
  Result := Self.m_FormasPagamentos;
end;

procedure TRenegociacaoTitulosNovo.setFormasPagamentos(const a_Value: TObjectList<TFormaPagamentoRenegociacaoTitulosNovo>);
begin
  Self.m_FormasPagamentos := a_Value;
end;

function TRenegociacaoTitulosNovo.getParcelas: TObjectList<TParcelaFormaPagamentoRenegociacaoTitulosNovo>;
begin
  if not Assigned(Self.m_Parcelas)
    then Self.m_Parcelas := TObjectList<TParcelaFormaPagamentoRenegociacaoTitulosNovo>.Create();
  Result := Self.m_Parcelas;
end;

procedure TRenegociacaoTitulosNovo.setParcelas(const a_Value: TObjectList<TParcelaFormaPagamentoRenegociacaoTitulosNovo>);
begin
  Self.m_Parcelas := a_Value;
end;

function TRenegociacaoTitulosNovo.getQtdTitulosRenegociados: Integer;
begin
  Result := Self.m_QtdTitulosRenegociados;
end;

procedure TRenegociacaoTitulosNovo.setQtdTitulosRenegociados(const a_Value: Integer);
begin
  Self.m_QtdTitulosRenegociados := a_Value;
end;

function TRenegociacaoTitulosNovo.getValorTitulosRenegociados: Currency;
begin
  Result := Self.m_ValorTitulosRenegociados;
end;

procedure TRenegociacaoTitulosNovo.setValorTitulosRenegociados(const a_Value: Currency);
begin
  Self.m_ValorTitulosRenegociados := a_Value;
end;

function TRenegociacaoTitulosNovo.getAcaoImpostos: Integer;
begin
  Result := Self.m_AcaoImpostos;
end;

procedure TRenegociacaoTitulosNovo.setAcaoImpostos(const a_Value: Integer);
begin
  Self.m_AcaoImpostos := a_Value;
end;

function TRenegociacaoTitulosNovo.getDesconto: Currency;
begin
  Result := Self.m_Desconto;
end;

procedure TRenegociacaoTitulosNovo.setDesconto(const a_Value: Currency);
begin
  Self.m_Desconto := a_Value;
end;

function TRenegociacaoTitulosNovo.getAcrescimo: Currency;
begin
  Result := Self.m_Acrescimo;
end;

procedure TRenegociacaoTitulosNovo.setAcrescimo(const a_Value: Currency);
begin
  Self.m_Acrescimo := a_Value;
end;

destructor TRenegociacaoTitulosNovo.Destroy;
begin
  Self.TitulosRenegociados.Free();  Self.FormasPagamentos.Free();  Self.Parcelas.Free();
end;

function TRenegociacaoTitulosNovo.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TRenegociacaoTitulosNovo.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TRenegociacaoTitulosNovo.getNameAPI(): String;
begin
  Result := 'RenegociacaoTitulosNovo';
end;

function TRenegociacaoTitulosNovo.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TRenegociacaoTitulosNovo.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TRenegociacaoTitulosAlterar.getId: String;
begin
  Result := Self.m_Id;
end;

procedure TRenegociacaoTitulosAlterar.setId(const a_Value: String);
begin
  Self.m_Id := a_Value;
end;

function TRenegociacaoTitulosAlterar.getEstabelecimento: String;
begin
  Result := Self.m_Estabelecimento;
end;

procedure TRenegociacaoTitulosAlterar.setEstabelecimento(const a_Value: String);
begin
  Self.m_Estabelecimento := a_Value;
end;

function TRenegociacaoTitulosAlterar.getPessoa: String;
begin
  Result := Self.m_Pessoa;
end;

procedure TRenegociacaoTitulosAlterar.setPessoa(const a_Value: String);
begin
  Self.m_Pessoa := a_Value;
end;

function TRenegociacaoTitulosAlterar.getDataRenegociacao: TDate;
begin
  Result := Self.m_DataRenegociacao;
end;

procedure TRenegociacaoTitulosAlterar.setDataRenegociacao(const a_Value: TDate);
begin
  Self.m_DataRenegociacao := a_Value;
end;

function TRenegociacaoTitulosAlterar.getNumero: String;
begin
  Result := Self.m_Numero;
end;

function TRenegociacaoTitulosAlterar.getObservacao: String;
begin
  Result := Self.m_Observacao;
end;

procedure TRenegociacaoTitulosAlterar.setNumero(const a_Value: String);
begin
  Self.m_Numero := a_Value;
end;

procedure TRenegociacaoTitulosAlterar.setObservacao(const a_Value: String);
begin
  Self.m_Observacao := a_Value;
end;

function TRenegociacaoTitulosAlterar.getUsuario: String;
begin
  Result := Self.m_Usuario;
end;

procedure TRenegociacaoTitulosAlterar.setUsuario(const a_Value: String);
begin
  Self.m_Usuario := a_Value;
end;

function TRenegociacaoTitulosAlterar.getTipo: Integer;
begin
  Result := Self.m_Tipo;
end;

procedure TRenegociacaoTitulosAlterar.setTipo(const a_Value: Integer);
begin
  Self.m_Tipo := a_Value;
end;

function TRenegociacaoTitulosAlterar.getTitulosRenegociados: TObjectList<TTituloRenegociado>;
begin
  if not Assigned(Self.m_TitulosRenegociados)
    then Self.m_TitulosRenegociados := TObjectList<TTituloRenegociado>.Create();
  Result := Self.m_TitulosRenegociados;
end;

procedure TRenegociacaoTitulosAlterar.setTitulosRenegociados(const a_Value: TObjectList<TTituloRenegociado>);
begin
  Self.m_TitulosRenegociados := a_Value;
end;

function TRenegociacaoTitulosAlterar.getFormasPagamentos: TObjectList<TFormaPagamentoRenegociacaoTitulosNovo>;
begin
  if not Assigned(Self.m_FormasPagamentos)
    then Self.m_FormasPagamentos := TObjectList<TFormaPagamentoRenegociacaoTitulosNovo>.Create();
  Result := Self.m_FormasPagamentos;
end;

procedure TRenegociacaoTitulosAlterar.setFormasPagamentos(const a_Value: TObjectList<TFormaPagamentoRenegociacaoTitulosNovo>);
begin
  Self.m_FormasPagamentos := a_Value;
end;

function TRenegociacaoTitulosAlterar.getParcelas: TObjectList<TParcelaFormaPagamentoRenegociacaoTitulosNovo>;
begin
  if not Assigned(Self.m_Parcelas)
    then Self.m_Parcelas := TObjectList<TParcelaFormaPagamentoRenegociacaoTitulosNovo>.Create();
  Result := Self.m_Parcelas;
end;

procedure TRenegociacaoTitulosAlterar.setParcelas(const a_Value: TObjectList<TParcelaFormaPagamentoRenegociacaoTitulosNovo>);
begin
  Self.m_Parcelas := a_Value;
end;

function TRenegociacaoTitulosAlterar.getQtdTitulosRenegociados: Integer;
begin
  Result := Self.m_QtdTitulosRenegociados;
end;

procedure TRenegociacaoTitulosAlterar.setQtdTitulosRenegociados(const a_Value: Integer);
begin
  Self.m_QtdTitulosRenegociados := a_Value;
end;

function TRenegociacaoTitulosAlterar.getValorTitulosRenegociados: Currency;
begin
  Result := Self.m_ValorTitulosRenegociados;
end;

procedure TRenegociacaoTitulosAlterar.setValorTitulosRenegociados(const a_Value: Currency);
begin
  Self.m_ValorTitulosRenegociados := a_Value;
end;

function TRenegociacaoTitulosAlterar.getAcaoImpostos: Integer;
begin
  Result := Self.m_AcaoImpostos;
end;

procedure TRenegociacaoTitulosAlterar.setAcaoImpostos(const a_Value: Integer);
begin
  Self.m_AcaoImpostos := a_Value;
end;

function TRenegociacaoTitulosAlterar.getDesconto: Currency;
begin
  Result := Self.m_Desconto;
end;

procedure TRenegociacaoTitulosAlterar.setDesconto(const a_Value: Currency);
begin
  Self.m_Desconto := a_Value;
end;

function TRenegociacaoTitulosAlterar.getAcrescimo: Currency;
begin
  Result := Self.m_Acrescimo;
end;

procedure TRenegociacaoTitulosAlterar.setAcrescimo(const a_Value: Currency);
begin
  Self.m_Acrescimo := a_Value;
end;

destructor TRenegociacaoTitulosAlterar.Destroy;
begin
  Self.TitulosRenegociados.Free();  Self.FormasPagamentos.Free();  Self.Parcelas.Free();
end;

function TRenegociacaoTitulosAlterar.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TRenegociacaoTitulosAlterar.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TRenegociacaoTitulosAlterar.getNameAPI(): String;
begin
  Result := 'RenegociacaoTitulosAlterar';
end;

function TRenegociacaoTitulosAlterar.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TRenegociacaoTitulosAlterar.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

function TRenegociacaoTitulosExcluir.getId: String;
begin
  Result := Self.m_Id;
end;

procedure TRenegociacaoTitulosExcluir.setId(const a_Value: String);
begin
  Self.m_Id := a_Value;
end;

destructor TRenegociacaoTitulosExcluir.Destroy;
begin

end;

function TRenegociacaoTitulosExcluir.getType(): String;
begin
  Result := BROKER_TYPE_MESSAGE_API;
end;

function TRenegociacaoTitulosExcluir.getBody(): String;
begin
  Result := TBuildConteudoMensagemBroker.getInstance().BuildMensagem_API(Self);
end;

function TRenegociacaoTitulosExcluir.getNameAPI(): String;
begin
  Result := 'RenegociacaoTitulosExcluir';
end;

function TRenegociacaoTitulosExcluir.getJSON(): TJSONObject;
begin
  Result := TJsonUtilGenerics.Marshal_To_JSONObject(Self);
end;

function TRenegociacaoTitulosExcluir.execute(const a_Connection: TUniConnection): TRecibo;
begin
  Result := TAPISend.send(a_Connection, Self);
end;

	
end.
