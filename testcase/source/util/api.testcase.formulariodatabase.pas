unit api.testcase.formulariodatabase;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.Menus, Vcl.StdCtrls,
  cxButtons, cxLabel, cxGroupBox, cxTextEdit, dxSkinsCore, NasajonSkin,
  NasajonSkinDestaque, dxSkinsDefaultPainters;

type
  TfrmDataBase = class(TForm)
    edtBase: TcxTextEdit;
    edtUsuario: TcxTextEdit;
    cxGroupBox2: TcxGroupBox;
    cxGroupBox3: TcxGroupBox;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    edtEndereco: TcxTextEdit;
    cxLabel4: TcxLabel;
    edtPorta: TcxTextEdit;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
    cxGroupBox1: TcxGroupBox;
    btCancelar: TcxButton;
    btConfirmar: TcxButton;
    edtSenha: TEdit;
    cxLabel8: TcxLabel;
    procedure btConfirmarClick(Sender: TObject);
    procedure edtPortaKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
    function getServerAdress() : string;
    function getServerPort() : Integer;
    function getDataBaseName() : String;
    function getDataBaseUser() : String;
    function getDataBasePassword() : String;
  end;

var
  frmDataBase: TfrmDataBase;

implementation

{$R *.dfm}

uses ucMiscelXE, uErro, uMensagens;

{ TfrmDataBase }

procedure TfrmDataBase.btConfirmarClick(Sender: TObject);

  var return_criabd : TpErro;

begin
    if not TMiscelXE.Ping( getServerAdress(), getServerPort() )
      then begin
        ModalResult := mrNone;
        edtEndereco.SetFocus;
        raise Exception.Create('A comunicação com o servidor não pode ser estabelecida.');
      end;

    try

      (*TRotinasMensagens.inicioCursorEspera;
      try
        TControllerAPI_Test.criarBD(
           Self.Handle, getServerAdress(), getServerPort(),
           getDataBaseUser(), getDataBasePassword(),
           getDataBaseName()
        );
      finally
        TRotinasMensagens.fimCursorEspera;
      end; *)

    except on e: exception
      do begin
             ModalResult := mrNone;
             raise Exception.Create('Não foi possível criar a base de dados.'#13#10 +
                                    e.Message );
      end;
    end;
end;

procedure TfrmDataBase.edtPortaKeyPress(Sender: TObject; var Key: Char);
begin
    if not (key in ['0'..'9', #8, #9])
      then begin
        key := #0;
      end;
end;

function TfrmDataBase.getDataBaseName: String;
begin
    Result := trim(edtBase.Text);
end;

function TfrmDataBase.getDataBasePassword: String;
begin
    Result := Trim(edtSenha.Text);
end;

function TfrmDataBase.getDataBaseUser: String;
begin
   Result := Trim(edtUsuario.Text);
end;

function TfrmDataBase.getServerAdress: string;
begin
    Result := Trim(edtEndereco.Text);
end;

function TfrmDataBase.getServerPort: Integer;
begin
    Result := StrToIntDef(edtPorta.Text,0);
end;

end.
