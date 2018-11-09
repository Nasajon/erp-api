unit api.controller.$(negocio);

interface

  uses
    System.SysUtils,

    api.model.$(negocio),
    api.model.recibo,
    api.dao,
    api.utils,
    api.command,

    Nasajon.Sdk.Helpers.Rest.Json.Generics    

    ;

  type
    TAPI$(negocio.class) = class(TInterfacedObject, ICommandAPI)


      public

        function execute(const a_api: String; const a_param: String): TRecibo; overload;
        function execute(const a_param: TObject): TRecibo; overload;

        $(interface.metodos)
    end;

implementation

{ TAPI$(negocio) }

function TAPI$(negocio.class).execute(const a_api: String; const a_param: String): TRecibo;
begin
$(implementation.command.json)
end;

function TAPI$(negocio.class).execute(const a_param: TObject): TRecibo;
begin
$(implementation.command.object)
end;

$(implementation.metodos)
end.
