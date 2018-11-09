unit api.controller.estoque.AcordosFornecimentoProdutosItens;

interface

  uses
    System.SysUtils,

    api.model.estoque.AcordosFornecimentoProdutosItens,
    api.model.recibo,
    api.dao,
    api.utils,
    api.command,

    Nasajon.Sdk.Helpers.Rest.Json.Generics    

    ;

  type
    TAPIAcordosFornecimentoProdutosItens = class(TInterfacedObject, ICommandAPI)


      public

        function execute(const a_api: String; const a_param: String): TRecibo; overload;
        function execute(const a_param: TObject): TRecibo; overload;

        function Novo(const a_Objeto: String): TRecibo; overload;
        function Novo(const a_Objeto: TAcordosFornecimentoProdutosItensNovo): TRecibo; overload;

        
    end;

implementation

{ TAPIestoque.AcordosFornecimentoProdutosItens }

function TAPIAcordosFornecimentoProdutosItens.execute(const a_api: String; const a_param: String): TRecibo;
begin
  if (UpperCase(a_api) = 'ACORDOSFORNECIMENTOPRODUTOSITENSNOVO')
    then begin
       Result := Self.Novo(a_Param);
       Exit();
    end;


end;

function TAPIAcordosFornecimentoProdutosItens.execute(const a_param: TObject): TRecibo;
begin
  if (a_param is TAcordosFornecimentoProdutosItensNovo)
    then begin
       Result := Self.Novo(a_Param as TAcordosFornecimentoProdutosItensNovo);
       Exit();
    end;


end;

function TAPIAcordosFornecimentoProdutosItens.Novo(const a_Objeto: TAcordosFornecimentoProdutosItensNovo): TRecibo;
begin
  Result := TDAO.callFunction('estoque.api_AcordosFornecimentoProdutosItensNovo', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIAcordosFornecimentoProdutosItens.Novo(const a_Objeto: String): TRecibo;

  var t_Modelo: TAcordosFornecimentoProdutosItensNovo;

begin
  t_Modelo := TAcordosFornecimentoProdutosItensNovo.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Novo(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;


end.
