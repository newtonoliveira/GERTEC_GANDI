unit uMain;

interface

uses
  System.SysUtils,
  System.Types,
  System.UITypes,
  System.Classes,
  System.Variants,
  FMX.Types,
  FMX.Controls,
  FMX.Forms,
  FMX.Graphics,
  FMX.Dialogs,
  FMX.Controls.Presentation,
  FMX.StdCtrls,
  FMX.Layouts,
  gertec.gandi_gp700x;

type
  TfrmMain = class(TForm)
    lytPrincipal: TLayout;
    cbxDebug: TGroupBox;
    swcLog: TSwitch;
    gbxNivelBateria: TGroupBox;
    pbrNivelBateria: TProgressBar;
    btnAtualizar: TButton;
    GroupBox1: TGroupBox;
    swcHabilitaCamera: TSwitch;
    procedure swcLogSwitch(Sender: TObject);
    procedure btnAtualizarClick(Sender: TObject);
    procedure swcHabilitaCameraSwitch(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.fmx}

procedure TfrmMain.btnAtualizarClick(Sender: TObject);
begin
  pbrNivelBateria.Value := GertecGandi.QualNivelDaBateria;
  GertecGandi.ListaAPN;
end;

procedure TfrmMain.swcHabilitaCameraSwitch(Sender: TObject);
begin
  GertecGandi.HabilitaCamera(swcHabilitaCamera.IsChecked);
end;

procedure TfrmMain.swcLogSwitch(Sender: TObject);
begin
  GertecGandi.HabilitaLOGADB(swcLog.IsChecked);
end;

end.
