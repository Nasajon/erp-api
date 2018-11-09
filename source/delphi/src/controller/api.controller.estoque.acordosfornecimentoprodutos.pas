unit api.controller.estoque.AcordosFornecimentoProdutos;

interface

  uses
    System.SysUtils,

    api.model.estoque.AcordosFornecimentoProdutos,
    api.model.recibo,
    api.dao,
    api.utils,
    api.command,

    Nasajon.Sdk.Helpers.Rest.Json.Generics    

    ;

  type
    TAPIAcordosFornecimentoProdutos = class(TInterfacedObject, ICommandAPI)


      public

        function execute(const a_api: String; const a_param: String): TRecibo; overload;
        function execute(const a_param: TObject): TRecibo; overload;

        function Novo(const a_Objeto: String): TRecibo; overload;
        function Novo(const a_Objeto: TAcordosFornecimentoProdutosNovo): TRecibo; overload;

        
    end;

implementation

{ TAPIestoque.AcordosFornecimentoProdutos }

function TAPIAcordosFornecimentoProdutos.execute(const a_api: String; const a_param: String): TRecibo;
begin
  if (UpperCase(a_api) = 'ACORDOSFORNECIMENTOPRODUTOSNOVO')
    then begin
       Result := Self.Novo(a_Param);
       Exit();
    end;


end;

function TAPIAcordosFornecimentoProdutos.execute(const a_param: TObject): TRecibo;
begin
  if (a_param is TAcordosFornecimentoProdutosNovo)
    then begin
       Result := Self.Novo(a_Param as TAcordosFornecimentoProdutosNovo);
       Exit();
    end;


end;

function TAPIAcordosFornecimentoProdutos.Novo(const a_Objeto: TAcordosFornecimentoProdutosNovo): TRecibo;
begin
  Result := TDAO.callFunction('estoque.api_AcordosFornecimentoProdutosNovo', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIAcordosFornecimentoProdutos.Novo(const a_Objeto: String): TRecibo;

  var t_Modelo: TAcordosFornecimentoProdutosNovo;

begin
  t_Modelo := TAcordosFornecimentoProdutosNovo.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Novo(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;


end.
