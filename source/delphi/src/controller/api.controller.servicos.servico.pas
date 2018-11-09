unit api.controller.servicos.Servico;

interface

  uses
    System.SysUtils,

    api.model.servicos.Servico,
    api.model.recibo,
    api.dao,
    api.utils,
    api.command,

    Nasajon.Sdk.Helpers.Rest.Json.Generics    

    ;

  type
    TAPIServico = class(TInterfacedObject, ICommandAPI)


      public

        function execute(const a_api: String; const a_param: String): TRecibo; overload;
        function execute(const a_param: TObject): TRecibo; overload;

        function Novo(const a_Objeto: String): TRecibo; overload;
        function Novo(const a_Objeto: TServicoNovo): TRecibo; overload;

        function Alterar(const a_Objeto: String): TRecibo; overload;
        function Alterar(const a_Objeto: TServicoAlterar): TRecibo; overload;

        function Excluir(const a_Objeto: String): TRecibo; overload;
        function Excluir(const a_Objeto: TServicoExcluir): TRecibo; overload;

        
    end;

implementation

{ TAPIservicos.Servico }

function TAPIServico.execute(const a_api: String; const a_param: String): TRecibo;
begin
  if (UpperCase(a_api) = 'SERVICONOVO')
    then begin
       Result := Self.Novo(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'SERVICOALTERAR')
    then begin
       Result := Self.Alterar(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'SERVICOEXCLUIR')
    then begin
       Result := Self.Excluir(a_Param);
       Exit();
    end;


end;

function TAPIServico.execute(const a_param: TObject): TRecibo;
begin
  if (a_param is TServicoNovo)
    then begin
       Result := Self.Novo(a_Param as TServicoNovo);
       Exit();
    end;

  if (a_param is TServicoAlterar)
    then begin
       Result := Self.Alterar(a_Param as TServicoAlterar);
       Exit();
    end;

  if (a_param is TServicoExcluir)
    then begin
       Result := Self.Excluir(a_Param as TServicoExcluir);
       Exit();
    end;


end;

function TAPIServico.Novo(const a_Objeto: TServicoNovo): TRecibo;
begin
  Result := TDAO.callFunction('servicos.api_ServicoNovo', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIServico.Novo(const a_Objeto: String): TRecibo;

  var t_Modelo: TServicoNovo;

begin
  t_Modelo := TServicoNovo.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Novo(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIServico.Alterar(const a_Objeto: TServicoAlterar): TRecibo;
begin
  Result := TDAO.callFunction('servicos.api_ServicoAlterar', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIServico.Alterar(const a_Objeto: String): TRecibo;

  var t_Modelo: TServicoAlterar;

begin
  t_Modelo := TServicoAlterar.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Alterar(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIServico.Excluir(const a_Objeto: TServicoExcluir): TRecibo;
begin
  Result := TDAO.callFunction('servicos.api_ServicoExcluir', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIServico.Excluir(const a_Objeto: String): TRecibo;

  var t_Modelo: TServicoExcluir;

begin
  t_Modelo := TServicoExcluir.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Excluir(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;


end.
