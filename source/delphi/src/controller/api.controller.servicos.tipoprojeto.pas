unit api.controller.servicos.TipoProjeto;

interface

  uses
    System.SysUtils,

    api.model.servicos.TipoProjeto,
    api.model.recibo,
    api.dao,
    api.utils,
    api.command,

    Nasajon.Sdk.Helpers.Rest.Json.Generics    

    ;

  type
    TAPITipoProjeto = class(TInterfacedObject, ICommandAPI)


      public

        function execute(const a_api: String; const a_param: String): TRecibo; overload;
        function execute(const a_param: TObject): TRecibo; overload;

        function Novo(const a_Objeto: String): TRecibo; overload;
        function Novo(const a_Objeto: TTipoProjetoNovo): TRecibo; overload;

        function Alterar(const a_Objeto: String): TRecibo; overload;
        function Alterar(const a_Objeto: TTipoProjetoAlterar): TRecibo; overload;

        function Excluir(const a_Objeto: String): TRecibo; overload;
        function Excluir(const a_Objeto: TTipoProjetoExcluir): TRecibo; overload;

        
    end;

implementation

{ TAPIservicos.TipoProjeto }

function TAPITipoProjeto.execute(const a_api: String; const a_param: String): TRecibo;
begin
  if (UpperCase(a_api) = 'TIPOPROJETONOVO')
    then begin
       Result := Self.Novo(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'TIPOPROJETOALTERAR')
    then begin
       Result := Self.Alterar(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'TIPOPROJETOEXCLUIR')
    then begin
       Result := Self.Excluir(a_Param);
       Exit();
    end;


end;

function TAPITipoProjeto.execute(const a_param: TObject): TRecibo;
begin
  if (a_param is TTipoProjetoNovo)
    then begin
       Result := Self.Novo(a_Param as TTipoProjetoNovo);
       Exit();
    end;

  if (a_param is TTipoProjetoAlterar)
    then begin
       Result := Self.Alterar(a_Param as TTipoProjetoAlterar);
       Exit();
    end;

  if (a_param is TTipoProjetoExcluir)
    then begin
       Result := Self.Excluir(a_Param as TTipoProjetoExcluir);
       Exit();
    end;


end;

function TAPITipoProjeto.Novo(const a_Objeto: TTipoProjetoNovo): TRecibo;
begin
  Result := TDAO.callFunction('servicos.api_TipoProjetoNovo', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPITipoProjeto.Novo(const a_Objeto: String): TRecibo;

  var t_Modelo: TTipoProjetoNovo;

begin
  t_Modelo := TTipoProjetoNovo.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Novo(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPITipoProjeto.Alterar(const a_Objeto: TTipoProjetoAlterar): TRecibo;
begin
  Result := TDAO.callFunction('servicos.api_TipoProjetoAlterar', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPITipoProjeto.Alterar(const a_Objeto: String): TRecibo;

  var t_Modelo: TTipoProjetoAlterar;

begin
  t_Modelo := TTipoProjetoAlterar.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Alterar(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPITipoProjeto.Excluir(const a_Objeto: TTipoProjetoExcluir): TRecibo;
begin
  Result := TDAO.callFunction('servicos.api_TipoProjetoExcluir', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPITipoProjeto.Excluir(const a_Objeto: String): TRecibo;

  var t_Modelo: TTipoProjetoExcluir;

begin
  t_Modelo := TTipoProjetoExcluir.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Excluir(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;


end.
