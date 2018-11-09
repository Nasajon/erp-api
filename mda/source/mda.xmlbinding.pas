
{************************************************************************************}
{                                                                                    }
{                                  XML Data Binding                                  }
{                                                                                    }
{         Generated on: 13/04/2015 17:25:19                                          }
{       Generated from: C:\@work\erp\source\desktop\api\mda\schemas\apinasajon.xsd   }
{   Settings stored in: C:\@work\erp\source\desktop\api\mda\schemas\apinasajon.xdb   }
{                                                                                    }
{************************************************************************************}

unit mda.xmlbinding;

interface

uses xmldom, XMLDoc, XMLIntf;

type

{ Forward Decls }

  IXMLField = interface;
  IXMLFieldList = interface;
  IXMLImport = interface;
  IXMLImportList = interface;
  IXMLModel = interface;
  IXMLModelList = interface;
  IXMLModels = interface;
  IXMLRoot = interface;

{ IXMLField }

  IXMLField = interface(IXMLNode)
    ['{59864912-E721-43D7-96EB-E2695BFB948F}']
    { Property Accessors }
    function GetNome: UnicodeString;
    function GetControlType: UnicodeString;
    function GetTamanho: UnicodeString;
    function GetNamespace: UnicodeString;
    function GetRequired: UnicodeString;
    function GetSummary: UnicodeString;
    function GetNotnull: UnicodeString;
    function GetFormat: UnicodeString;
    procedure SetNome(Value: UnicodeString);
    procedure SetControlType(Value: UnicodeString);
    procedure SetTamanho(Value: UnicodeString);
    procedure SetNamespace(Value: UnicodeString);
    procedure SetRequired(Value: UnicodeString);
    procedure SetSummary(Value: UnicodeString);
    procedure SetNotnull(Value: UnicodeString);
    procedure SetFormat(Value: UnicodeString);
    { Methods & Properties }
    property Nome: UnicodeString read GetNome write SetNome;
    property ControlType: UnicodeString read GetControlType write SetControlType;
    property Tamanho: UnicodeString read GetTamanho write SetTamanho;
    property Namespace: UnicodeString read GetNamespace write SetNamespace;
    property Required: UnicodeString read GetRequired write SetRequired;
    property Summary: UnicodeString read GetSummary write SetSummary;
    property Notnull: UnicodeString read GetNotnull write SetNotnull;
    property Format: UnicodeString read GetFormat write SetFormat;
  end;

{ IXMLFieldList }

  IXMLFieldList = interface(IXMLNodeCollection)
    ['{3084C8F2-E265-4132-AED2-0D677124F1DB}']
    { Methods & Properties }
    function Add: IXMLField;
    function Insert(const Index: Integer): IXMLField;

    function GetItem(Index: Integer): IXMLField;
    property Items[Index: Integer]: IXMLField read GetItem; default;
  end;

{ IXMLImport }

  IXMLImport = interface(IXMLNode)
    ['{290D9947-FAF6-4587-A15B-E6410B5943BA}']
    { Property Accessors }
    function GetNome: UnicodeString;
    procedure SetNome(Value: UnicodeString);
    { Methods & Properties }
    property Nome: UnicodeString read GetNome write SetNome;
  end;

{ IXMLImportList }

  IXMLImportList = interface(IXMLNodeCollection)
    ['{F2D252EC-96AF-451B-9CD8-F514C1920729}']
    { Methods & Properties }
    function Add: IXMLImport;
    function Insert(const Index: Integer): IXMLImport;

    function GetItem(Index: Integer): IXMLImport;
    property Items[Index: Integer]: IXMLImport read GetItem; default;
  end;

{ IXMLModel }

  IXMLModel = interface(IXMLNode)
    ['{A451F701-B803-4B52-B989-B6CC541C45D8}']
    { Property Accessors }
    function GetNome: UnicodeString;
    function GetField: IXMLFieldList;
    function GetSummary: UnicodeString;
    procedure SetNome(Value: UnicodeString);
    procedure SetSummary(Value: UnicodeString);
    { Methods & Properties }
    property Nome: UnicodeString read GetNome write SetNome;
    property Field: IXMLFieldList read GetField;
    property Summary: UnicodeString read GetSummary write SetSummary;
  end;

{ IXMLModelList }

  IXMLModelList = interface(IXMLNodeCollection)
    ['{BF7EEFDB-1FA1-46BE-9745-07C9D05C145B}']
    { Methods & Properties }
    function Add: IXMLModel;
    function Insert(const Index: Integer): IXMLModel;

    function GetItem(Index: Integer): IXMLModel;
    property Items[Index: Integer]: IXMLModel read GetItem; default;
  end;

