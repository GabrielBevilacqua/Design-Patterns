program ProjectObserver;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  DadosDoTempo in 'DadosDoTempo.pas',
  InterfaceDoAssunto in 'InterfaceDoAssunto.pas',
  InterfaceDoObservador in 'InterfaceDoObservador.pas',
  ExibirTempoAtual in 'ExibirTempoAtual.pas',
  InterfaceExibir in 'InterfaceExibir.pas';

begin
  try
    { TODO -oUser -cConsole Main : Insert code here }
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
