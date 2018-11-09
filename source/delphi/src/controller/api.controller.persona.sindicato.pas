unit api.controller.persona.Sindicato;

interface

  uses
    System.SysUtils,

    api.model.persona.Sindicato,
    api.model.recibo,
    api.dao,
    api.utils,
    api.command,

    Nasajon.Sdk.Helpers.Rest.Json.Generics    

    ;

  type
    TAPISindicato = class(TInterfacedObject, ICommandAPI)


      public

        function execute(const a_api: String; const a_param: String): TRecibo; overload;
        function execute(const a_param: TObject): TRecibo; overload;

        function Novo(const a_Objeto: String): TRecibo; overload;
        function Novo(const a_Objeto: TSindicatoNovo): TRecibo; overload;

        function AlterarDadosGerais(const a_Objeto: String): TRecibo; overload;
        function AlterarDadosGerais(const a_Objeto: TSindicatoAlterarDadosGerais): TRecibo; overload;

        function AlterarDadosEndereco(const a_Objeto: String): TRecibo; overload;
        function AlterarDadosEndereco(const a_Objeto: TSindicatoAlterarDadosEndereco): TRecibo; overload;

        function AlterarDadosContato(const a_Objeto: String): TRecibo; overload;
        function AlterarDadosContato(const a_Objeto: TSindicatoAlterarDadosContato): TRecibo; overload;

        function AlterarDadosOutrasEntidades(const a_Objeto: String): TRecibo; overload;
        function AlterarDadosOutrasEntidades(const a_Objeto: TSindicatoAlterarDadosOutrasEntidades): TRecibo; overload;

        function AlterarDadosCalculoFerias(const a_Objeto: String): TRecibo; overload;
        function AlterarDadosCalculoFerias(const a_Objeto: TSindicatoAlterarDadosCalculoFerias): TRecibo; overload;

        function AlterarDadosCalculoDecimoTerceiro(const a_Objeto: String): TRecibo; overload;
        function AlterarDadosCalculoDecimoTerceiro(const a_Objeto: TSindicatoAlterarDadosCalculoDecimoTerceiro): TRecibo; overload;

        function AlterarDadosCalculoRescisao(const a_Objeto: String): TRecibo; overload;
        function AlterarDadosCalculoRescisao(const a_Objeto: TSindicatoAlterarDadosCalculoRescisao): TRecibo; overload;

        function AlterarDadosCalculoDissidio(const a_Objeto: String): TRecibo; overload;
        function AlterarDadosCalculoDissidio(const a_Objeto: TSindicatoAlterarDadosCalculoDissidio): TRecibo; overload;

        function AlterarDadosCalculoMaternidade(const a_Objeto: String): TRecibo; overload;
        function AlterarDadosCalculoMaternidade(const a_Objeto: TSindicatoAlterarDadosCalculoMaternidade): TRecibo; overload;

        function AlterarDadosCalculoAnuenio(const a_Objeto: String): TRecibo; overload;
        function AlterarDadosCalculoAnuenio(const a_Objeto: TSindicatoAlterarDadosCalculoAnuenio): TRecibo; overload;

        function Excluir(const a_Objeto: String): TRecibo; overload;
        function Excluir(const a_Objeto: TSindicatoExcluir): TRecibo; overload;

        
    end;

implementation

{ TAPIpersona.Sindicato }

function TAPISindicato.execute(const a_api: String; const a_param: String): TRecibo;
begin
  if (UpperCase(a_api) = 'SINDICATONOVO')
    then begin
       Result := Self.Novo(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'SINDICATOALTERARDADOSGERAIS')
    then begin
       Result := Self.AlterarDadosGerais(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'SINDICATOALTERARDADOSENDERECO')
    then begin
       Result := Self.AlterarDadosEndereco(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'SINDICATOALTERARDADOSCONTATO')
    then begin
       Result := Self.AlterarDadosContato(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'SINDICATOALTERARDADOSOUTRASENTIDADES')
    then begin
       Result := Self.AlterarDadosOutrasEntidades(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'SINDICATOALTERARDADOSCALCULOFERIAS')
    then begin
       Result := Self.AlterarDadosCalculoFerias(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'SINDICATOALTERARDADOSCALCULODECIMOTERCEIRO')
    then begin
       Result := Self.AlterarDadosCalculoDecimoTerceiro(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'SINDICATOALTERARDADOSCALCULORESCISAO')
    then begin
       Result := Self.AlterarDadosCalculoRescisao(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'SINDICATOALTERARDADOSCALCULODISSIDIO')
    then begin
       Result := Self.AlterarDadosCalculoDissidio(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'SINDICATOALTERARDADOSCALCULOMATERNIDADE')
    then begin
       Result := Self.AlterarDadosCalculoMaternidade(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'SINDICATOALTERARDADOSCALCULOANUENIO')
    then begin
       Result := Self.AlterarDadosCalculoAnuenio(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'SINDICATOEXCLUIR')
    then begin
       Result := Self.Excluir(a_Param);
       Exit();
    end;


