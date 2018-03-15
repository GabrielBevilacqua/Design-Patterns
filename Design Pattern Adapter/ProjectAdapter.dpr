program ProjectAdapter;

{$APPTYPE CONSOLE}
{$R *.res}

uses
  System.SysUtils,
  InterfaceDoPato in 'InterfaceDoPato.pas',
  InterfaceDoPiru in 'InterfaceDoPiru.pas',
  Pato in 'Pato.pas',
  Piru in 'Piru.pas',
  Adapter in 'Adapter.pas';

var
  Pato: IPato;
  Piru: IPiru;
  Paru: TAdapterPiru;
begin
  Pato := TPato.Create;
  Piru := TPiru.Create;
  Paru := TAdapterPiru.Create(Piru);
  try
    try
      Pato.Quack;
      Pato.VoarMuito;
      Readln;
      Piru.Gluglu;
      Piru.VoarPouco;
      Readln;
      Paru.Quack;
      Paru.VoarMuito;
      Readln;
    except
      on E: Exception do
        Writeln(E.ClassName, ': ', E.Message);
    end;
  finally
    ReportMemoryLeaksOnShutdown := True;
    Paru.Free;
  end;

end.
