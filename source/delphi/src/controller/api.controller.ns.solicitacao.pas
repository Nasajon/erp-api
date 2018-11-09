unit api.controller.ns.Solicitacao;

interface

  uses
    System.SysUtils,

    api.model.ns.Solicitacao,
    api.model.recibo,
    api.dao,
    api.utils,
    api.command,

    Nasajon.Sdk.Helpers.Rest.Json.Generics    

    ;

  type
    TAPISolicitacao = class(TInterfacedObject, ICommandAPI)


      public

        function execute(const a_api: String; const a_param: String): TRecibo; overload;
        function execute(const a_param: TObject): TRecibo; overload;

        function Novo(const a_Objeto: String): TRecibo; overload;
        function Novo(const a_Objeto: TSolicitacaoNovo): TRecibo; overload;

        
    end;

implementation

{ TAPIns.Solicitacao }

function TAPISolicitacao.execute(const a_api: String; const a_param: String): TRecibo;
begin
  if (UpperCase(a_api) = 'SOLICITACAONOVO')
    then begin
       Result := Self.Novo(a_Param);
       Exit();
    end;


end;

function TAPISolicitacao.execute(const a_param: TObject): TRecibo;
begin
  if (a_param is TSolicitacaoNovo)
    then begin
       Result := Self.Novo(a_Param as TSolicitacaoNovo);
       Exit();
    end;


end;

function TAPISolicitacao.Novo(const a_Objeto: TSolicitacaoNovo): TRecibo;
begin
  Result := TDAO.callFunction('ns.api_SolicitacaoNovo', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPISolicitacao.Novo(const a_Objeto: String): TRecibo;

  var t_Modelo: TSolicitacaoNovo;

begin
  t_Modelo := TSolicitacaoNovo.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Novo(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;


end.
