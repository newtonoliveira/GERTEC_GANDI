program gandi;

uses
  System.StartUpCopy,
  FMX.Forms,
  uMain in 'uMain.pas' {frmMain},
  gertec.gandi_gp700x in 'gertec\gertec.gandi_gp700x.pas',
  gertec.lib.gandi in 'gertec\lib\gertec.lib.gandi.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
