unit api.controller.ns.configuracaocategoriaporclassfinan;

interface

  uses
    System.SysUtils,

    api.model.ns.configuracaocategoriaporclassfinan,
    api.model.recibo,
    api.dao,
    api.utils,
    api.command,

    Nasajon.Sdk.Helpers.Rest.Json.Generics    

    ;

  type
    TAPIconfiguracaocategoriaporclassfinan = class(TInterfacedObject, ICommandAPI)


      public

        function execute(const a_api: String; const a_param: String): TRecibo; overload;
        function execute(const a_param: TObject): TRecibo; overload;

        function Novo(const a_Objeto: String): TRecibo; overload;
        function Novo(const a_Objeto: TconfiguracaocategoriaporclassfinanNovo): TRecibo; overload;

        function Alterar(const a_Objeto: String): TRecibo; overload;
        function Alterar(const a_Objeto: TconfiguracaocategoriaporclassfinanAlterar): TRecibo; overload;

        function Excluir(const a_Objeto: String): TRecibo; overload;
        function Excluir(const a_Objeto: TconfiguracaocategoriaporclassfinanExcluir): TRecibo; overload;

        
    end;

implementation

{ TAPIns.configuracaocategoriaporclassfinan }

function TAPIconfiguracaocategoriaporclassfinan.execute(const a_api: String; const a_param: String): TRecibo;
begin
  if (UpperCase(a_api) = 'CONFIGURACAOCATEGORIAPORCLASSFINANNOVO')
    then begin
       Result := Self.Novo(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'CONFIGURACAOCATEGORIAPORCLASSFINANALTERAR')
    then begin
       Result := Self.Alterar(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'CONFIGURACAOCATEGORIAPORCLASSFINANEXCLUIR')
    then begin
       Result := Self.Excluir(a_Param);
       Exit();
    end;


end;

function TAPIconfiguracaocategoriaporclassfinan.execute(const a_param: TObject): TRecibo;
begin
  if (a_param is TconfiguracaocategoriaporclassfinanNovo)
    then begin
       Result := Self.Novo(a_Param as TconfiguracaocategoriaporclassfinanNovo);
       Exit();
    end;

  if (a_param is TconfiguracaocategoriaporclassfinanAlterar)
    then begin
       Result := Self.Alterar(a_Param as TconfiguracaocategoriaporclassfinanAlterar);
       Exit();
    end;

  if (a_param is TconfiguracaocategoriaporclassfinanExcluir)
    then begin
       Result := Self.Excluir(a_Param as TconfiguracaocategoriaporclassfinanExcluir);
       Exit();
    end;


end;

function TAPIconfiguracaocategoriaporclassfinan.Novo(const a_Objeto: TconfiguracaocategoriaporclassfinanNovo): TRecibo;
begin
  Result := TDAO.callFunction('ns.api_configuracaocategoriaporclassfinanNovo', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIconfiguracaocategoriaporclassfinan.Novo(const a_Objeto: String): TRecibo;

  var t_Modelo: TconfiguracaocategoriaporclassfinanNovo;

begin
  t_Modelo := TconfiguracaocategoriaporclassfinanNovo.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Novo(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIconfiguracaocategoriaporclassfinan.Alterar(const a_Objeto: TconfiguracaocategoriaporclassfinanAlterar): TRecibo;
begin
  Result := TDAO.callFunction('ns.api_configuracaocategoriaporclassfinanAlterar', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIconfiguracaocategoriaporclassfinan.Alterar(const a_Objeto: String): TRecibo;

  var t_Modelo: TconfiguracaocategoriaporclassfinanAlterar;

begin
  t_Modelo := TconfiguracaocategoriaporclassfinanAlterar.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Alterar(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIconfiguracaocategoriaporclassfinan.Excluir(const a_Objeto: TconfiguracaocategoriaporclassfinanExcluir): TRecibo;
begin
  Result := TDAO.callFunction('ns.api_configuracaocategoriaporclassfinanExcluir', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIconfiguracaocategoriaporclassfinan.Excluir(const a_Objeto: String): TRecibo;

  var t_Modelo: TconfiguracaocategoriaporclassfinanExcluir;

begin
  t_Modelo := TconfiguracaocategoriaporclassfinanExcluir.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Excluir(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;


end.
