unit api.controller.persona.EscalaFolgaFuncionario;

interface

  uses
    System.SysUtils,

    api.model.persona.EscalaFolgaFuncionario,
    api.model.recibo,
    api.dao,
    api.utils,
    api.command,

    Nasajon.Sdk.Helpers.Rest.Json.Generics    

    ;

  type
    TAPIEscalaFolgaFuncionario = class(TInterfacedObject, ICommandAPI)


      public

        function execute(const a_api: String; const a_param: String): TRecibo; overload;
        function execute(const a_param: TObject): TRecibo; overload;

        function Novo(const a_Objeto: String): TRecibo; overload;
        function Novo(const a_Objeto: TEscalaFolgaFuncionarioNovo): TRecibo; overload;

        function Alterar(const a_Objeto: String): TRecibo; overload;
        function Alterar(const a_Objeto: TEscalaFolgaFuncionarioAlterar): TRecibo; overload;

        function Excluir(const a_Objeto: String): TRecibo; overload;
        function Excluir(const a_Objeto: TEscalaFolgaFuncionarioExcluir): TRecibo; overload;

        
    end;

implementation

{ TAPIpersona.EscalaFolgaFuncionario }

function TAPIEscalaFolgaFuncionario.execute(const a_api: String; const a_param: String): TRecibo;
begin
  if (UpperCase(a_api) = 'ESCALAFOLGAFUNCIONARIONOVO')
    then begin
       Result := Self.Novo(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'ESCALAFOLGAFUNCIONARIOALTERAR')
    then begin
       Result := Self.Alterar(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'ESCALAFOLGAFUNCIONARIOEXCLUIR')
    then begin
       Result := Self.Excluir(a_Param);
       Exit();
    end;


end;

function TAPIEscalaFolgaFuncionario.execute(const a_param: TObject): TRecibo;
begin
  if (a_param is TEscalaFolgaFuncionarioNovo)
    then begin
       Result := Self.Novo(a_Param as TEscalaFolgaFuncionarioNovo);
       Exit();
    end;

  if (a_param is TEscalaFolgaFuncionarioAlterar)
    then begin
       Result := Self.Alterar(a_Param as TEscalaFolgaFuncionarioAlterar);
       Exit();
    end;

  if (a_param is TEscalaFolgaFuncionarioExcluir)
    then begin
       Result := Self.Excluir(a_Param as TEscalaFolgaFuncionarioExcluir);
       Exit();
    end;


end;

function TAPIEscalaFolgaFuncionario.Novo(const a_Objeto: TEscalaFolgaFuncionarioNovo): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_EscalaFolgaFuncionarioNovo', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIEscalaFolgaFuncionario.Novo(const a_Objeto: String): TRecibo;

  var t_Modelo: TEscalaFolgaFuncionarioNovo;

begin
  t_Modelo := TEscalaFolgaFuncionarioNovo.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Novo(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIEscalaFolgaFuncionario.Alterar(const a_Objeto: TEscalaFolgaFuncionarioAlterar): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_EscalaFolgaFuncionarioAlterar', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIEscalaFolgaFuncionario.Alterar(const a_Objeto: String): TRecibo;

  var t_Modelo: TEscalaFolgaFuncionarioAlterar;

begin
  t_Modelo := TEscalaFolgaFuncionarioAlterar.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Alterar(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIEscalaFolgaFuncionario.Excluir(const a_Objeto: TEscalaFolgaFuncionarioExcluir): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_EscalaFolgaFuncionarioExcluir', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIEscalaFolgaFuncionario.Excluir(const a_Objeto: String): TRecibo;

  var t_Modelo: TEscalaFolgaFuncionarioExcluir;

begin
  t_Modelo := TEscalaFolgaFuncionarioExcluir.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Excluir(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;


end.
