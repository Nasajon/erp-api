unit api.controller.ns.SolicitacaoAlteracaoEndereco;

interface

  uses
    System.SysUtils,

    api.model.ns.SolicitacaoAlteracaoEndereco,
    api.model.recibo,
    api.dao,
    api.utils,
    api.command,

    Nasajon.Sdk.Helpers.Rest.Json.Generics    

    ;

  type
    TAPISolicitacaoAlteracaoEndereco = class(TInterfacedObject, ICommandAPI)


      public

        function execute(const a_api: String; const a_param: String): TRecibo; overload;
        function execute(const a_param: TObject): TRecibo; overload;

        function Novo(const a_Objeto: String): TRecibo; overload;
        function Novo(const a_Objeto: TSolicitacaoAlteracaoEnderecoNovo): TRecibo; overload;

        
    end;

implementation

{ TAPIns.SolicitacaoAlteracaoEndereco }

function TAPISolicitacaoAlteracaoEndereco.execute(const a_api: String; const a_param: String): TRecibo;
begin
  if (UpperCase(a_api) = 'SOLICITACAOALTERACAOENDERECONOVO')
    then begin
       Result := Self.Novo(a_Param);
       Exit();
    end;


end;

function TAPISolicitacaoAlteracaoEndereco.execute(const a_param: TObject): TRecibo;
begin
  if (a_param is TSolicitacaoAlteracaoEnderecoNovo)
    then begin
       Result := Self.Novo(a_Param as TSolicitacaoAlteracaoEnderecoNovo);
       Exit();
    end;


end;

function TAPISolicitacaoAlteracaoEndereco.Novo(const a_Objeto: TSolicitacaoAlteracaoEnderecoNovo): TRecibo;
begin
  Result := TDAO.callFunction('ns.api_SolicitacaoAlteracaoEnderecoNovo', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPISolicitacaoAlteracaoEndereco.Novo(const a_Objeto: String): TRecibo;

  var t_Modelo: TSolicitacaoAlteracaoEnderecoNovo;

begin
  t_Modelo := TSolicitacaoAlteracaoEnderecoNovo.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Novo(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;


end.
