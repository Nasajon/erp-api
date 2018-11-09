unit api.controller.persona.NaturezaJuridica;

interface

  uses
    System.SysUtils,

    api.model.persona.NaturezaJuridica,
    api.model.recibo,
    api.dao,
    api.utils,
    api.command,

    Nasajon.Sdk.Helpers.Rest.Json.Generics    

    ;

  type
    TAPINaturezaJuridica = class(TInterfacedObject, ICommandAPI)


      public

        function execute(const a_api: String; const a_param: String): TRecibo; overload;
        function execute(const a_param: TObject): TRecibo; overload;

        function Novo(const a_Objeto: String): TRecibo; overload;
        function Novo(const a_Objeto: TNaturezaJuridicaNovo): TRecibo; overload;

        function Alterar(const a_Objeto: String): TRecibo; overload;
        function Alterar(const a_Objeto: TNaturezaJuridicaAlterar): TRecibo; overload;

        function Excluir(const a_Objeto: String): TRecibo; overload;
        function Excluir(const a_Objeto: TNaturezaJuridicaExcluir): TRecibo; overload;

        
    end;

implementation

{ TAPIpersona.NaturezaJuridica }

function TAPINaturezaJuridica.execute(const a_api: String; const a_param: String): TRecibo;
begin
  if (UpperCase(a_api) = 'NATUREZAJURIDICANOVO')
    then begin
       Result := Self.Novo(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'NATUREZAJURIDICAALTERAR')
    then begin
       Result := Self.Alterar(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'NATUREZAJURIDICAEXCLUIR')
    then begin
       Result := Self.Excluir(a_Param);
       Exit();
    end;


end;

function TAPINaturezaJuridica.execute(const a_param: TObject): TRecibo;
begin
  if (a_param is TNaturezaJuridicaNovo)
    then begin
       Result := Self.Novo(a_Param as TNaturezaJuridicaNovo);
       Exit();
    end;

  if (a_param is TNaturezaJuridicaAlterar)
    then begin
       Result := Self.Alterar(a_Param as TNaturezaJuridicaAlterar);
       Exit();
    end;

  if (a_param is TNaturezaJuridicaExcluir)
    then begin
       Result := Self.Excluir(a_Param as TNaturezaJuridicaExcluir);
       Exit();
    end;


end;

function TAPINaturezaJuridica.Novo(const a_Objeto: TNaturezaJuridicaNovo): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_NaturezaJuridicaNovo', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPINaturezaJuridica.Novo(const a_Objeto: String): TRecibo;

  var t_Modelo: TNaturezaJuridicaNovo;

begin
  t_Modelo := TNaturezaJuridicaNovo.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Novo(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPINaturezaJuridica.Alterar(const a_Objeto: TNaturezaJuridicaAlterar): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_NaturezaJuridicaAlterar', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPINaturezaJuridica.Alterar(const a_Objeto: String): TRecibo;

  var t_Modelo: TNaturezaJuridicaAlterar;

begin
  t_Modelo := TNaturezaJuridicaAlterar.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Alterar(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPINaturezaJuridica.Excluir(const a_Objeto: TNaturezaJuridicaExcluir): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_NaturezaJuridicaExcluir', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPINaturezaJuridica.Excluir(const a_Objeto: String): TRecibo;

  var t_Modelo: TNaturezaJuridicaExcluir;

begin
  t_Modelo := TNaturezaJuridicaExcluir.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Excluir(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;


end.
