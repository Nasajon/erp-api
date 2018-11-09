unit api.controller.Servicos.Projeto;

interface

  uses
    System.SysUtils,

    api.model.Servicos.Projeto,
    api.model.recibo,
    api.dao,
    api.utils,
    api.command,

    Nasajon.Sdk.Helpers.Rest.Json.Generics    

    ;

  type
    TAPIProjeto = class(TInterfacedObject, ICommandAPI)


      public

        function execute(const a_api: String; const a_param: String): TRecibo; overload;
        function execute(const a_param: TObject): TRecibo; overload;

        function Novo(const a_Objeto: String): TRecibo; overload;
        function Novo(const a_Objeto: TProjetoNovo): TRecibo; overload;

        function Alterar(const a_Objeto: String): TRecibo; overload;
        function Alterar(const a_Objeto: TProjetoAlterar): TRecibo; overload;

        function Excluir(const a_Objeto: String): TRecibo; overload;
        function Excluir(const a_Objeto: TProjetoExcluir): TRecibo; overload;

        
    end;

implementation

{ TAPIServicos.Projeto }

function TAPIProjeto.execute(const a_api: String; const a_param: String): TRecibo;
begin
  if (UpperCase(a_api) = 'PROJETONOVO')
    then begin
       Result := Self.Novo(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'PROJETOALTERAR')
    then begin
       Result := Self.Alterar(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'PROJETOEXCLUIR')
    then begin
       Result := Self.Excluir(a_Param);
       Exit();
    end;


end;

function TAPIProjeto.execute(const a_param: TObject): TRecibo;
begin
  if (a_param is TProjetoNovo)
    then begin
       Result := Self.Novo(a_Param as TProjetoNovo);
       Exit();
    end;

  if (a_param is TProjetoAlterar)
    then begin
       Result := Self.Alterar(a_Param as TProjetoAlterar);
       Exit();
    end;

  if (a_param is TProjetoExcluir)
    then begin
       Result := Self.Excluir(a_Param as TProjetoExcluir);
       Exit();
    end;


end;

function TAPIProjeto.Novo(const a_Objeto: TProjetoNovo): TRecibo;
begin
  Result := TDAO.callFunction('Servicos.api_ProjetoNovo', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIProjeto.Novo(const a_Objeto: String): TRecibo;

  var t_Modelo: TProjetoNovo;

begin
  t_Modelo := TProjetoNovo.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Novo(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIProjeto.Alterar(const a_Objeto: TProjetoAlterar): TRecibo;
begin
  Result := TDAO.callFunction('Servicos.api_ProjetoAlterar', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIProjeto.Alterar(const a_Objeto: String): TRecibo;

  var t_Modelo: TProjetoAlterar;

begin
  t_Modelo := TProjetoAlterar.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Alterar(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIProjeto.Excluir(const a_Objeto: TProjetoExcluir): TRecibo;
begin
  Result := TDAO.callFunction('Servicos.api_ProjetoExcluir', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIProjeto.Excluir(const a_Objeto: String): TRecibo;

  var t_Modelo: TProjetoExcluir;

begin
  t_Modelo := TProjetoExcluir.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Excluir(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;


end.
