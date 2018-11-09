unit api.controller.persona.FaltaFuncionario;

interface

  uses
    System.SysUtils,

    api.model.persona.FaltaFuncionario,
    api.model.recibo,
    api.dao,
    api.utils,
    api.command,

    Nasajon.Sdk.Helpers.Rest.Json.Generics    

    ;

  type
    TAPIFaltaFuncionario = class(TInterfacedObject, ICommandAPI)


      public

        function execute(const a_api: String; const a_param: String): TRecibo; overload;
        function execute(const a_param: TObject): TRecibo; overload;

        function Novo(const a_Objeto: String): TRecibo; overload;
        function Novo(const a_Objeto: TFaltaFuncionarioNovo): TRecibo; overload;

        function Alterar(const a_Objeto: String): TRecibo; overload;
        function Alterar(const a_Objeto: TFaltaFuncionarioAlterar): TRecibo; overload;

        function Excluir(const a_Objeto: String): TRecibo; overload;
        function Excluir(const a_Objeto: TFaltaFuncionarioExcluir): TRecibo; overload;

        
    end;

implementation

{ TAPIpersona.FaltaFuncionario }

function TAPIFaltaFuncionario.execute(const a_api: String; const a_param: String): TRecibo;
begin
  if (UpperCase(a_api) = 'FALTAFUNCIONARIONOVO')
    then begin
       Result := Self.Novo(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'FALTAFUNCIONARIOALTERAR')
    then begin
       Result := Self.Alterar(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'FALTAFUNCIONARIOEXCLUIR')
    then begin
       Result := Self.Excluir(a_Param);
       Exit();
    end;


end;

function TAPIFaltaFuncionario.execute(const a_param: TObject): TRecibo;
begin
  if (a_param is TFaltaFuncionarioNovo)
    then begin
       Result := Self.Novo(a_Param as TFaltaFuncionarioNovo);
       Exit();
    end;

  if (a_param is TFaltaFuncionarioAlterar)
    then begin
       Result := Self.Alterar(a_Param as TFaltaFuncionarioAlterar);
       Exit();
    end;

  if (a_param is TFaltaFuncionarioExcluir)
    then begin
       Result := Self.Excluir(a_Param as TFaltaFuncionarioExcluir);
       Exit();
    end;


end;

function TAPIFaltaFuncionario.Novo(const a_Objeto: TFaltaFuncionarioNovo): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_FaltaFuncionarioNovo', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIFaltaFuncionario.Novo(const a_Objeto: String): TRecibo;

  var t_Modelo: TFaltaFuncionarioNovo;

begin
  t_Modelo := TFaltaFuncionarioNovo.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Novo(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIFaltaFuncionario.Alterar(const a_Objeto: TFaltaFuncionarioAlterar): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_FaltaFuncionarioAlterar', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIFaltaFuncionario.Alterar(const a_Objeto: String): TRecibo;

  var t_Modelo: TFaltaFuncionarioAlterar;

begin
  t_Modelo := TFaltaFuncionarioAlterar.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Alterar(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIFaltaFuncionario.Excluir(const a_Objeto: TFaltaFuncionarioExcluir): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_FaltaFuncionarioExcluir', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIFaltaFuncionario.Excluir(const a_Objeto: String): TRecibo;

  var t_Modelo: TFaltaFuncionarioExcluir;

begin
  t_Modelo := TFaltaFuncionarioExcluir.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Excluir(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;


end.
