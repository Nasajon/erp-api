unit api.controller.ns.Empresa;

interface

  uses
    System.SysUtils,

    api.model.ns.Empresa,
    api.model.recibo,
    api.dao,
    api.utils,
    api.command,

    Nasajon.Sdk.Helpers.Rest.Json.Generics    

    ;

  type
    TAPIEmpresa = class(TInterfacedObject, ICommandAPI)


      public

        function execute(const a_api: String; const a_param: String): TRecibo; overload;
        function execute(const a_param: TObject): TRecibo; overload;

        function Novo(const a_Objeto: String): TRecibo; overload;
        function Novo(const a_Objeto: TEmpresaNovo): TRecibo; overload;

        function AlterarDadosGerais(const a_Objeto: String): TRecibo; overload;
        function AlterarDadosGerais(const a_Objeto: TEmpresaAlterarDadosGerais): TRecibo; overload;

        function AlterarDadosFolha(const a_Objeto: String): TRecibo; overload;
        function AlterarDadosFolha(const a_Objeto: TEmpresaAlterarDadosFolha): TRecibo; overload;

        function AlterarDadosContato(const a_Objeto: String): TRecibo; overload;
        function AlterarDadosContato(const a_Objeto: TEmpresaAlterarDadosContato): TRecibo; overload;

        function AlterarDadosFolhaEmpresaPublica(const a_Objeto: String): TRecibo; overload;
        function AlterarDadosFolhaEmpresaPublica(const a_Objeto: TEmpresaAlterarDadosFolhaEmpresaPublica): TRecibo; overload;

        function AlterarDadosFolhaEmpresaFilantropica(const a_Objeto: String): TRecibo; overload;
        function AlterarDadosFolhaEmpresaFilantropica(const a_Objeto: TEmpresaAlterarDadosFolhaEmpresaFilantropica): TRecibo; overload;

        function InativarEmpresa(const a_Objeto: String): TRecibo; overload;
        function InativarEmpresa(const a_Objeto: TEmpresaInativarEmpresa): TRecibo; overload;

        function Excluir(const a_Objeto: String): TRecibo; overload;
        function Excluir(const a_Objeto: TEmpresaExcluir): TRecibo; overload;

        
    end;

implementation

{ TAPIns.Empresa }

function TAPIEmpresa.execute(const a_api: String; const a_param: String): TRecibo;
begin
  if (UpperCase(a_api) = 'EMPRESANOVO')
    then begin
       Result := Self.Novo(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'EMPRESAALTERARDADOSGERAIS')
    then begin
       Result := Self.AlterarDadosGerais(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'EMPRESAALTERARDADOSFOLHA')
    then begin
       Result := Self.AlterarDadosFolha(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'EMPRESAALTERARDADOSCONTATO')
    then begin
       Result := Self.AlterarDadosContato(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'EMPRESAALTERARDADOSFOLHAEMPRESAPUBLICA')
    then begin
       Result := Self.AlterarDadosFolhaEmpresaPublica(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'EMPRESAALTERARDADOSFOLHAEMPRESAFILANTROPICA')
    then begin
       Result := Self.AlterarDadosFolhaEmpresaFilantropica(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'EMPRESAINATIVAREMPRESA')
    then begin
       Result := Self.InativarEmpresa(a_Param);
       Exit();
    end;

  if (UpperCase(a_api) = 'EMPRESAEXCLUIR')
    then begin
       Result := Self.Excluir(a_Param);
       Exit();
    end;


end;

function TAPIEmpresa.execute(const a_param: TObject): TRecibo;
begin
  if (a_param is TEmpresaNovo)
    then begin
       Result := Self.Novo(a_Param as TEmpresaNovo);
       Exit();
    end;

  if (a_param is TEmpresaAlterarDadosGerais)
    then begin
       Result := Self.AlterarDadosGerais(a_Param as TEmpresaAlterarDadosGerais);
       Exit();
    end;

  if (a_param is TEmpresaAlterarDadosFolha)
    then begin
       Result := Self.AlterarDadosFolha(a_Param as TEmpresaAlterarDadosFolha);
       Exit();
    end;

  if (a_param is TEmpresaAlterarDadosContato)
    then begin
       Result := Self.AlterarDadosContato(a_Param as TEmpresaAlterarDadosContato);
       Exit();
    end;

  if (a_param is TEmpresaAlterarDadosFolhaEmpresaPublica)
    then begin
       Result := Self.AlterarDadosFolhaEmpresaPublica(a_Param as TEmpresaAlterarDadosFolhaEmpresaPublica);
       Exit();
    end;

  if (a_param is TEmpresaAlterarDadosFolhaEmpresaFilantropica)
    then begin
       Result := Self.AlterarDadosFolhaEmpresaFilantropica(a_Param as TEmpresaAlterarDadosFolhaEmpresaFilantropica);
       Exit();
    end;

  if (a_param is TEmpresaInativarEmpresa)
    then begin
       Result := Self.InativarEmpresa(a_Param as TEmpresaInativarEmpresa);
       Exit();
    end;

  if (a_param is TEmpresaExcluir)
    then begin
       Result := Self.Excluir(a_Param as TEmpresaExcluir);
       Exit();
    end;


