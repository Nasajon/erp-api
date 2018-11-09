unit api.controller.ns.Contato;

interface

  uses
    System.SysUtils,

    api.model.ns.Contato,
    api.model.recibo,
    api.dao,
    api.utils,
    api.command,

    Nasajon.Sdk.Helpers.Rest.Json.Generics    

    ;

  type
    TAPIContato = class(TInterfacedObject, ICommandAPI)


      public

        function execute(const a_api: String; const a_param: String): TRecibo; overload;
        function execute(const a_param: TObject): TRecibo; overload;

        function Novo(const a_Objeto: String): TRecibo; overload;
        function Novo(const a_Objeto: TContatoNovo): TRecibo; overload;

        function Alterar(const a_Objeto: String): TRecibo; overload;
        function Alterar(const a_Objeto: TContatoAlterar): TRecibo; overload;

        function Excluir(const a_Objeto: String): TRecibo; overload;
        function Excluir(const a_Objeto: TContatoExcluir): TRecibo; overload;

        
    end;

implementation

{ TAPIns.Contato }

function TAPIContato.execute(const a_api: String; const a_param: String): TRecibo;
begin
  if (UpperCase(a_api) = 'CONTATONOVO')
    then begin
       Result := Self.Novo(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'CONTATOALTERAR')
    then begin
       Result := Self.Alterar(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'CONTATOEXCLUIR')
    then begin
       Result := Self.Excluir(a_Param);
       Exit();
    end;


end;

function TAPIContato.execute(const a_param: TObject): TRecibo;
begin
  if (a_param is TContatoNovo)
    then begin
       Result := Self.Novo(a_Param as TContatoNovo);
       Exit();
    end;

  if (a_param is TContatoAlterar)
    then begin
       Result := Self.Alterar(a_Param as TContatoAlterar);
       Exit();
    end;

  if (a_param is TContatoExcluir)
    then begin
       Result := Self.Excluir(a_Param as TContatoExcluir);
       Exit();
    end;


end;

function TAPIContato.Novo(const a_Objeto: TContatoNovo): TRecibo;
begin
  Result := TDAO.callFunction('ns.api_ContatoNovo', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIContato.Novo(const a_Objeto: String): TRecibo;

  var t_Modelo: TContatoNovo;

begin
  t_Modelo := TContatoNovo.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Novo(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIContato.Alterar(const a_Objeto: TContatoAlterar): TRecibo;
begin
  Result := TDAO.callFunction('ns.api_ContatoAlterar', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIContato.Alterar(const a_Objeto: String): TRecibo;

  var t_Modelo: TContatoAlterar;

begin
  t_Modelo := TContatoAlterar.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Alterar(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIContato.Excluir(const a_Objeto: TContatoExcluir): TRecibo;
begin
  Result := TDAO.callFunction('ns.api_ContatoExcluir', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIContato.Excluir(const a_Objeto: String): TRecibo;

  var t_Modelo: TContatoExcluir;

begin
  t_Modelo := TContatoExcluir.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Excluir(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;


end.
