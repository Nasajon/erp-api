unit api.controller.persona.TarifaConcessionariaValeTransporte;

interface

  uses
    System.SysUtils,

    api.model.persona.TarifaConcessionariaValeTransporte,
    api.model.recibo,
    api.dao,
    api.utils,
    api.command,

    Nasajon.Sdk.Helpers.Rest.Json.Generics    

    ;

  type
    TAPITarifaConcessionariaValeTransporte = class(TInterfacedObject, ICommandAPI)


      public

        function execute(const a_api: String; const a_param: String): TRecibo; overload;
        function execute(const a_param: TObject): TRecibo; overload;

        function Novo(const a_Objeto: String): TRecibo; overload;
        function Novo(const a_Objeto: TTarifaConcessionariaValeTransporteNovo): TRecibo; overload;

        function AlterarValor(const a_Objeto: String): TRecibo; overload;
        function AlterarValor(const a_Objeto: TTarifaConcessionariaValeTransporteAlterarValor): TRecibo; overload;

        function AlterarCodigoExterno(const a_Objeto: String): TRecibo; overload;
        function AlterarCodigoExterno(const a_Objeto: TTarifaConcessionariaValeTransporteAlterarCodigoExterno): TRecibo; overload;

        function Excluir(const a_Objeto: String): TRecibo; overload;
        function Excluir(const a_Objeto: TTarifaConcessionariaValeTransporteExcluir): TRecibo; overload;

        
    end;

implementation

{ TAPIpersona.TarifaConcessionariaValeTransporte }

function TAPITarifaConcessionariaValeTransporte.execute(const a_api: String; const a_param: String): TRecibo;
begin
  if (UpperCase(a_api) = 'TARIFACONCESSIONARIAVALETRANSPORTENOVO')
    then begin
       Result := Self.Novo(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'TARIFACONCESSIONARIAVALETRANSPORTEALTERARVALOR')
    then begin
       Result := Self.AlterarValor(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'TARIFACONCESSIONARIAVALETRANSPORTEALTERARCODIGOEXTERNO')
    then begin
       Result := Self.AlterarCodigoExterno(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'TARIFACONCESSIONARIAVALETRANSPORTEEXCLUIR')
    then begin
       Result := Self.Excluir(a_Param);
       Exit();
    end;


end;

function TAPITarifaConcessionariaValeTransporte.execute(const a_param: TObject): TRecibo;
begin
  if (a_param is TTarifaConcessionariaValeTransporteNovo)
    then begin
       Result := Self.Novo(a_Param as TTarifaConcessionariaValeTransporteNovo);
       Exit();
    end;

  if (a_param is TTarifaConcessionariaValeTransporteAlterarValor)
    then begin
       Result := Self.AlterarValor(a_Param as TTarifaConcessionariaValeTransporteAlterarValor);
       Exit();
    end;

  if (a_param is TTarifaConcessionariaValeTransporteAlterarCodigoExterno)
    then begin
       Result := Self.AlterarCodigoExterno(a_Param as TTarifaConcessionariaValeTransporteAlterarCodigoExterno);
       Exit();
    end;

  if (a_param is TTarifaConcessionariaValeTransporteExcluir)
    then begin
       Result := Self.Excluir(a_Param as TTarifaConcessionariaValeTransporteExcluir);
       Exit();
    end;


end;

function TAPITarifaConcessionariaValeTransporte.Novo(const a_Objeto: TTarifaConcessionariaValeTransporteNovo): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_TarifaConcessionariaValeTransporteNovo', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPITarifaConcessionariaValeTransporte.Novo(const a_Objeto: String): TRecibo;

  var t_Modelo: TTarifaConcessionariaValeTransporteNovo;

begin
  t_Modelo := TTarifaConcessionariaValeTransporteNovo.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Novo(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPITarifaConcessionariaValeTransporte.AlterarValor(const a_Objeto: TTarifaConcessionariaValeTransporteAlterarValor): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_TarifaConcessionariaValeTransporteAlterarValor', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPITarifaConcessionariaValeTransporte.AlterarValor(const a_Objeto: String): TRecibo;

  var t_Modelo: TTarifaConcessionariaValeTransporteAlterarValor;

begin
  t_Modelo := TTarifaConcessionariaValeTransporteAlterarValor.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarValor(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPITarifaConcessionariaValeTransporte.AlterarCodigoExterno(const a_Objeto: TTarifaConcessionariaValeTransporteAlterarCodigoExterno): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_TarifaConcessionariaValeTransporteAlterarCodigoExterno', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPITarifaConcessionariaValeTransporte.AlterarCodigoExterno(const a_Objeto: String): TRecibo;

  var t_Modelo: TTarifaConcessionariaValeTransporteAlterarCodigoExterno;

begin
  t_Modelo := TTarifaConcessionariaValeTransporteAlterarCodigoExterno.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarCodigoExterno(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPITarifaConcessionariaValeTransporte.Excluir(const a_Objeto: TTarifaConcessionariaValeTransporteExcluir): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_TarifaConcessionariaValeTransporteExcluir', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPITarifaConcessionariaValeTransporte.Excluir(const a_Objeto: String): TRecibo;

  var t_Modelo: TTarifaConcessionariaValeTransporteExcluir;

begin
  t_Modelo := TTarifaConcessionariaValeTransporteExcluir.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Excluir(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;


end.
