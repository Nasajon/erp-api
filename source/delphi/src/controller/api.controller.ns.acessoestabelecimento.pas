unit api.controller.ns.acessoestabelecimento;

interface

  uses
    System.SysUtils,

    api.model.ns.acessoestabelecimento,
    api.model.recibo,
    api.dao,
    api.utils,
    api.command,

    Nasajon.Sdk.Helpers.Rest.Json.Generics    

    ;

  type
    TAPIacessoestabelecimento = class(TInterfacedObject, ICommandAPI)


      public

        function execute(const a_api: String; const a_param: String): TRecibo; overload;
        function execute(const a_param: TObject): TRecibo; overload;

        function Novo(const a_Objeto: String): TRecibo; overload;
        function Novo(const a_Objeto: TacessoestabelecimentoNovo): TRecibo; overload;

        function Excluir(const a_Objeto: String): TRecibo; overload;
        function Excluir(const a_Objeto: TacessoestabelecimentoExcluir): TRecibo; overload;

        
    end;

implementation

{ TAPIns.acessoestabelecimento }

function TAPIacessoestabelecimento.execute(const a_api: String; const a_param: String): TRecibo;
begin
  if (UpperCase(a_api) = 'ACESSOESTABELECIMENTONOVO')
    then begin
       Result := Self.Novo(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'ACESSOESTABELECIMENTOEXCLUIR')
    then begin
       Result := Self.Excluir(a_Param);
       Exit();
    end;


end;

function TAPIacessoestabelecimento.execute(const a_param: TObject): TRecibo;
begin
  if (a_param is TacessoestabelecimentoNovo)
    then begin
       Result := Self.Novo(a_Param as TacessoestabelecimentoNovo);
       Exit();
    end;

  if (a_param is TacessoestabelecimentoExcluir)
    then begin
       Result := Self.Excluir(a_Param as TacessoestabelecimentoExcluir);
       Exit();
    end;


end;

function TAPIacessoestabelecimento.Novo(const a_Objeto: TacessoestabelecimentoNovo): TRecibo;
begin
  Result := TDAO.callFunction('ns.api_acessoestabelecimentoNovo', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIacessoestabelecimento.Novo(const a_Objeto: String): TRecibo;

  var t_Modelo: TacessoestabelecimentoNovo;

begin
  t_Modelo := TacessoestabelecimentoNovo.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Novo(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIacessoestabelecimento.Excluir(const a_Objeto: TacessoestabelecimentoExcluir): TRecibo;
begin
  Result := TDAO.callFunction('ns.api_acessoestabelecimentoExcluir', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIacessoestabelecimento.Excluir(const a_Objeto: String): TRecibo;

  var t_Modelo: TacessoestabelecimentoExcluir;

begin
  t_Modelo := TacessoestabelecimentoExcluir.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Excluir(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;


end.
