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

begin
  try
    { TODO -oUser -cConsole Main : Insert code here }
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
