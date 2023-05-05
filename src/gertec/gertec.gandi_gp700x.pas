unit gertec.gandi_gp700x;

interface

uses
  System.SysUtils,
  System.UITypes,
  System.Classes,
  System.Variants,
  FMX.Graphics,
  FMX.Dialogs,
  gertec.lib.gandi,
  System.Threading,
  FMX.Helpers.Android,
  FMX.Surfaces,
  FMX.FontGlyphs,
  Androidapi.JNI.GraphicsContentViewText,
  System.IOUtils,
  Androidapi.Helpers,
  Androidapi.JNI.App,
  Androidapi.JNIBridge,
  Androidapi.JNI.JavaTypes;

type
  TGertecGandi = class
  private
    FGandi: JIGandi;
  public
    procedure HabilitaLauncher(AHabilita: boolean);
    procedure HabilitaLOGADB(AHabilita: boolean);
    procedure HabilitaCamera(AHabilita: boolean);

    function QualNivelDaBateria: Integer;
    function ListaAPN(): boolean;

  end;

var
  GertecGandi: TGertecGandi;
  aTask: ITask;

implementation

{ TGandiPOS }

procedure TGertecGandi.HabilitaCamera(AHabilita: boolean);
begin
  GertecGandi.FGandi.CameraEnabled(AHabilita);
end;

procedure TGertecGandi.HabilitaLauncher(AHabilita: boolean);
begin
  GertecGandi.FGandi.LauncherEnabled(AHabilita);
end;

procedure TGertecGandi.HabilitaLOGADB(AHabilita: boolean);
begin
  GertecGandi.FGandi.AdbLogEnabled(AHabilita);
end;

function TGertecGandi.ListaAPN: boolean;
var
  lApn: JList;
begin
  lApn := GertecGandi.FGandi.ApnListGet();
  result := lApn.isEmpty;
end;

function TGertecGandi.QualNivelDaBateria: Integer;
begin
  result := GertecGandi.FGandi.GetBatteryLevel().intValue;
end;

initialization

GertecGandi := TGertecGandi.Create();

aTask := TTask.Create(
  procedure()
  begin
    GertecGandi.FGandi := TJGandi.JavaClass.getInstance(TAndroidHelper.Activity);
  end);
aTask.Start;

end.