end;

function TAPISindicato.execute(const a_param: TObject): TRecibo;
begin
  if (a_param is TSindicatoNovo)
    then begin
       Result := Self.Novo(a_Param as TSindicatoNovo);
       Exit();
    end;

  if (a_param is TSindicatoAlterarDadosGerais)
    then begin
       Result := Self.AlterarDadosGerais(a_Param as TSindicatoAlterarDadosGerais);
       Exit();
    end;

  if (a_param is TSindicatoAlterarDadosEndereco)
    then begin
       Result := Self.AlterarDadosEndereco(a_Param as TSindicatoAlterarDadosEndereco);
       Exit();
    end;

  if (a_param is TSindicatoAlterarDadosContato)
    then begin
       Result := Self.AlterarDadosContato(a_Param as TSindicatoAlterarDadosContato);
       Exit();
    end;

  if (a_param is TSindicatoAlterarDadosOutrasEntidades)
    then begin
       Result := Self.AlterarDadosOutrasEntidades(a_Param as TSindicatoAlterarDadosOutrasEntidades);
       Exit();
    end;

  if (a_param is TSindicatoAlterarDadosCalculoFerias)
    then begin
       Result := Self.AlterarDadosCalculoFerias(a_Param as TSindicatoAlterarDadosCalculoFerias);
       Exit();
    end;

  if (a_param is TSindicatoAlterarDadosCalculoDecimoTerceiro)
    then begin
       Result := Self.AlterarDadosCalculoDecimoTerceiro(a_Param as TSindicatoAlterarDadosCalculoDecimoTerceiro);
       Exit();
    end;

  if (a_param is TSindicatoAlterarDadosCalculoRescisao)
    then begin
       Result := Self.AlterarDadosCalculoRescisao(a_Param as TSindicatoAlterarDadosCalculoRescisao);
       Exit();
    end;

  if (a_param is TSindicatoAlterarDadosCalculoDissidio)
    then begin
       Result := Self.AlterarDadosCalculoDissidio(a_Param as TSindicatoAlterarDadosCalculoDissidio);
       Exit();
    end;

  if (a_param is TSindicatoAlterarDadosCalculoMaternidade)
    then begin
       Result := Self.AlterarDadosCalculoMaternidade(a_Param as TSindicatoAlterarDadosCalculoMaternidade);
       Exit();
    end;

  if (a_param is TSindicatoAlterarDadosCalculoAnuenio)
    then begin
       Result := Self.AlterarDadosCalculoAnuenio(a_Param as TSindicatoAlterarDadosCalculoAnuenio);
       Exit();
    end;

  if (a_param is TSindicatoExcluir)
    then begin
       Result := Self.Excluir(a_Param as TSindicatoExcluir);
       Exit();
    end;


end;

function TAPISindicato.Novo(const a_Objeto: TSindicatoNovo): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_SindicatoNovo', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPISindicato.Novo(const a_Objeto: String): TRecibo;

  var t_Modelo: TSindicatoNovo;

