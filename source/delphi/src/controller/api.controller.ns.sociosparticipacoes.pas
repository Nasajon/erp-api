unit api.controller.ns.SociosParticipacoes;

interface

  uses
    System.SysUtils,

    api.model.ns.SociosParticipacoes,
    api.model.recibo,
    api.dao,
    api.utils,
    api.command,

    Nasajon.Sdk.Helpers.Rest.Json.Generics    

    ;

  type
    TAPISociosParticipacoes = class(TInterfacedObject, ICommandAPI)


      public

        function execute(const a_api: String; const a_param: String): TRecibo; overload;
        function execute(const a_param: TObject): TRecibo; overload;

        function Novo(const a_Objeto: String): TRecibo; overload;
        function Novo(const a_Objeto: TSociosParticipacoesNovo): TRecibo; overload;

        function Alterar(const a_Objeto: String): TRecibo; overload;
        function Alterar(const a_Objeto: TSociosParticipacoesAlterar): TRecibo; overload;

        function Excluir(const a_Objeto: String): TRecibo; overload;
        function Excluir(const a_Objeto: TSociosParticipacoesExcluir): TRecibo; overload;

        
    end;

implementation

{ TAPIns.SociosParticipacoes }

function TAPISociosParticipacoes.execute(const a_api: String; const a_param: String): TRecibo;
begin
  if (UpperCase(a_api) = 'SOCIOSPARTICIPACOESNOVO')
    then begin
       Result := Self.Novo(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'SOCIOSPARTICIPACOESALTERAR')
    then begin
       Result := Self.Alterar(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'SOCIOSPARTICIPACOESEXCLUIR')
    then begin
       Result := Self.Excluir(a_Param);
       Exit();
    end;


end;

function TAPISociosParticipacoes.execute(const a_param: TObject): TRecibo;
begin
  if (a_param is TSociosParticipacoesNovo)
    then begin
       Result := Self.Novo(a_Param as TSociosParticipacoesNovo);
       Exit();
    end;

  if (a_param is TSociosParticipacoesAlterar)
    then begin
       Result := Self.Alterar(a_Param as TSociosParticipacoesAlterar);
       Exit();
    end;

  if (a_param is TSociosParticipacoesExcluir)
    then begin
       Result := Self.Excluir(a_Param as TSociosParticipacoesExcluir);
       Exit();
    end;


end;

function TAPISociosParticipacoes.Novo(const a_Objeto: TSociosParticipacoesNovo): TRecibo;
begin
  Result := TDAO.callFunction('ns.api_SociosParticipacoesNovo', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPISociosParticipacoes.Novo(const a_Objeto: String): TRecibo;

  var t_Modelo: TSociosParticipacoesNovo;

begin
  t_Modelo := TSociosParticipacoesNovo.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Novo(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPISociosParticipacoes.Alterar(const a_Objeto: TSociosParticipacoesAlterar): TRecibo;
begin
  Result := TDAO.callFunction('ns.api_SociosParticipacoesAlterar', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPISociosParticipacoes.Alterar(const a_Objeto: String): TRecibo;

  var t_Modelo: TSociosParticipacoesAlterar;

begin
  t_Modelo := TSociosParticipacoesAlterar.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Alterar(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPISociosParticipacoes.Excluir(const a_Objeto: TSociosParticipacoesExcluir): TRecibo;
begin
  Result := TDAO.callFunction('ns.api_SociosParticipacoesExcluir', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPISociosParticipacoes.Excluir(const a_Objeto: String): TRecibo;

  var t_Modelo: TSociosParticipacoesExcluir;

begin
  t_Modelo := TSociosParticipacoesExcluir.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Excluir(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;


end.
