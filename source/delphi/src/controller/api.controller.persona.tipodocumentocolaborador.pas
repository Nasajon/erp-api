unit api.controller.persona.TipoDocumentoColaborador;

interface

  uses
    System.SysUtils,

    api.model.persona.TipoDocumentoColaborador,
    api.model.recibo,
    api.dao,
    api.utils,
    api.command,

    Nasajon.Sdk.Helpers.Rest.Json.Generics    

    ;

  type
    TAPITipoDocumentoColaborador = class(TInterfacedObject, ICommandAPI)


      public

        function execute(const a_api: String; const a_param: String): TRecibo; overload;
        function execute(const a_param: TObject): TRecibo; overload;

        function Novo(const a_Objeto: String): TRecibo; overload;
        function Novo(const a_Objeto: TTipoDocumentoColaboradorNovo): TRecibo; overload;

        function Alterar(const a_Objeto: String): TRecibo; overload;
        function Alterar(const a_Objeto: TTipoDocumentoColaboradorAlterar): TRecibo; overload;

        function Excluir(const a_Objeto: String): TRecibo; overload;
        function Excluir(const a_Objeto: TTipoDocumentoColaboradorExcluir): TRecibo; overload;

        
    end;

implementation

{ TAPIpersona.TipoDocumentoColaborador }

function TAPITipoDocumentoColaborador.execute(const a_api: String; const a_param: String): TRecibo;
begin
  if (UpperCase(a_api) = 'TIPODOCUMENTOCOLABORADORNOVO')
    then begin
       Result := Self.Novo(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'TIPODOCUMENTOCOLABORADORALTERAR')
    then begin
       Result := Self.Alterar(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'TIPODOCUMENTOCOLABORADOREXCLUIR')
    then begin
       Result := Self.Excluir(a_Param);
       Exit();
    end;


end;

function TAPITipoDocumentoColaborador.execute(const a_param: TObject): TRecibo;
begin
  if (a_param is TTipoDocumentoColaboradorNovo)
    then begin
       Result := Self.Novo(a_Param as TTipoDocumentoColaboradorNovo);
       Exit();
    end;

  if (a_param is TTipoDocumentoColaboradorAlterar)
    then begin
       Result := Self.Alterar(a_Param as TTipoDocumentoColaboradorAlterar);
       Exit();
    end;

  if (a_param is TTipoDocumentoColaboradorExcluir)
    then begin
       Result := Self.Excluir(a_Param as TTipoDocumentoColaboradorExcluir);
       Exit();
    end;


end;

function TAPITipoDocumentoColaborador.Novo(const a_Objeto: TTipoDocumentoColaboradorNovo): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_TipoDocumentoColaboradorNovo', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPITipoDocumentoColaborador.Novo(const a_Objeto: String): TRecibo;

  var t_Modelo: TTipoDocumentoColaboradorNovo;

begin
  t_Modelo := TTipoDocumentoColaboradorNovo.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Novo(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPITipoDocumentoColaborador.Alterar(const a_Objeto: TTipoDocumentoColaboradorAlterar): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_TipoDocumentoColaboradorAlterar', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPITipoDocumentoColaborador.Alterar(const a_Objeto: String): TRecibo;

  var t_Modelo: TTipoDocumentoColaboradorAlterar;

begin
  t_Modelo := TTipoDocumentoColaboradorAlterar.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Alterar(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPITipoDocumentoColaborador.Excluir(const a_Objeto: TTipoDocumentoColaboradorExcluir): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_TipoDocumentoColaboradorExcluir', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPITipoDocumentoColaborador.Excluir(const a_Objeto: String): TRecibo;

  var t_Modelo: TTipoDocumentoColaboradorExcluir;

begin
  t_Modelo := TTipoDocumentoColaboradorExcluir.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Excluir(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;


end.
