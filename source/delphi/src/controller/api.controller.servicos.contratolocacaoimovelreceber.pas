unit api.controller.servicos.ContratoLocacaoImovelReceber;

interface

  uses
    System.SysUtils,

    api.model.servicos.ContratoLocacaoImovelReceber,
    api.model.recibo,
    api.dao,
    api.utils,
    api.command,

    Nasajon.Sdk.Helpers.Rest.Json.Generics    

    ;

  type
    TAPIContratoLocacaoImovelReceber = class(TInterfacedObject, ICommandAPI)


      public

        function execute(const a_api: String; const a_param: String): TRecibo; overload;
        function execute(const a_param: TObject): TRecibo; overload;

        function Novo(const a_Objeto: String): TRecibo; overload;
        function Novo(const a_Objeto: TContratoLocacaoImovelReceberNovo): TRecibo; overload;

        function Excluir(const a_Objeto: String): TRecibo; overload;
        function Excluir(const a_Objeto: TContratoLocacaoImovelReceberExcluir): TRecibo; overload;

        
    end;

implementation

{ TAPIservicos.ContratoLocacaoImovelReceber }

function TAPIContratoLocacaoImovelReceber.execute(const a_api: String; const a_param: String): TRecibo;
begin
  if (UpperCase(a_api) = 'CONTRATOLOCACAOIMOVELRECEBERNOVO')
    then begin
       Result := Self.Novo(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'CONTRATOLOCACAOIMOVELRECEBEREXCLUIR')
    then begin
       Result := Self.Excluir(a_Param);
       Exit();
    end;


end;

function TAPIContratoLocacaoImovelReceber.execute(const a_param: TObject): TRecibo;
begin
  if (a_param is TContratoLocacaoImovelReceberNovo)
    then begin
       Result := Self.Novo(a_Param as TContratoLocacaoImovelReceberNovo);
       Exit();
    end;

  if (a_param is TContratoLocacaoImovelReceberExcluir)
    then begin
       Result := Self.Excluir(a_Param as TContratoLocacaoImovelReceberExcluir);
       Exit();
    end;


end;

function TAPIContratoLocacaoImovelReceber.Novo(const a_Objeto: TContratoLocacaoImovelReceberNovo): TRecibo;
begin
  Result := TDAO.callFunction('servicos.api_ContratoLocacaoImovelReceberNovo', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIContratoLocacaoImovelReceber.Novo(const a_Objeto: String): TRecibo;

  var t_Modelo: TContratoLocacaoImovelReceberNovo;

begin
  t_Modelo := TContratoLocacaoImovelReceberNovo.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Novo(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIContratoLocacaoImovelReceber.Excluir(const a_Objeto: TContratoLocacaoImovelReceberExcluir): TRecibo;
begin
  Result := TDAO.callFunction('servicos.api_ContratoLocacaoImovelReceberExcluir', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIContratoLocacaoImovelReceber.Excluir(const a_Objeto: String): TRecibo;

  var t_Modelo: TContratoLocacaoImovelReceberExcluir;

begin
  t_Modelo := TContratoLocacaoImovelReceberExcluir.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Excluir(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;


end.
