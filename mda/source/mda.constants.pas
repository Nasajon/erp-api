unit mda.constants;

interface

uses
  mda.enum;

{$REGION '<< Constantes >>'}
  const c_model_grupoempresarial = 'GRUPOEMPRESARIAL';
  const c_model_empresa = 'EMPRESA';
  const c_model_estabelecimento = 'ESTABELECIMENTO';

  const cPastaSchema = 'schemas';
  const cPastaXML = 'xmls';

  const cSistemasStr: array[Low(mda.enum.tpSistemas)..High(mda.enum.tpSistemas)] of String = ('ns', 'persona', 'contabil', 'scritta', 'estoque', 'financas', 'servicos', 'crm', 'compras');

  // Delphi
  const cTipoJSON = 'STRING';

{$ENDREGION}

{$REGION '<< ParamStr >>'}

  const c_Param_Dir_XML = 02;
  const c_Param_Syntaxe_Code = 04;
  const c_Param_Syntaxe_SQL = 06;
  const c_Param_Syntaxe_FileFormat = 08;
  const c_Param_Syntaxe_Page = 10;

{$ENDREGION}

{$REGION '<< Delphi >>'}

const c_negocio = '$(negocio)';
const c_negocio_class = '$(negocio.class)';
const c_field = '$(field)';
const c_validacoesNull = '$(validacoesNull)';
const c_uses = '$(uses)';
const c_html_schemas = '$(html.schemas)';
const c_json_fields = '$(json.fields)';
const c_interface_fields = '$(interface.fields)';
const c_interface_metodos = '$(interface.metodos)';
const c_interface_metodos_getter = '$(interface.metodos.getter)';
const c_interface_metodos_setter = '$(interface.metodos.setter)';
const c_interface_atributos = '$(interface.atributos)';
const c_implementation_metodos = '$(implementation.metodos)';
const c_implementation_metodos_cmd_json = '$(implementation.command.json)';
const c_implementation_metodos_cmd_object = '$(implementation.command.object)';
const c_interface_negocio = '$(interface.negocio)';
const c_interface_metodos_protegidos = '$(interface.protected_metodos)';
const c_interface_metodos_publicados = '$(interface.published_metodos)';
const c_initialization_testcase = '$(initialization.testcase)';

const c_cmd_client_var = '// var';
const c_cmd_client_get = '// get';
const c_cmd_client_uses = '// uses';
const c_cmd_client_map = '// map';
const c_cmd_client_get_imp = '// get_imp';

{$ENDREGION}

implementation

end.
