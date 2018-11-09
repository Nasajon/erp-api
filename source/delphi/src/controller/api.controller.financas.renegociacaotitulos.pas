unit api.controller.financas.RenegociacaoTitulos;

interface

  uses
    System.SysUtils,

    api.model.financas.RenegociacaoTitulos,
    api.model.recibo,
    api.dao,
    api.utils,
    api.command,

    Nasajon.Sdk.Helpers.Rest.Json.Generics    

    ;

  type
    TAPIRenegociacaoTitulos = class(TInterfacedObject, ICommandAPI)


      public

        function execute(const a_api: String; const a_param: String): TRecibo; overload;
        function execute(const a_param: TObject): TRecibo; overload;

        function Novo(const a_Objeto: String): TRecibo; overload;
        function Novo(const a_Objeto: TRenegociacaoTitulosNovo): TRecibo; overload;

        function Alterar(const a_Objeto: String): TRecibo; overload;
        function Alterar(const a_Objeto: TRenegociacaoTitulosAlterar): TRecibo; overload;

        function Excluir(const a_Objeto: String): TRecibo; overload;
        function Excluir(const a_Objeto: TRenegociacaoTitulosExcluir): TRecibo; overload;

        
    end;

implementation

{ TAPIfinancas.RenegociacaoTitulos }

function TAPIRenegociacaoTitulos.execute(const a_api: String; const a_param: String): TRecibo;
begin
  if (UpperCase(a_api) = 'RENEGOCIACAOTITULOSNOVO')
    then begin
       Result := Self.Novo(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'RENEGOCIACAOTITULOSALTERAR')
    then begin
       Result := Self.Alterar(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'RENEGOCIACAOTITULOSEXCLUIR')
    then begin
       Result := Self.Excluir(a_Param);
       Exit();
    end;


end;

function TAPIRenegociacaoTitulos.execute(const a_param: TObject): TRecibo;
begin
  if (a_param is TRenegociacaoTitulosNovo)
    then begin
       Result := Self.Novo(a_Param as TRenegociacaoTitulosNovo);
       Exit();
    end;

  if (a_param is TRenegociacaoTitulosAlterar)
    then begin
       Result := Self.Alterar(a_Param as TRenegociacaoTitulosAlterar);
       Exit();
    end;

  if (a_param is TRenegociacaoTitulosExcluir)
    then begin
       Result := Self.Excluir(a_Param as TRenegociacaoTitulosExcluir);
       Exit();
    end;


end;

function TAPIRenegociacaoTitulos.Novo(const a_Objeto: TRenegociacaoTitulosNovo): TRecibo;
begin
  Result := TDAO.callFunction('financas.api_RenegociacaoTitulosNovo', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIRenegociacaoTitulos.Novo(const a_Objeto: String): TRecibo;

  var t_Modelo: TRenegociacaoTitulosNovo;

begin
  t_Modelo := TRenegociacaoTitulosNovo.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Novo(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIRenegociacaoTitulos.Alterar(const a_Objeto: TRenegociacaoTitulosAlterar): TRecibo;
begin
  Result := TDAO.callFunction('financas.api_RenegociacaoTitulosAlterar', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIRenegociacaoTitulos.Alterar(const a_Objeto: String): TRecibo;

  var t_Modelo: TRenegociacaoTitulosAlterar;

begin
  t_Modelo := TRenegociacaoTitulosAlterar.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Alterar(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIRenegociacaoTitulos.Excluir(const a_Objeto: TRenegociacaoTitulosExcluir): TRecibo;
begin
  Result := TDAO.callFunction('financas.api_RenegociacaoTitulosExcluir', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIRenegociacaoTitulos.Excluir(const a_Objeto: String): TRecibo;

  var t_Modelo: TRenegociacaoTitulosExcluir;

begin
  t_Modelo := TRenegociacaoTitulosExcluir.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Excluir(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;


end.
