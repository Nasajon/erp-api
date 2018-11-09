unit api.controller.persona.ReajusteSindicato;

interface

  uses
    System.SysUtils,

    api.model.persona.ReajusteSindicato,
    api.model.recibo,
    api.dao,
    api.utils,
    api.command,

    Nasajon.Sdk.Helpers.Rest.Json.Generics    

    ;

  type
    TAPIReajusteSindicato = class(TInterfacedObject, ICommandAPI)


      public

        function execute(const a_api: String; const a_param: String): TRecibo; overload;
        function execute(const a_param: TObject): TRecibo; overload;

        function Novo(const a_Objeto: String): TRecibo; overload;
        function Novo(const a_Objeto: TReajusteSindicatoNovo): TRecibo; overload;

        function Alterar(const a_Objeto: String): TRecibo; overload;
        function Alterar(const a_Objeto: TReajusteSindicatoAlterar): TRecibo; overload;

        function Excluir(const a_Objeto: String): TRecibo; overload;
        function Excluir(const a_Objeto: TReajusteSindicatoExcluir): TRecibo; overload;

        
    end;

implementation

{ TAPIpersona.ReajusteSindicato }

function TAPIReajusteSindicato.execute(const a_api: String; const a_param: String): TRecibo;
begin
  if (UpperCase(a_api) = 'REAJUSTESINDICATONOVO')
    then begin
       Result := Self.Novo(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'REAJUSTESINDICATOALTERAR')
    then begin
       Result := Self.Alterar(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'REAJUSTESINDICATOEXCLUIR')
    then begin
       Result := Self.Excluir(a_Param);
       Exit();
    end;


end;

function TAPIReajusteSindicato.execute(const a_param: TObject): TRecibo;
begin
  if (a_param is TReajusteSindicatoNovo)
    then begin
       Result := Self.Novo(a_Param as TReajusteSindicatoNovo);
       Exit();
    end;

  if (a_param is TReajusteSindicatoAlterar)
    then begin
       Result := Self.Alterar(a_Param as TReajusteSindicatoAlterar);
       Exit();
    end;

  if (a_param is TReajusteSindicatoExcluir)
    then begin
       Result := Self.Excluir(a_Param as TReajusteSindicatoExcluir);
       Exit();
    end;


end;

function TAPIReajusteSindicato.Novo(const a_Objeto: TReajusteSindicatoNovo): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_ReajusteSindicatoNovo', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIReajusteSindicato.Novo(const a_Objeto: String): TRecibo;

  var t_Modelo: TReajusteSindicatoNovo;

begin
  t_Modelo := TReajusteSindicatoNovo.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Novo(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIReajusteSindicato.Alterar(const a_Objeto: TReajusteSindicatoAlterar): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_ReajusteSindicatoAlterar', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIReajusteSindicato.Alterar(const a_Objeto: String): TRecibo;

  var t_Modelo: TReajusteSindicatoAlterar;

begin
  t_Modelo := TReajusteSindicatoAlterar.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Alterar(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIReajusteSindicato.Excluir(const a_Objeto: TReajusteSindicatoExcluir): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_ReajusteSindicatoExcluir', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIReajusteSindicato.Excluir(const a_Objeto: String): TRecibo;

  var t_Modelo: TReajusteSindicatoExcluir;

begin
  t_Modelo := TReajusteSindicatoExcluir.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Excluir(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;


end.
