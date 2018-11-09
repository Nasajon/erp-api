unit api.controller.ns.Participante;

interface

  uses
    System.SysUtils,

    api.model.ns.Participante,
    api.model.recibo,
    api.dao,
    api.utils,
    api.command,

    Nasajon.Sdk.Helpers.Rest.Json.Generics    

    ;

  type
    TAPIParticipante = class(TInterfacedObject, ICommandAPI)


      public

        function execute(const a_api: String; const a_param: String): TRecibo; overload;
        function execute(const a_param: TObject): TRecibo; overload;

        function Recuperar(const a_Objeto: String): TRecibo; overload;
        function Recuperar(const a_Objeto: TParticipanteRecuperar): TRecibo; overload;

        
    end;

implementation

{ TAPIns.Participante }

function TAPIParticipante.execute(const a_api: String; const a_param: String): TRecibo;
begin
  if (UpperCase(a_api) = 'PARTICIPANTERECUPERAR')
    then begin
       Result := Self.Recuperar(a_Param);
       Exit();
    end;


end;

function TAPIParticipante.execute(const a_param: TObject): TRecibo;
begin
  if (a_param is TParticipanteRecuperar)
    then begin
       Result := Self.Recuperar(a_Param as TParticipanteRecuperar);
       Exit();
    end;


end;

function TAPIParticipante.Recuperar(const a_Objeto: TParticipanteRecuperar): TRecibo;
begin
  Result := TDAO.callFunction('ns.api_ParticipanteRecuperar', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIParticipante.Recuperar(const a_Objeto: String): TRecibo;

  var t_Modelo: TParticipanteRecuperar;

begin
  t_Modelo := TParticipanteRecuperar.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Recuperar(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;


end.
