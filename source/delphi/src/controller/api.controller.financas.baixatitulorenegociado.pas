unit api.controller.financas.BaixaTituloRenegociado;

interface

  uses
    System.SysUtils,

    api.model.financas.BaixaTituloRenegociado,
    api.model.recibo,
    api.dao,
    api.utils,
    api.command,

    Nasajon.Sdk.Helpers.Rest.Json.Generics    

    ;

  type
    TAPIBaixaTituloRenegociado = class(TInterfacedObject, ICommandAPI)


      public

        function execute(const a_api: String; const a_param: String): TRecibo; overload;
        function execute(const a_param: TObject): TRecibo; overload;

        function Novo(const a_Objeto: String): TRecibo; overload;
        function Novo(const a_Objeto: TBaixaTituloRenegociadoNovo): TRecibo; overload;

        function Excluir(const a_Objeto: String): TRecibo; overload;
        function Excluir(const a_Objeto: TBaixaTituloRenegociadoExcluir): TRecibo; overload;

        
    end;

implementation

{ TAPIfinancas.BaixaTituloRenegociado }

function TAPIBaixaTituloRenegociado.execute(const a_api: String; const a_param: String): TRecibo;
begin
  if (UpperCase(a_api) = 'BAIXATITULORENEGOCIADONOVO')
    then begin
       Result := Self.Novo(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'BAIXATITULORENEGOCIADOEXCLUIR')
    then begin
       Result := Self.Excluir(a_Param);
       Exit();
    end;


end;

function TAPIBaixaTituloRenegociado.execute(const a_param: TObject): TRecibo;
begin
  if (a_param is TBaixaTituloRenegociadoNovo)
    then begin
       Result := Self.Novo(a_Param as TBaixaTituloRenegociadoNovo);
       Exit();
    end;

  if (a_param is TBaixaTituloRenegociadoExcluir)
    then begin
       Result := Self.Excluir(a_Param as TBaixaTituloRenegociadoExcluir);
       Exit();
    end;


end;

function TAPIBaixaTituloRenegociado.Novo(const a_Objeto: TBaixaTituloRenegociadoNovo): TRecibo;
begin
  Result := TDAO.callFunction('financas.api_BaixaTituloRenegociadoNovo', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIBaixaTituloRenegociado.Novo(const a_Objeto: String): TRecibo;

  var t_Modelo: TBaixaTituloRenegociadoNovo;

begin
  t_Modelo := TBaixaTituloRenegociadoNovo.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Novo(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIBaixaTituloRenegociado.Excluir(const a_Objeto: TBaixaTituloRenegociadoExcluir): TRecibo;
begin
  Result := TDAO.callFunction('financas.api_BaixaTituloRenegociadoExcluir', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIBaixaTituloRenegociado.Excluir(const a_Objeto: String): TRecibo;

  var t_Modelo: TBaixaTituloRenegociadoExcluir;

begin
  t_Modelo := TBaixaTituloRenegociadoExcluir.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Excluir(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;


end.
