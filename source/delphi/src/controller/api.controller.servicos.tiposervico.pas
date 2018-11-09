unit api.controller.servicos.TipoServico;

interface

  uses
    System.SysUtils,

    api.model.servicos.TipoServico,
    api.model.recibo,
    api.dao,
    api.utils,
    api.command,

    Nasajon.Sdk.Helpers.Rest.Json.Generics    

    ;

  type
    TAPITipoServico = class(TInterfacedObject, ICommandAPI)


      public

        function execute(const a_api: String; const a_param: String): TRecibo; overload;
        function execute(const a_param: TObject): TRecibo; overload;

        function Novo(const a_Objeto: String): TRecibo; overload;
        function Novo(const a_Objeto: TTipoServicoNovo): TRecibo; overload;

        function Alterar(const a_Objeto: String): TRecibo; overload;
        function Alterar(const a_Objeto: TTipoServicoAlterar): TRecibo; overload;

        function Excluir(const a_Objeto: String): TRecibo; overload;
        function Excluir(const a_Objeto: TTipoServicoExcluir): TRecibo; overload;

        
    end;

implementation

{ TAPIservicos.TipoServico }

function TAPITipoServico.execute(const a_api: String; const a_param: String): TRecibo;
begin
  if (UpperCase(a_api) = 'TIPOSERVICONOVO')
    then begin
       Result := Self.Novo(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'TIPOSERVICOALTERAR')
    then begin
       Result := Self.Alterar(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'TIPOSERVICOEXCLUIR')
    then begin
       Result := Self.Excluir(a_Param);
       Exit();
    end;


end;

function TAPITipoServico.execute(const a_param: TObject): TRecibo;
begin
  if (a_param is TTipoServicoNovo)
    then begin
       Result := Self.Novo(a_Param as TTipoServicoNovo);
       Exit();
    end;

  if (a_param is TTipoServicoAlterar)
    then begin
       Result := Self.Alterar(a_Param as TTipoServicoAlterar);
       Exit();
    end;

  if (a_param is TTipoServicoExcluir)
    then begin
       Result := Self.Excluir(a_Param as TTipoServicoExcluir);
       Exit();
    end;


end;

function TAPITipoServico.Novo(const a_Objeto: TTipoServicoNovo): TRecibo;
begin
  Result := TDAO.callFunction('servicos.api_TipoServicoNovo', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPITipoServico.Novo(const a_Objeto: String): TRecibo;

  var t_Modelo: TTipoServicoNovo;

begin
  t_Modelo := TTipoServicoNovo.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Novo(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPITipoServico.Alterar(const a_Objeto: TTipoServicoAlterar): TRecibo;
begin
  Result := TDAO.callFunction('servicos.api_TipoServicoAlterar', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPITipoServico.Alterar(const a_Objeto: String): TRecibo;

  var t_Modelo: TTipoServicoAlterar;

begin
  t_Modelo := TTipoServicoAlterar.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Alterar(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPITipoServico.Excluir(const a_Objeto: TTipoServicoExcluir): TRecibo;
begin
  Result := TDAO.callFunction('servicos.api_TipoServicoExcluir', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPITipoServico.Excluir(const a_Objeto: String): TRecibo;

  var t_Modelo: TTipoServicoExcluir;

begin
  t_Modelo := TTipoServicoExcluir.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Excluir(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;


end.
