unit api.controller.Servicos.ProjetoHistorico;

interface

  uses
    System.SysUtils,

    api.model.Servicos.ProjetoHistorico,
    api.model.recibo,
    api.dao,
    api.utils,
    api.command,

    Nasajon.Sdk.Helpers.Rest.Json.Generics    

    ;

  type
    TAPIProjetoHistorico = class(TInterfacedObject, ICommandAPI)


      public

        function execute(const a_api: String; const a_param: String): TRecibo; overload;
        function execute(const a_param: TObject): TRecibo; overload;

        function Novo(const a_Objeto: String): TRecibo; overload;
        function Novo(const a_Objeto: TProjetoHistoricoNovo): TRecibo; overload;

        
    end;

implementation

{ TAPIServicos.ProjetoHistorico }

function TAPIProjetoHistorico.execute(const a_api: String; const a_param: String): TRecibo;
begin
  if (UpperCase(a_api) = 'PROJETOHISTORICONOVO')
    then begin
       Result := Self.Novo(a_Param);
       Exit();
    end;


end;

function TAPIProjetoHistorico.execute(const a_param: TObject): TRecibo;
begin
  if (a_param is TProjetoHistoricoNovo)
    then begin
       Result := Self.Novo(a_Param as TProjetoHistoricoNovo);
       Exit();
    end;


end;

function TAPIProjetoHistorico.Novo(const a_Objeto: TProjetoHistoricoNovo): TRecibo;
begin
  Result := TDAO.callFunction('Servicos.api_ProjetoHistoricoNovo', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIProjetoHistorico.Novo(const a_Objeto: String): TRecibo;

  var t_Modelo: TProjetoHistoricoNovo;

begin
  t_Modelo := TProjetoHistoricoNovo.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Novo(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;


end.
