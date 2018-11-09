unit api.controller.persona.ConcessionariaValeTransporte;

interface

  uses
    System.SysUtils,

    api.model.persona.ConcessionariaValeTransporte,
    api.model.recibo,
    api.dao,
    api.utils,
    api.command,

    Nasajon.Sdk.Helpers.Rest.Json.Generics    

    ;

  type
    TAPIConcessionariaValeTransporte = class(TInterfacedObject, ICommandAPI)


      public

        function execute(const a_api: String; const a_param: String): TRecibo; overload;
        function execute(const a_param: TObject): TRecibo; overload;

        function Novo(const a_Objeto: String): TRecibo; overload;
        function Novo(const a_Objeto: TConcessionariaValeTransporteNovo): TRecibo; overload;

        function Alterar(const a_Objeto: String): TRecibo; overload;
        function Alterar(const a_Objeto: TConcessionariaValeTransporteAlterar): TRecibo; overload;

        function Excluir(const a_Objeto: String): TRecibo; overload;
        function Excluir(const a_Objeto: TConcessionariaValeTransporteExcluir): TRecibo; overload;

        
    end;

implementation

{ TAPIpersona.ConcessionariaValeTransporte }

function TAPIConcessionariaValeTransporte.execute(const a_api: String; const a_param: String): TRecibo;
begin
  if (UpperCase(a_api) = 'CONCESSIONARIAVALETRANSPORTENOVO')
    then begin
       Result := Self.Novo(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'CONCESSIONARIAVALETRANSPORTEALTERAR')
    then begin
       Result := Self.Alterar(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'CONCESSIONARIAVALETRANSPORTEEXCLUIR')
    then begin
       Result := Self.Excluir(a_Param);
       Exit();
    end;


end;

function TAPIConcessionariaValeTransporte.execute(const a_param: TObject): TRecibo;
begin
  if (a_param is TConcessionariaValeTransporteNovo)
    then begin
       Result := Self.Novo(a_Param as TConcessionariaValeTransporteNovo);
       Exit();
    end;

  if (a_param is TConcessionariaValeTransporteAlterar)
    then begin
       Result := Self.Alterar(a_Param as TConcessionariaValeTransporteAlterar);
       Exit();
    end;

  if (a_param is TConcessionariaValeTransporteExcluir)
    then begin
       Result := Self.Excluir(a_Param as TConcessionariaValeTransporteExcluir);
       Exit();
    end;


end;

function TAPIConcessionariaValeTransporte.Novo(const a_Objeto: TConcessionariaValeTransporteNovo): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_ConcessionariaValeTransporteNovo', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIConcessionariaValeTransporte.Novo(const a_Objeto: String): TRecibo;

  var t_Modelo: TConcessionariaValeTransporteNovo;

begin
  t_Modelo := TConcessionariaValeTransporteNovo.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Novo(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIConcessionariaValeTransporte.Alterar(const a_Objeto: TConcessionariaValeTransporteAlterar): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_ConcessionariaValeTransporteAlterar', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIConcessionariaValeTransporte.Alterar(const a_Objeto: String): TRecibo;

  var t_Modelo: TConcessionariaValeTransporteAlterar;

begin
  t_Modelo := TConcessionariaValeTransporteAlterar.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Alterar(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIConcessionariaValeTransporte.Excluir(const a_Objeto: TConcessionariaValeTransporteExcluir): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_ConcessionariaValeTransporteExcluir', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIConcessionariaValeTransporte.Excluir(const a_Objeto: String): TRecibo;

  var t_Modelo: TConcessionariaValeTransporteExcluir;

begin
  t_Modelo := TConcessionariaValeTransporteExcluir.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Excluir(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;


end.
