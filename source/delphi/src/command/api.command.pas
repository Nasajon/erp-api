unit api.command;

interface

  uses
    api.model.recibo;

  type
    ICommandAPI = interface
      ['{237920C2-D610-4E9E-97A7-CCBD13D85FA9}']

      function execute(
        const a_api: String;
        const a_param: String        
      ): TRecibo; overload;

      function execute(
        const a_param: TObject
      ): TRecibo; overload;

    end;

implementation

end.
