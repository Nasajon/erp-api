unit api.controller.persona.AcordoProrrogacaoHora;

interface

  uses
    System.SysUtils,

    api.model.persona.AcordoProrrogacaoHora,
    api.model.recibo,
    api.dao,
    api.utils,
    api.command,

    Nasajon.Sdk.Helpers.Rest.Json.Generics    

    ;

  type
    TAPIAcordoProrrogacaoHora = class(TInterfacedObject, ICommandAPI)


      public

        function execute(const a_api: String; const a_param: String): TRecibo; overload;
        function execute(const a_param: TObject): TRecibo; overload;

        function Novo(const a_Objeto: String): TRecibo; overload;
        function Novo(const a_Objeto: TAcordoProrrogacaoHoraNovo): TRecibo; overload;

        function Alterar(const a_Objeto: String): TRecibo; overload;
        function Alterar(const a_Objeto: TAcordoProrrogacaoHoraAlterar): TRecibo; overload;

        function Excluir(const a_Objeto: String): TRecibo; overload;
        function Excluir(const a_Objeto: TAcordoProrrogacaoHoraExcluir): TRecibo; overload;

        
    end;

implementation

{ TAPIpersona.AcordoProrrogacaoHora }

function TAPIAcordoProrrogacaoHora.execute(const a_api: String; const a_param: String): TRecibo;
begin
  if (UpperCase(a_api) = 'ACORDOPRORROGACAOHORANOVO')
    then begin
       Result := Self.Novo(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'ACORDOPRORROGACAOHORAALTERAR')
    then begin
       Result := Self.Alterar(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'ACORDOPRORROGACAOHORAEXCLUIR')
    then begin
       Result := Self.Excluir(a_Param);
       Exit();
    end;


end;

function TAPIAcordoProrrogacaoHora.execute(const a_param: TObject): TRecibo;
begin
  if (a_param is TAcordoProrrogacaoHoraNovo)
    then begin
       Result := Self.Novo(a_Param as TAcordoProrrogacaoHoraNovo);
       Exit();
    end;

  if (a_param is TAcordoProrrogacaoHoraAlterar)
    then begin
       Result := Self.Alterar(a_Param as TAcordoProrrogacaoHoraAlterar);
       Exit();
    end;

  if (a_param is TAcordoProrrogacaoHoraExcluir)
    then begin
       Result := Self.Excluir(a_Param as TAcordoProrrogacaoHoraExcluir);
       Exit();
    end;


end;

function TAPIAcordoProrrogacaoHora.Novo(const a_Objeto: TAcordoProrrogacaoHoraNovo): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_AcordoProrrogacaoHoraNovo', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIAcordoProrrogacaoHora.Novo(const a_Objeto: String): TRecibo;

  var t_Modelo: TAcordoProrrogacaoHoraNovo;

begin
  t_Modelo := TAcordoProrrogacaoHoraNovo.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Novo(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIAcordoProrrogacaoHora.Alterar(const a_Objeto: TAcordoProrrogacaoHoraAlterar): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_AcordoProrrogacaoHoraAlterar', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIAcordoProrrogacaoHora.Alterar(const a_Objeto: String): TRecibo;

  var t_Modelo: TAcordoProrrogacaoHoraAlterar;

begin
  t_Modelo := TAcordoProrrogacaoHoraAlterar.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Alterar(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIAcordoProrrogacaoHora.Excluir(const a_Objeto: TAcordoProrrogacaoHoraExcluir): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_AcordoProrrogacaoHoraExcluir', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIAcordoProrrogacaoHora.Excluir(const a_Objeto: String): TRecibo;

  var t_Modelo: TAcordoProrrogacaoHoraExcluir;

begin
  t_Modelo := TAcordoProrrogacaoHoraExcluir.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Excluir(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;


end.
