unit api.controller.financas.MensagemLoteFatura;

interface

  uses
    System.SysUtils,

    api.model.financas.MensagemLoteFatura,
    api.model.recibo,
    api.dao,
    api.utils,
    api.command,

    Nasajon.Sdk.Helpers.Rest.Json.Generics    

    ;

  type
    TAPIMensagemLoteFatura = class(TInterfacedObject, ICommandAPI)


      public

        function execute(const a_api: String; const a_param: String): TRecibo; overload;
        function execute(const a_param: TObject): TRecibo; overload;

        function Novo(const a_Objeto: String): TRecibo; overload;
        function Novo(const a_Objeto: TMensagemLoteFaturaNovo): TRecibo; overload;

        
    end;

implementation

{ TAPIfinancas.MensagemLoteFatura }

function TAPIMensagemLoteFatura.execute(const a_api: String; const a_param: String): TRecibo;
begin
  if (UpperCase(a_api) = 'MENSAGEMLOTEFATURANOVO')
    then begin
       Result := Self.Novo(a_Param);
       Exit();
    end;


end;

function TAPIMensagemLoteFatura.execute(const a_param: TObject): TRecibo;
begin
  if (a_param is TMensagemLoteFaturaNovo)
    then begin
       Result := Self.Novo(a_Param as TMensagemLoteFaturaNovo);
       Exit();
    end;


end;

function TAPIMensagemLoteFatura.Novo(const a_Objeto: TMensagemLoteFaturaNovo): TRecibo;
begin
  Result := TDAO.callFunction('financas.api_MensagemLoteFaturaNovo', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIMensagemLoteFatura.Novo(const a_Objeto: String): TRecibo;

  var t_Modelo: TMensagemLoteFaturaNovo;

begin
  t_Modelo := TMensagemLoteFaturaNovo.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Novo(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;


end.