{ IXMLModels }

  IXMLModels = interface(IXMLNode)
    ['{6D2AFB0F-F409-4C38-94E7-0B74F681CFF9}']
    { Property Accessors }
    function GetSistema: UnicodeString;
    function GetModulo: UnicodeString;
    function GetImport: IXMLImportList;
    function GetModel: IXMLModelList;
    procedure SetSistema(Value: UnicodeString);
    procedure SetModulo(Value: UnicodeString);
    { Methods & Properties }
    property Sistema: UnicodeString read GetSistema write SetSistema;
    property Modulo: UnicodeString read GetModulo write SetModulo;
    property Import: IXMLImportList read GetImport;
    property Model: IXMLModelList read GetModel;
  end;

{ IXMLRoot }

  IXMLRoot = interface(IXMLNode)
    ['{54B732FE-3C2A-4D6D-BBB9-591EA8F7FEB9}']
    { Property Accessors }
    function GetModels: IXMLModels;
    { Methods & Properties }
    property Models: IXMLModels read GetModels;
  end;

{ Forward Decls }

  TXMLField = class;
  TXMLFieldList = class;
  TXMLImport = class;
  TXMLImportList = class;
  TXMLModel = class;
  TXMLModelList = class;
  TXMLModels = class;
  TXMLRoot = class;

{ TXMLField }

  TXMLField = class(TXMLNode, IXMLField)
  protected
    { IXMLField }
    function GetNome: UnicodeString;
    function GetControlType: UnicodeString;
    function GetTamanho: UnicodeString;
    function GetNamespace: UnicodeString;
    function GetRequired: UnicodeString;
    function GetSummary: UnicodeString;
    function GetNotnull: UnicodeString;
    function GetFormat: UnicodeString;
    procedure SetNome(Value: UnicodeString);
    procedure SetControlType(Value: UnicodeString);
    procedure SetTamanho(Value: UnicodeString);
    procedure SetNamespace(Value: UnicodeString);
    procedure SetRequired(Value: UnicodeString);
    procedure SetSummary(Value: UnicodeString);
    procedure SetNotnull(Value: UnicodeString);
    procedure SetFormat(Value: UnicodeString);
  end;

{ TXMLFieldList }

  TXMLFieldList = class(TXMLNodeCollection, IXMLFieldList)
  protected
    { IXMLFieldList }
    function Add: IXMLField;
    function Insert(const Index: Integer): IXMLField;

    function GetItem(Index: Integer): IXMLField;
  end;

{ TXMLImport }

  TXMLImport = class(TXMLNode, IXMLImport)
  protected
    { IXMLImport }
    function GetNome: UnicodeString;
    procedure SetNome(Value: UnicodeString);
  end;

{ TXMLImportList }

  TXMLImportList = class(TXMLNodeCollection, IXMLImportList)
  protected
    { IXMLImportList }
    function Add: IXMLImport;
    function Insert(const Index: Integer): IXMLImport;

    function GetItem(Index: Integer): IXMLImport;
  end;

{ TXMLModel }

  TXMLModel = class(TXMLNode, IXMLModel)
  private
    FField: IXMLFieldList;
  protected
    { IXMLModel }
    function GetNome: UnicodeString;
    function GetField: IXMLFieldList;
    function GetSummary: UnicodeString;
    procedure SetNome(Value: UnicodeString);
    procedure SetSummary(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLModelList }

  TXMLModelList = class(TXMLNodeCollection, IXMLModelList)
  protected
    { IXMLModelList }
    function Add: IXMLModel;
    function Insert(const Index: Integer): IXMLModel;

    function GetItem(Index: Integer): IXMLModel;
  end;

{ TXMLModels }

  TXMLModels = class(TXMLNode, IXMLModels)
  private
    FImport: IXMLImportList;
    FModel: IXMLModelList;
  protected
    { IXMLModels }
    function GetSistema: UnicodeString;
    function GetModulo: UnicodeString;
    function GetImport: IXMLImportList;
    function GetModel: IXMLModelList;
    procedure SetSistema(Value: UnicodeString);
    procedure SetModulo(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLRoot }

  TXMLRoot = class(TXMLNode, IXMLRoot)
  protected
    { IXMLRoot }
    function GetModels: IXMLModels;
  public
    procedure AfterConstruction; override;
  end;

{ Global functions }
function GetRoot(Doc: IXMLDocument): IXMLRoot;

implementation

function GetRoot(Doc: IXMLDocument): IXMLRoot;
begin
  Result := Doc.GetDocBinding('root', TXMLRoot, '') as TXMLRoot;
end;

{ TXMLField }

function TXMLField.GetNome: UnicodeString;
begin
  Result := AttributeNodes['nome'].Text;
end;

procedure TXMLField.SetNome(Value: UnicodeString);
begin
  SetAttribute('nome', Value);
end;

function TXMLField.GetControlType: UnicodeString;
begin
  Result := AttributeNodes['controlType'].Text;
end;

procedure TXMLField.SetControlType(Value: UnicodeString);
begin
  SetAttribute('controlType', Value);
end;

function TXMLField.GetTamanho: UnicodeString;
begin
  Result := AttributeNodes['tamanho'].Text;
end;

procedure TXMLField.SetTamanho(Value: UnicodeString);
begin
  SetAttribute('tamanho', Value);
