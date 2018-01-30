program ProjectObserver;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  DadosDoTempo in 'DadosDoTempo.pas',
  InterfaceDoAssunto in 'InterfaceDoAssunto.pas',
  Observador in 'Observador.pas',
  InterfaceDoObservador in 'InterfaceDoObservador.pas';

begin
  try
    { TODO -oUser -cConsole Main : Insert code here }
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
