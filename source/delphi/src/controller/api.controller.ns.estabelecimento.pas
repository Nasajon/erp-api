unit api.controller.ns.Estabelecimento;

interface

  uses
    System.SysUtils,

    api.model.ns.Estabelecimento,
    api.model.recibo,
    api.dao,
    api.utils,
    api.command,

    Nasajon.Sdk.Helpers.Rest.Json.Generics    

    ;

  type
    TAPIEstabelecimento = class(TInterfacedObject, ICommandAPI)


      public

        function execute(const a_api: String; const a_param: String): TRecibo; overload;
        function execute(const a_param: TObject): TRecibo; overload;

        function Novo(const a_Objeto: String): TRecibo; overload;
        function Novo(const a_Objeto: TEstabelecimentoNovo): TRecibo; overload;

        function AlterarDadosGerais(const a_Objeto: String): TRecibo; overload;
        function AlterarDadosGerais(const a_Objeto: TEstabelecimentoAlterarDadosGerais): TRecibo; overload;

        function AlterarDadosFolha(const a_Objeto: String): TRecibo; overload;
        function AlterarDadosFolha(const a_Objeto: TEstabelecimentoAlterarDadosFolha): TRecibo; overload;

        function AlterarDadosEndereco(const a_Objeto: String): TRecibo; overload;
        function AlterarDadosEndereco(const a_Objeto: TEstabelecimentoAlterarDadosEndereco): TRecibo; overload;

        function AlterarDadosRepresentante(const a_Objeto: String): TRecibo; overload;
        function AlterarDadosRepresentante(const a_Objeto: TEstabelecimentoAlterarDadosRepresentante): TRecibo; overload;

        function Excluir(const a_Objeto: String): TRecibo; overload;
        function Excluir(const a_Objeto: TEstabelecimentoExcluir): TRecibo; overload;

        function Excluir_v2(const a_Objeto: String): TRecibo; overload;
        function Excluir_v2(const a_Objeto: TEstabelecimentoExcluir_v2): TRecibo; overload;

        
    end;

implementation

{ TAPIns.Estabelecimento }

function TAPIEstabelecimento.execute(const a_api: String; const a_param: String): TRecibo;
begin
  if (UpperCase(a_api) = 'ESTABELECIMENTONOVO')
    then begin
       Result := Self.Novo(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'ESTABELECIMENTOALTERARDADOSGERAIS')
    then begin
       Result := Self.AlterarDadosGerais(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'ESTABELECIMENTOALTERARDADOSFOLHA')
    then begin
       Result := Self.AlterarDadosFolha(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'ESTABELECIMENTOALTERARDADOSENDERECO')
    then begin
       Result := Self.AlterarDadosEndereco(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'ESTABELECIMENTOALTERARDADOSREPRESENTANTE')
    then begin
       Result := Self.AlterarDadosRepresentante(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'ESTABELECIMENTOEXCLUIR')
    then begin
       Result := Self.Excluir(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'ESTABELECIMENTOEXCLUIR_V2')
    then begin
       Result := Self.Excluir_v2(a_Param);
       Exit();
    end;


end;

function TAPIEstabelecimento.execute(const a_param: TObject): TRecibo;
begin
  if (a_param is TEstabelecimentoNovo)
    then begin
       Result := Self.Novo(a_Param as TEstabelecimentoNovo);
       Exit();
    end;

  if (a_param is TEstabelecimentoAlterarDadosGerais)
    then begin
       Result := Self.AlterarDadosGerais(a_Param as TEstabelecimentoAlterarDadosGerais);
       Exit();
    end;

  if (a_param is TEstabelecimentoAlterarDadosFolha)
    then begin
       Result := Self.AlterarDadosFolha(a_Param as TEstabelecimentoAlterarDadosFolha);
       Exit();
    end;

  if (a_param is TEstabelecimentoAlterarDadosEndereco)
    then begin
       Result := Self.AlterarDadosEndereco(a_Param as TEstabelecimentoAlterarDadosEndereco);
       Exit();
    end;

  if (a_param is TEstabelecimentoAlterarDadosRepresentante)
    then begin
       Result := Self.AlterarDadosRepresentante(a_Param as TEstabelecimentoAlterarDadosRepresentante);
       Exit();
    end;

  if (a_param is TEstabelecimentoExcluir)
    then begin
       Result := Self.Excluir(a_Param as TEstabelecimentoExcluir);
       Exit();
    end;

  if (a_param is TEstabelecimentoExcluir_v2)
    then begin
       Result := Self.Excluir_v2(a_Param as TEstabelecimentoExcluir_v2);
       Exit();
    end;


