unit api.command.client;

interface

  uses
    System.Generics.Collections,
    System.SysUtils,

    // uses

    api.command,
  	api.model.recibo;

  type
    TCommandClientAPI = class(TInterfacedObject, ICommandAPI)

      private

        var m_map: TDictionary<String, ICommandAPI>;

      	// var

      	// get      	

      public

        constructor Create(); overload;
        destructor Destroy(); override;

      	function execute(const a_api: String; const a_param: String): TRecibo; overload;
      	function execute(const a_param: TObject): TRecibo; overload;      	

    end;

implementation

constructor TCommandClientAPI.Create; 
begin
  inherited;

  Self.m_map := TDictionary<String, ICommandAPI>.Create(); 

// map
end;

destructor TCommandClientAPI.Destroy();
begin
  Self.m_map.Free();
  inherited;
end;

function TCommandClientAPI.execute(const a_api: String; const a_param: String): TRecibo; 

  var t_text: String;

begin
  t_text := UpperCase(a_api);
  Result := Self.m_map.Items[t_text].execute(a_api, a_param);
end;

function TCommandClientAPI.execute(const a_param: TObject): TRecibo; 

  var t_text: String;

begin
  t_text := UpperCase(Copy(a_param.ClassName, 2, Length(a_param.ClassName)));
  Result := Self.m_map.Items[t_text].execute(a_param);
end;

// get_imp

end.
