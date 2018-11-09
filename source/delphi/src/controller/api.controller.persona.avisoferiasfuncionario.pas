unit api.controller.persona.AvisoFeriasFuncionario;

interface

  uses
    System.SysUtils,

    api.model.persona.AvisoFeriasFuncionario,
    api.model.recibo,
    api.dao,
    api.utils,
    api.command,

    Nasajon.Sdk.Helpers.Rest.Json.Generics    

    ;

  type
    TAPIAvisoFeriasFuncionario = class(TInterfacedObject, ICommandAPI)


      public

        function execute(const a_api: String; const a_param: String): TRecibo; overload;
        function execute(const a_param: TObject): TRecibo; overload;

        function Novo(const a_Objeto: String): TRecibo; overload;
        function Novo(const a_Objeto: TAvisoFeriasFuncionarioNovo): TRecibo; overload;

        function Alterar(const a_Objeto: String): TRecibo; overload;
        function Alterar(const a_Objeto: TAvisoFeriasFuncionarioAlterar): TRecibo; overload;

        function Excluir(const a_Objeto: String): TRecibo; overload;
        function Excluir(const a_Objeto: TAvisoFeriasFuncionarioExcluir): TRecibo; overload;

        
    end;

implementation

{ TAPIpersona.AvisoFeriasFuncionario }

function TAPIAvisoFeriasFuncionario.execute(const a_api: String; const a_param: String): TRecibo;
begin
  if (UpperCase(a_api) = 'AVISOFERIASFUNCIONARIONOVO')
    then begin
       Result := Self.Novo(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'AVISOFERIASFUNCIONARIOALTERAR')
    then begin
       Result := Self.Alterar(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'AVISOFERIASFUNCIONARIOEXCLUIR')
    then begin
       Result := Self.Excluir(a_Param);
       Exit();
    end;


end;

function TAPIAvisoFeriasFuncionario.execute(const a_param: TObject): TRecibo;
begin
  if (a_param is TAvisoFeriasFuncionarioNovo)
    then begin
       Result := Self.Novo(a_Param as TAvisoFeriasFuncionarioNovo);
       Exit();
    end;

  if (a_param is TAvisoFeriasFuncionarioAlterar)
    then begin
       Result := Self.Alterar(a_Param as TAvisoFeriasFuncionarioAlterar);
       Exit();
    end;

  if (a_param is TAvisoFeriasFuncionarioExcluir)
    then begin
       Result := Self.Excluir(a_Param as TAvisoFeriasFuncionarioExcluir);
       Exit();
    end;


end;

function TAPIAvisoFeriasFuncionario.Novo(const a_Objeto: TAvisoFeriasFuncionarioNovo): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_AvisoFeriasFuncionarioNovo', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIAvisoFeriasFuncionario.Novo(const a_Objeto: String): TRecibo;

  var t_Modelo: TAvisoFeriasFuncionarioNovo;

begin
  t_Modelo := TAvisoFeriasFuncionarioNovo.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Novo(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIAvisoFeriasFuncionario.Alterar(const a_Objeto: TAvisoFeriasFuncionarioAlterar): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_AvisoFeriasFuncionarioAlterar', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIAvisoFeriasFuncionario.Alterar(const a_Objeto: String): TRecibo;

  var t_Modelo: TAvisoFeriasFuncionarioAlterar;

begin
  t_Modelo := TAvisoFeriasFuncionarioAlterar.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Alterar(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIAvisoFeriasFuncionario.Excluir(const a_Objeto: TAvisoFeriasFuncionarioExcluir): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_AvisoFeriasFuncionarioExcluir', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIAvisoFeriasFuncionario.Excluir(const a_Objeto: String): TRecibo;

  var t_Modelo: TAvisoFeriasFuncionarioExcluir;

begin
  t_Modelo := TAvisoFeriasFuncionarioExcluir.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Excluir(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;


end.
