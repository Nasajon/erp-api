unit api.controller.servicos.ObjetoServico;

interface

  uses
    System.SysUtils,

    api.model.servicos.ObjetoServico,
    api.model.recibo,
    api.dao,
    api.utils,
    api.command,

    Nasajon.Sdk.Helpers.Rest.Json.Generics    

    ;

  type
    TAPIObjetoServico = class(TInterfacedObject, ICommandAPI)


      public

        function execute(const a_api: String; const a_param: String): TRecibo; overload;
        function execute(const a_param: TObject): TRecibo; overload;

        function Novo(const a_Objeto: String): TRecibo; overload;
        function Novo(const a_Objeto: TObjetoServicoNovo): TRecibo; overload;

        function Alterar(const a_Objeto: String): TRecibo; overload;
        function Alterar(const a_Objeto: TObjetoServicoAlterar): TRecibo; overload;

        function Excluir(const a_Objeto: String): TRecibo; overload;
        function Excluir(const a_Objeto: TObjetoServicoExcluir): TRecibo; overload;

        
    end;

implementation

{ TAPIservicos.ObjetoServico }

function TAPIObjetoServico.execute(const a_api: String; const a_param: String): TRecibo;
begin
  if (UpperCase(a_api) = 'OBJETOSERVICONOVO')
    then begin
       Result := Self.Novo(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'OBJETOSERVICOALTERAR')
    then begin
       Result := Self.Alterar(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'OBJETOSERVICOEXCLUIR')
    then begin
       Result := Self.Excluir(a_Param);
       Exit();
    end;


end;

function TAPIObjetoServico.execute(const a_param: TObject): TRecibo;
begin
  if (a_param is TObjetoServicoNovo)
    then begin
       Result := Self.Novo(a_Param as TObjetoServicoNovo);
       Exit();
    end;

  if (a_param is TObjetoServicoAlterar)
    then begin
       Result := Self.Alterar(a_Param as TObjetoServicoAlterar);
       Exit();
    end;

  if (a_param is TObjetoServicoExcluir)
    then begin
       Result := Self.Excluir(a_Param as TObjetoServicoExcluir);
       Exit();
    end;


end;

function TAPIObjetoServico.Novo(const a_Objeto: TObjetoServicoNovo): TRecibo;
begin
  Result := TDAO.callFunction('servicos.api_ObjetoServicoNovo', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIObjetoServico.Novo(const a_Objeto: String): TRecibo;

  var t_Modelo: TObjetoServicoNovo;

begin
  t_Modelo := TObjetoServicoNovo.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Novo(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIObjetoServico.Alterar(const a_Objeto: TObjetoServicoAlterar): TRecibo;
begin
  Result := TDAO.callFunction('servicos.api_ObjetoServicoAlterar', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIObjetoServico.Alterar(const a_Objeto: String): TRecibo;

  var t_Modelo: TObjetoServicoAlterar;

begin
  t_Modelo := TObjetoServicoAlterar.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Alterar(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIObjetoServico.Excluir(const a_Objeto: TObjetoServicoExcluir): TRecibo;
begin
  Result := TDAO.callFunction('servicos.api_ObjetoServicoExcluir', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIObjetoServico.Excluir(const a_Objeto: String): TRecibo;

  var t_Modelo: TObjetoServicoExcluir;

begin
  t_Modelo := TObjetoServicoExcluir.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Excluir(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;


end.