end;

function TAPIEstabelecimento.Novo(const a_Objeto: TEstabelecimentoNovo): TRecibo;
begin
  Result := TDAO.callFunction('ns.api_EstabelecimentoNovo', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIEstabelecimento.Novo(const a_Objeto: String): TRecibo;

  var t_Modelo: TEstabelecimentoNovo;

begin
  t_Modelo := TEstabelecimentoNovo.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Novo(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIEstabelecimento.AlterarDadosGerais(const a_Objeto: TEstabelecimentoAlterarDadosGerais): TRecibo;
begin
  Result := TDAO.callFunction('ns.api_EstabelecimentoAlterarDadosGerais', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIEstabelecimento.AlterarDadosGerais(const a_Objeto: String): TRecibo;

  var t_Modelo: TEstabelecimentoAlterarDadosGerais;

begin
  t_Modelo := TEstabelecimentoAlterarDadosGerais.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarDadosGerais(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIEstabelecimento.AlterarDadosFolha(const a_Objeto: TEstabelecimentoAlterarDadosFolha): TRecibo;
begin
  Result := TDAO.callFunction('ns.api_EstabelecimentoAlterarDadosFolha', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIEstabelecimento.AlterarDadosFolha(const a_Objeto: String): TRecibo;

  var t_Modelo: TEstabelecimentoAlterarDadosFolha;

begin
  t_Modelo := TEstabelecimentoAlterarDadosFolha.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarDadosFolha(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIEstabelecimento.AlterarDadosEndereco(const a_Objeto: TEstabelecimentoAlterarDadosEndereco): TRecibo;
begin
  Result := TDAO.callFunction('ns.api_EstabelecimentoAlterarDadosEndereco', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIEstabelecimento.AlterarDadosEndereco(const a_Objeto: String): TRecibo;

  var t_Modelo: TEstabelecimentoAlterarDadosEndereco;

begin
  t_Modelo := TEstabelecimentoAlterarDadosEndereco.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarDadosEndereco(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIEstabelecimento.AlterarDadosRepresentante(const a_Objeto: TEstabelecimentoAlterarDadosRepresentante): TRecibo;
begin
  Result := TDAO.callFunction('ns.api_EstabelecimentoAlterarDadosRepresentante', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIEstabelecimento.AlterarDadosRepresentante(const a_Objeto: String): TRecibo;

  var t_Modelo: TEstabelecimentoAlterarDadosRepresentante;

begin
  t_Modelo := TEstabelecimentoAlterarDadosRepresentante.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarDadosRepresentante(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIEstabelecimento.Excluir(const a_Objeto: TEstabelecimentoExcluir): TRecibo;
begin
  Result := TDAO.callFunction('ns.api_EstabelecimentoExcluir', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIEstabelecimento.Excluir(const a_Objeto: String): TRecibo;

  var t_Modelo: TEstabelecimentoExcluir;

begin
  t_Modelo := TEstabelecimentoExcluir.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Excluir(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIEstabelecimento.Excluir_v2(const a_Objeto: TEstabelecimentoExcluir_v2): TRecibo;
begin
  Result := TDAO.callFunction('ns.api_EstabelecimentoExcluir_v2', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIEstabelecimento.Excluir_v2(const a_Objeto: String): TRecibo;

  var t_Modelo: TEstabelecimentoExcluir_v2;

begin
  t_Modelo := TEstabelecimentoExcluir_v2.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Excluir_v2(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;


end.
