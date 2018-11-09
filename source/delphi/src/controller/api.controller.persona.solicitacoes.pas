unit api.controller.persona.Solicitacoes;

interface

  uses
    System.SysUtils,

    api.model.persona.Solicitacoes,
    api.model.recibo,
    api.dao,
    api.utils,
    api.command,

    Nasajon.Sdk.Helpers.Rest.Json.Generics    

    ;

  type
    TAPISolicitacoes = class(TInterfacedObject, ICommandAPI)


      public

        function execute(const a_api: String; const a_param: String): TRecibo; overload;
        function execute(const a_param: TObject): TRecibo; overload;

        function AlteracaoEndereco(const a_Objeto: String): TRecibo; overload;
        function AlteracaoEndereco(const a_Objeto: TSolicitacoesAlteracaoEndereco): TRecibo; overload;

        
    end;

implementation

{ TAPIpersona.Solicitacoes }

function TAPISolicitacoes.execute(const a_api: String; const a_param: String): TRecibo;
begin
  if (UpperCase(a_api) = 'SOLICITACOESALTERACAOENDERECO')
    then begin
       Result := Self.AlteracaoEndereco(a_Param);
       Exit();
    end;


end;

function TAPISolicitacoes.execute(const a_param: TObject): TRecibo;
begin
  if (a_param is TSolicitacoesAlteracaoEndereco)
    then begin
       Result := Self.AlteracaoEndereco(a_Param as TSolicitacoesAlteracaoEndereco);
       Exit();
    end;


end;

function TAPISolicitacoes.AlteracaoEndereco(const a_Objeto: TSolicitacoesAlteracaoEndereco): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_SolicitacoesAlteracaoEndereco', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPISolicitacoes.AlteracaoEndereco(const a_Objeto: String): TRecibo;

  var t_Modelo: TSolicitacoesAlteracaoEndereco;

begin
  t_Modelo := TSolicitacoesAlteracaoEndereco.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlteracaoEndereco(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;


end.
