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

var
  FTempoAtual : TDadosDoTempo;
  FExibir : TExibirTempoAtual;
begin
  try
    FTempoAtual := TDadosDoTempo.Create;
    FExibir := TExibirTempoAtual.Create(FTempoAtual);
    try
      FExibir.Atualizar(27, 10, 35);
    except
      on E: Exception do
        Writeln(E.ClassName, ': ', E.Message);
    end;
  finally
//    FTempoAtual.Free;
//    FExibir.Free;     Nao precisa dar free, pois as classes herdam de uma interface
  end;

end.
