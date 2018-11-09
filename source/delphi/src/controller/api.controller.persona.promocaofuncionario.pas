unit api.controller.persona.PromocaoFuncionario;

interface

  uses
    System.SysUtils,

    api.model.persona.PromocaoFuncionario,
    api.model.recibo,
    api.dao,
    api.utils,
    api.command,

    Nasajon.Sdk.Helpers.Rest.Json.Generics    

    ;

  type
    TAPIPromocaoFuncionario = class(TInterfacedObject, ICommandAPI)


      public

        function execute(const a_api: String; const a_param: String): TRecibo; overload;
        function execute(const a_param: TObject): TRecibo; overload;

        function Nova(const a_Objeto: String): TRecibo; overload;
        function Nova(const a_Objeto: TPromocaoFuncionarioNova): TRecibo; overload;

        
    end;

implementation

{ TAPIpersona.PromocaoFuncionario }

function TAPIPromocaoFuncionario.execute(const a_api: String; const a_param: String): TRecibo;
begin
  if (UpperCase(a_api) = 'PROMOCAOFUNCIONARIONOVA')
    then begin
       Result := Self.Nova(a_Param);
       Exit();
    end;


end;

function TAPIPromocaoFuncionario.execute(const a_param: TObject): TRecibo;
begin
  if (a_param is TPromocaoFuncionarioNova)
    then begin
       Result := Self.Nova(a_Param as TPromocaoFuncionarioNova);
       Exit();
    end;


end;

function TAPIPromocaoFuncionario.Nova(const a_Objeto: TPromocaoFuncionarioNova): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_PromocaoFuncionarioNova', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIPromocaoFuncionario.Nova(const a_Objeto: String): TRecibo;

  var t_Modelo: TPromocaoFuncionarioNova;

begin
  t_Modelo := TPromocaoFuncionarioNova.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Nova(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;


end.
