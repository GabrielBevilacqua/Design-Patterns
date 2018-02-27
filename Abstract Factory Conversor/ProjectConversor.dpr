program ProjectConversor;

uses
  Vcl.Forms,
  UnitConversor in 'UnitConversor.pas' {Form1},
  JSONToDataSet in 'JSONToDataSet.pas';

{$R *.res}

begin
  ReportMemoryLeaksOnShutdown := True;
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