end;

function TXMLField.GetNamespace: UnicodeString;
begin
  Result := AttributeNodes['namespace'].Text;
end;

procedure TXMLField.SetNamespace(Value: UnicodeString);
begin
  SetAttribute('namespace', Value);
end;

function TXMLField.GetRequired: UnicodeString;
begin
  Result := AttributeNodes['required'].Text;
end;

procedure TXMLField.SetRequired(Value: UnicodeString);
begin
  SetAttribute('required', Value);
end;

function TXMLField.GetSummary: UnicodeString;
begin
  Result := AttributeNodes['summary'].Text;
end;

procedure TXMLField.SetSummary(Value: UnicodeString);
begin
  SetAttribute('summary', Value);
end;

function TXMLField.GetNotnull: UnicodeString;
begin
  Result := AttributeNodes['notnull'].Text;
end;

procedure TXMLField.SetNotnull(Value: UnicodeString);
begin
  SetAttribute('notnull', Value);
end;

function TXMLField.GetFormat: UnicodeString;
begin
  Result := AttributeNodes['format'].Text;
end;

procedure TXMLField.SetFormat(Value: UnicodeString);
begin
  SetAttribute('format', Value);
end;

{ TXMLFieldList }

function TXMLFieldList.Add: IXMLField;
begin
  Result := AddItem(-1) as IXMLField;
end;

function TXMLFieldList.Insert(const Index: Integer): IXMLField;
begin
  Result := AddItem(Index) as IXMLField;
end;

function TXMLFieldList.GetItem(Index: Integer): IXMLField;
begin
  Result := List[Index] as IXMLField;
end;

{ TXMLImport }

function TXMLImport.GetNome: UnicodeString;
begin
  Result := AttributeNodes['nome'].Text;
end;

procedure TXMLImport.SetNome(Value: UnicodeString);
begin
  SetAttribute('nome', Value);
end;

{ TXMLImportList }

function TXMLImportList.Add: IXMLImport;
begin
  Result := AddItem(-1) as IXMLImport;
end;

function TXMLImportList.Insert(const Index: Integer): IXMLImport;
begin
  Result := AddItem(Index) as IXMLImport;
end;

function TXMLImportList.GetItem(Index: Integer): IXMLImport;
begin
  Result := List[Index] as IXMLImport;
end;

{ TXMLModel }

procedure TXMLModel.AfterConstruction;
begin
  RegisterChildNode('field', TXMLField);
  FField := CreateCollection(TXMLFieldList, IXMLField, 'field') as IXMLFieldList;
  inherited;
end;

function TXMLModel.GetNome: UnicodeString;
begin
  Result := ChildNodes['nome'].Text;
end;

procedure TXMLModel.SetNome(Value: UnicodeString);
begin
  ChildNodes['nome'].NodeValue := Value;
end;

function TXMLModel.GetField: IXMLFieldList;
begin
  Result := FField;
end;

function TXMLModel.GetSummary: UnicodeString;
begin
  Result := ChildNodes['summary'].Text;
end;

procedure TXMLModel.SetSummary(Value: UnicodeString);
begin
  ChildNodes['summary'].NodeValue := Value;
end;

{ TXMLModelList }

function TXMLModelList.Add: IXMLModel;
begin
  Result := AddItem(-1) as IXMLModel;
end;

function TXMLModelList.Insert(const Index: Integer): IXMLModel;
begin
  Result := AddItem(Index) as IXMLModel;
end;

function TXMLModelList.GetItem(Index: Integer): IXMLModel;
begin
  Result := List[Index] as IXMLModel;
end;

{ TXMLModels }

procedure TXMLModels.AfterConstruction;
begin
  RegisterChildNode('import', TXMLImport);
  RegisterChildNode('model', TXMLModel);
  FImport := CreateCollection(TXMLImportList, IXMLImport, 'import') as IXMLImportList;
  FModel := CreateCollection(TXMLModelList, IXMLModel, 'model') as IXMLModelList;
  inherited;
end;

function TXMLModels.GetSistema: UnicodeString;
begin
  Result := AttributeNodes['sistema'].Text;
end;

procedure TXMLModels.SetSistema(Value: UnicodeString);
begin
  SetAttribute('sistema', Value);
end;

function TXMLModels.GetModulo: UnicodeString;
begin
  Result := AttributeNodes['modulo'].Text;
end;

procedure TXMLModels.SetModulo(Value: UnicodeString);
begin
  SetAttribute('modulo', Value);
end;

function TXMLModels.GetImport: IXMLImportList;
begin
  Result := FImport;
end;

function TXMLModels.GetModel: IXMLModelList;
begin
  Result := FModel;
end;

{ TXMLRoot }

procedure TXMLRoot.AfterConstruction;
begin
  RegisterChildNode('models', TXMLModels);
  inherited;
end;

function TXMLRoot.GetModels: IXMLModels;
begin
  Result := ChildNodes['models'] as IXMLModels;
end;

end.
