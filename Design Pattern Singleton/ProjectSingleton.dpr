program ProjectSingleton;

{$APPTYPE CONSOLE}
{$R *.res}

uses
  System.SysUtils,
  Singleton in 'Singleton.pas';

var
  Cafe: TCafezinho;

begin
  Cafe := nil;
  try
    Cafe := TCafezinho.GetCafe;
    try
      Cafe.AdicionarAcucar;
      Cafe.PrepararCafe;
      Readln;
    except
      on E: Exception do
        Writeln(E.ClassName, ': ', E.Message);
    end;
  finally
    Cafe.Free;
    ReportMemoryLeaksOnShutdown := True;
  end;

end.
