unit api.controller.persona.Processo;

interface

  uses
    System.SysUtils,

    api.model.persona.Processo,
    api.model.recibo,
    api.dao,
    api.utils,
    api.command,

    Nasajon.Sdk.Helpers.Rest.Json.Generics    

    ;

  type
    TAPIProcesso = class(TInterfacedObject, ICommandAPI)


      public

        function execute(const a_api: String; const a_param: String): TRecibo; overload;
        function execute(const a_param: TObject): TRecibo; overload;

        function Novo(const a_Objeto: String): TRecibo; overload;
        function Novo(const a_Objeto: TProcessoNovo): TRecibo; overload;

        function AlterarDadosGerais(const a_Objeto: String): TRecibo; overload;
        function AlterarDadosGerais(const a_Objeto: TProcessoAlterarDadosGerais): TRecibo; overload;

        function AlterarDadosDecisao(const a_Objeto: String): TRecibo; overload;
        function AlterarDadosDecisao(const a_Objeto: TProcessoAlterarDadosDecisao): TRecibo; overload;

        function Excluir(const a_Objeto: String): TRecibo; overload;
        function Excluir(const a_Objeto: TProcessoExcluir): TRecibo; overload;

        
    end;

implementation

{ TAPIpersona.Processo }

function TAPIProcesso.execute(const a_api: String; const a_param: String): TRecibo;
begin
  if (UpperCase(a_api) = 'PROCESSONOVO')
    then begin
       Result := Self.Novo(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'PROCESSOALTERARDADOSGERAIS')
    then begin
       Result := Self.AlterarDadosGerais(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'PROCESSOALTERARDADOSDECISAO')
    then begin
       Result := Self.AlterarDadosDecisao(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'PROCESSOEXCLUIR')
    then begin
       Result := Self.Excluir(a_Param);
       Exit();
    end;


end;

function TAPIProcesso.execute(const a_param: TObject): TRecibo;
begin
  if (a_param is TProcessoNovo)
    then begin
       Result := Self.Novo(a_Param as TProcessoNovo);
       Exit();
    end;

  if (a_param is TProcessoAlterarDadosGerais)
    then begin
       Result := Self.AlterarDadosGerais(a_Param as TProcessoAlterarDadosGerais);
       Exit();
    end;

  if (a_param is TProcessoAlterarDadosDecisao)
    then begin
       Result := Self.AlterarDadosDecisao(a_Param as TProcessoAlterarDadosDecisao);
       Exit();
    end;

  if (a_param is TProcessoExcluir)
    then begin
       Result := Self.Excluir(a_Param as TProcessoExcluir);
       Exit();
    end;


end;

function TAPIProcesso.Novo(const a_Objeto: TProcessoNovo): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_ProcessoNovo', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIProcesso.Novo(const a_Objeto: String): TRecibo;

  var t_Modelo: TProcessoNovo;

begin
  t_Modelo := TProcessoNovo.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Novo(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIProcesso.AlterarDadosGerais(const a_Objeto: TProcessoAlterarDadosGerais): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_ProcessoAlterarDadosGerais', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIProcesso.AlterarDadosGerais(const a_Objeto: String): TRecibo;

  var t_Modelo: TProcessoAlterarDadosGerais;

begin
  t_Modelo := TProcessoAlterarDadosGerais.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarDadosGerais(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIProcesso.AlterarDadosDecisao(const a_Objeto: TProcessoAlterarDadosDecisao): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_ProcessoAlterarDadosDecisao', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIProcesso.AlterarDadosDecisao(const a_Objeto: String): TRecibo;

  var t_Modelo: TProcessoAlterarDadosDecisao;

begin
  t_Modelo := TProcessoAlterarDadosDecisao.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarDadosDecisao(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIProcesso.Excluir(const a_Objeto: TProcessoExcluir): TRecibo;
begin
  Result := TDAO.callFunction('persona.api_ProcessoExcluir', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIProcesso.Excluir(const a_Objeto: String): TRecibo;

  var t_Modelo: TProcessoExcluir;

begin
  t_Modelo := TProcessoExcluir.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Excluir(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;


end.