begin
  t_Modelo := TSindicatoNovo.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Novo(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPISindicato.AlterarDadosGerais(const a_Objeto: TSindicatoAlterarDadosGerais): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_SindicatoAlterarDadosGerais', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPISindicato.AlterarDadosGerais(const a_Objeto: String): TRecibo;

  var t_Modelo: TSindicatoAlterarDadosGerais;

begin
  t_Modelo := TSindicatoAlterarDadosGerais.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarDadosGerais(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPISindicato.AlterarDadosEndereco(const a_Objeto: TSindicatoAlterarDadosEndereco): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_SindicatoAlterarDadosEndereco', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPISindicato.AlterarDadosEndereco(const a_Objeto: String): TRecibo;

  var t_Modelo: TSindicatoAlterarDadosEndereco;

begin
  t_Modelo := TSindicatoAlterarDadosEndereco.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarDadosEndereco(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPISindicato.AlterarDadosContato(const a_Objeto: TSindicatoAlterarDadosContato): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_SindicatoAlterarDadosContato', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPISindicato.AlterarDadosContato(const a_Objeto: String): TRecibo;

  var t_Modelo: TSindicatoAlterarDadosContato;

begin
  t_Modelo := TSindicatoAlterarDadosContato.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarDadosContato(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPISindicato.AlterarDadosOutrasEntidades(const a_Objeto: TSindicatoAlterarDadosOutrasEntidades): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_SindicatoAlterarDadosOutrasEntidades', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPISindicato.AlterarDadosOutrasEntidades(const a_Objeto: String): TRecibo;

  var t_Modelo: TSindicatoAlterarDadosOutrasEntidades;

begin
  t_Modelo := TSindicatoAlterarDadosOutrasEntidades.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarDadosOutrasEntidades(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPISindicato.AlterarDadosCalculoFerias(const a_Objeto: TSindicatoAlterarDadosCalculoFerias): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_SindicatoAlterarDadosCalculoFerias', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPISindicato.AlterarDadosCalculoFerias(const a_Objeto: String): TRecibo;

  var t_Modelo: TSindicatoAlterarDadosCalculoFerias;

begin
  t_Modelo := TSindicatoAlterarDadosCalculoFerias.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarDadosCalculoFerias(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPISindicato.AlterarDadosCalculoDecimoTerceiro(const a_Objeto: TSindicatoAlterarDadosCalculoDecimoTerceiro): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_SindicatoAlterarDadosCalculoDecimoTerceiro', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPISindicato.AlterarDadosCalculoDecimoTerceiro(const a_Objeto: String): TRecibo;

  var t_Modelo: TSindicatoAlterarDadosCalculoDecimoTerceiro;

begin
  t_Modelo := TSindicatoAlterarDadosCalculoDecimoTerceiro.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarDadosCalculoDecimoTerceiro(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPISindicato.AlterarDadosCalculoRescisao(const a_Objeto: TSindicatoAlterarDadosCalculoRescisao): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_SindicatoAlterarDadosCalculoRescisao', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPISindicato.AlterarDadosCalculoRescisao(const a_Objeto: String): TRecibo;

  var t_Modelo: TSindicatoAlterarDadosCalculoRescisao;

begin
  t_Modelo := TSindicatoAlterarDadosCalculoRescisao.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarDadosCalculoRescisao(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPISindicato.AlterarDadosCalculoDissidio(const a_Objeto: TSindicatoAlterarDadosCalculoDissidio): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_SindicatoAlterarDadosCalculoDissidio', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPISindicato.AlterarDadosCalculoDissidio(const a_Objeto: String): TRecibo;

  var t_Modelo: TSindicatoAlterarDadosCalculoDissidio;

begin
  t_Modelo := TSindicatoAlterarDadosCalculoDissidio.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarDadosCalculoDissidio(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPISindicato.AlterarDadosCalculoMaternidade(const a_Objeto: TSindicatoAlterarDadosCalculoMaternidade): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_SindicatoAlterarDadosCalculoMaternidade', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPISindicato.AlterarDadosCalculoMaternidade(const a_Objeto: String): TRecibo;

  var t_Modelo: TSindicatoAlterarDadosCalculoMaternidade;

begin
  t_Modelo := TSindicatoAlterarDadosCalculoMaternidade.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarDadosCalculoMaternidade(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPISindicato.AlterarDadosCalculoAnuenio(const a_Objeto: TSindicatoAlterarDadosCalculoAnuenio): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_SindicatoAlterarDadosCalculoAnuenio', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPISindicato.AlterarDadosCalculoAnuenio(const a_Objeto: String): TRecibo;

  var t_Modelo: TSindicatoAlterarDadosCalculoAnuenio;

begin
  t_Modelo := TSindicatoAlterarDadosCalculoAnuenio.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarDadosCalculoAnuenio(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPISindicato.Excluir(const a_Objeto: TSindicatoExcluir): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_SindicatoExcluir', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPISindicato.Excluir(const a_Objeto: String): TRecibo;

  var t_Modelo: TSindicatoExcluir;

begin
  t_Modelo := TSindicatoExcluir.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Excluir(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;


end.