end;

function TAPIEmpresa.Novo(const a_Objeto: TEmpresaNovo): TRecibo;
begin
  Result := TDAO.callFunction('ns.api_EmpresaNovo', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIEmpresa.Novo(const a_Objeto: String): TRecibo;

  var t_Modelo: TEmpresaNovo;

begin
  t_Modelo := TEmpresaNovo.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Novo(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIEmpresa.AlterarDadosGerais(const a_Objeto: TEmpresaAlterarDadosGerais): TRecibo;
begin
  Result := TDAO.callFunction('ns.api_EmpresaAlterarDadosGerais', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIEmpresa.AlterarDadosGerais(const a_Objeto: String): TRecibo;

  var t_Modelo: TEmpresaAlterarDadosGerais;

begin
  t_Modelo := TEmpresaAlterarDadosGerais.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarDadosGerais(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIEmpresa.AlterarDadosFolha(const a_Objeto: TEmpresaAlterarDadosFolha): TRecibo;
begin
  Result := TDAO.callFunction('ns.api_EmpresaAlterarDadosFolha', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIEmpresa.AlterarDadosFolha(const a_Objeto: String): TRecibo;

  var t_Modelo: TEmpresaAlterarDadosFolha;

begin
  t_Modelo := TEmpresaAlterarDadosFolha.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarDadosFolha(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIEmpresa.AlterarDadosContato(const a_Objeto: TEmpresaAlterarDadosContato): TRecibo;
begin
  Result := TDAO.callFunction('ns.api_EmpresaAlterarDadosContato', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIEmpresa.AlterarDadosContato(const a_Objeto: String): TRecibo;

  var t_Modelo: TEmpresaAlterarDadosContato;

begin
  t_Modelo := TEmpresaAlterarDadosContato.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarDadosContato(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIEmpresa.AlterarDadosFolhaEmpresaPublica(const a_Objeto: TEmpresaAlterarDadosFolhaEmpresaPublica): TRecibo;
begin
  Result := TDAO.callFunction('ns.api_EmpresaAlterarDadosFolhaEmpresaPublica', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIEmpresa.AlterarDadosFolhaEmpresaPublica(const a_Objeto: String): TRecibo;

  var t_Modelo: TEmpresaAlterarDadosFolhaEmpresaPublica;

begin
  t_Modelo := TEmpresaAlterarDadosFolhaEmpresaPublica.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarDadosFolhaEmpresaPublica(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIEmpresa.AlterarDadosFolhaEmpresaFilantropica(const a_Objeto: TEmpresaAlterarDadosFolhaEmpresaFilantropica): TRecibo;
begin
  Result := TDAO.callFunction('ns.api_EmpresaAlterarDadosFolhaEmpresaFilantropica', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIEmpresa.AlterarDadosFolhaEmpresaFilantropica(const a_Objeto: String): TRecibo;

  var t_Modelo: TEmpresaAlterarDadosFolhaEmpresaFilantropica;

begin
  t_Modelo := TEmpresaAlterarDadosFolhaEmpresaFilantropica.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.AlterarDadosFolhaEmpresaFilantropica(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIEmpresa.InativarEmpresa(const a_Objeto: TEmpresaInativarEmpresa): TRecibo;
begin
  Result := TDAO.callFunction('ns.api_EmpresaInativarEmpresa', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIEmpresa.InativarEmpresa(const a_Objeto: String): TRecibo;

  var t_Modelo: TEmpresaInativarEmpresa;

begin
  t_Modelo := TEmpresaInativarEmpresa.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.InativarEmpresa(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;

function TAPIEmpresa.Excluir(const a_Objeto: TEmpresaExcluir): TRecibo;
begin
  Result := TDAO.callFunction('ns.api_EmpresaExcluir', TUtils.MontaParametrosSQL(a_Objeto));
end;

function TAPIEmpresa.Excluir(const a_Objeto: String): TRecibo;

  var t_Modelo: TEmpresaExcluir;

begin
  t_Modelo := TEmpresaExcluir.Create();
  try
    TJsonUtilGenerics.UnMarshal(t_Modelo, a_Objeto);
    Result := Self.Excluir(t_Modelo);
  finally
    t_Modelo.Free();
  end;
end;


end.
