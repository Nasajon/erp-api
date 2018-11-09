unit api.controller.financas.ItemEmprestimoPrestacao;

interface

  uses
    System.SysUtils,
    api.model.financas.ItemEmprestimoPrestacao,
    api.model.recibo,
    api.dao,
    api.utils,
    api.command,

    Nasajon.Sdk.Helpers.Rest.Json.Generics    

    ;

  type
    TAPIItemEmprestimoPrestacao = class(TInterfacedObject, ICommandAPI)


      public

        function execute(const a_api: String; const a_param: String): TRecibo; overload;
        function execute(const a_param: TObject): TRecibo; overload;

        function Novo(const a_Objeto: String): TRecibo; overload;
        function Novo(const a_Objeto: TItemEmprestimoPrestacaoNovo): TRecibo; overload;

        
    end;

implementation

{ TAPIfinancas.ItemEmprestimoPrestacao }

function TAPIItemEmprestimoPrestacao.execute(const a_api: String; const a_param: String): TRecibo;
begin
  if (UpperCase(a_api) = 'ITEMEMPRESTIMOPRESTACAONOVO')
    then begin
       Result := Self.Novo(a_Param);
       Exit();
    end;


end;

function TAPIItemEmprestimoPrestacao.execute(const a_param: TObject): TRecibo;
begin
  if (a_param is TItemEmprestimoPrestacaoNovo)
    then begin
       Result := Self.Novo(a_Param as TItemEmprestimoPrestacaoNovo);
       Exit();
    end;


end;

function TAPIItemEmprestimoPrestacao.Novo(const a_Objeto: TItemEmprestimoPrestacaoNovo): TRecibo;
begin
  Result := TDAO.callFunction('financas.api_ItemEmprestimoPrestacaoNovo', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIItemEmprestimoPrestacao.Novo(const a_Objeto: String): TRecibo;

  var t_Modelo: TItemEmprestimoPrestacaoNovo;

begin
  t_Modelo := TItemEmprestimoPrestacaoNovo.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Novo(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;


end.
