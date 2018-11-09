unit api.controller.persona.Departamento;

interface

  uses
    System.SysUtils,

    api.model.persona.Departamento,
    api.model.recibo,
    api.dao,
    api.utils,
    api.command,

    Nasajon.Sdk.Helpers.Rest.Json.Generics    

    ;

  type
    TAPIDepartamento = class(TInterfacedObject, ICommandAPI)


      public

        function execute(const a_api: String; const a_param: String): TRecibo; overload;
        function execute(const a_param: TObject): TRecibo; overload;

        function Novo(const a_Objeto: String): TRecibo; overload;
        function Novo(const a_Objeto: TDepartamentoNovo): TRecibo; overload;

        function Alterar(const a_Objeto: String): TRecibo; overload;
        function Alterar(const a_Objeto: TDepartamentoAlterar): TRecibo; overload;

        function Excluir(const a_Objeto: String): TRecibo; overload;
        function Excluir(const a_Objeto: TDepartamentoExcluir): TRecibo; overload;

        
    end;

implementation

{ TAPIpersona.Departamento }

function TAPIDepartamento.execute(const a_api: String; const a_param: String): TRecibo;
begin
  if (UpperCase(a_api) = 'DEPARTAMENTONOVO')
    then begin
       Result := Self.Novo(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'DEPARTAMENTOALTERAR')
    then begin
       Result := Self.Alterar(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'DEPARTAMENTOEXCLUIR')
    then begin
       Result := Self.Excluir(a_Param);
       Exit();
    end;


end;

function TAPIDepartamento.execute(const a_param: TObject): TRecibo;
begin
  if (a_param is TDepartamentoNovo)
    then begin
       Result := Self.Novo(a_Param as TDepartamentoNovo);
       Exit();
    end;

  if (a_param is TDepartamentoAlterar)
    then begin
       Result := Self.Alterar(a_Param as TDepartamentoAlterar);
       Exit();
    end;

  if (a_param is TDepartamentoExcluir)
    then begin
       Result := Self.Excluir(a_Param as TDepartamentoExcluir);
       Exit();
    end;


end;

function TAPIDepartamento.Novo(const a_Objeto: TDepartamentoNovo): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_DepartamentoNovo', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIDepartamento.Novo(const a_Objeto: String): TRecibo;

  var t_Modelo: TDepartamentoNovo;

begin
  t_Modelo := TDepartamentoNovo.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Novo(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIDepartamento.Alterar(const a_Objeto: TDepartamentoAlterar): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_DepartamentoAlterar', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIDepartamento.Alterar(const a_Objeto: String): TRecibo;

  var t_Modelo: TDepartamentoAlterar;

begin
  t_Modelo := TDepartamentoAlterar.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Alterar(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIDepartamento.Excluir(const a_Objeto: TDepartamentoExcluir): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_DepartamentoExcluir', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIDepartamento.Excluir(const a_Objeto: String): TRecibo;

  var t_Modelo: TDepartamentoExcluir;

begin
  t_Modelo := TDepartamentoExcluir.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Excluir(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;


end.
