program ProjectCommand;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  InterfaceCommandos in 'InterfaceCommandos.pas',
  Controle in 'Controle.pas',
  Luz in 'Luz.pas',
  ComandosLuz in 'ComandosLuz.pas';

begin
  try
    { TODO -oUser -cConsole Main : Insert code here }
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
