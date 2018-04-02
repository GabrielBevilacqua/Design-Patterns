program ProjectTemplate;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  PadocaClass in 'PadocaClass.pas',
  TiposDeMassas in 'TiposDeMassas.pas';

var
  PaoDoce: TPadoca;
  PaoSalgado: TPadoca;

begin
  PaoDoce := nil;
  PaoSalgado := nil;
  try
    PaoDoce := TMassaDoce.Create;
    PaoSalgado := TMassaSalgada.Create;
    try
      PaoDoce.PrepararMassa;
      Readln;
      PaoSalgado.PrepararMassa;
      Readln;
    except
      on E: Exception do
        Writeln(E.ClassName, ': ', E.Message);
    end;
  finally
    ReportMemoryLeaksOnShutdown := True;
    PaoDoce.Free;
    PaoSalgado.Free;
  end;

end.
