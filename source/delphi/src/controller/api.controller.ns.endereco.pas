unit api.controller.ns.Endereco;

interface

  uses
    System.SysUtils,

    api.model.ns.Endereco,
    api.model.recibo,
    api.dao,
    api.utils,
    api.command,

    Nasajon.Sdk.Helpers.Rest.Json.Generics    

    ;

  type
    TAPIEndereco = class(TInterfacedObject, ICommandAPI)


      public

        function execute(const a_api: String; const a_param: String): TRecibo; overload;
        function execute(const a_param: TObject): TRecibo; overload;

        function Excluir(const a_Objeto: String): TRecibo; overload;
        function Excluir(const a_Objeto: TEnderecoExcluir): TRecibo; overload;

        
    end;

implementation

{ TAPIns.Endereco }

function TAPIEndereco.execute(const a_api: String; const a_param: String): TRecibo;
begin
  if (UpperCase(a_api) = 'ENDERECOEXCLUIR')
    then begin
       Result := Self.Excluir(a_Param);
       Exit();
    end;


end;

function TAPIEndereco.execute(const a_param: TObject): TRecibo;
begin
  if (a_param is TEnderecoExcluir)
    then begin
       Result := Self.Excluir(a_Param as TEnderecoExcluir);
       Exit();
    end;


end;

function TAPIEndereco.Excluir(const a_Objeto: TEnderecoExcluir): TRecibo;
begin
  Result := TDAO.callFunction('ns.api_EnderecoExcluir', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIEndereco.Excluir(const a_Objeto: String): TRecibo;

  var t_Modelo: TEnderecoExcluir;

begin
  t_Modelo := TEnderecoExcluir.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Excluir(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;


end.
