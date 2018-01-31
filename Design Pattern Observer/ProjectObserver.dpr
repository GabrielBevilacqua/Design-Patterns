program ProjectObserver;

{$APPTYPE CONSOLE}
{$R *.res}

uses
  System.SysUtils,
  DadosDoTempo in 'DadosDoTempo.pas',
  InterfaceDadosTempo in 'InterfaceDadosTempo.pas',
  InterfaceObservadorTempo in 'InterfaceObservadorTempo.pas',
  ExibirTempoAtual in 'ExibirTempoAtual.pas',
  InterfaceExibir in 'InterfaceExibir.pas',
  NotasDoApk in 'NotasDoApk.pas',
  InterfaceNotas in 'InterfaceNotas.pas',
  InterfaceObservadorApk in 'InterfaceObservadorApk.pas',
  ExibirNotasMondinho in 'ExibirNotasMondinho.pas';

var
  FTempoAtual : TDadosDoTempo;
  FNotasDoApk : TNotasDoApk;

  FExibirTemp : TExibirTempoAtual;
  FExibirNotas : TExibirNotasMondinho;

begin
  try
    FTempoAtual := TDadosDoTempo.Create;
    FNotasDoApk := TNotasDoApk.Create;

    FExibirTemp := TExibirTempoAtual.Create(FTempoAtual);
    FExibirNotas := TExibirNotasMondinho.Create(FNotasDoApk);
    try
      FTempoAtual.DefinirTempo(27, 10, 35);
      FTempoAtual.NotificarObservador;

      FNotasDoApk.DefinirNotas(6, 7);
      FNotasDoApk.NotificarObservadores;
    except
      on E: Exception do
        Writeln(E.ClassName, ': ', E.Message);
    end;
  finally
//    FTempoAtual.Free;
//    FExibir.Free;     Nao precisa dar free, pois as classes herdam de uma interface
  end;

end.
