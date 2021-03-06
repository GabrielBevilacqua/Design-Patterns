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
  FTempoAtual: TDadosDoTempo;
  FNotasDoApk: TNotasDoApk;

  FExibirTemp: TExibirTempoAtual;
  FExibirNotas: TExibirNotasMondinho;

begin
  FTempoAtual := TDadosDoTempo.Create;
  FNotasDoApk := TNotasDoApk.Create;

  FExibirTemp := TExibirTempoAtual.Create;
  FExibirNotas := TExibirNotasMondinho.Create;
  try
    try
      FTempoAtual.NovoObservador(FExibirTemp);
      FTempoAtual.DefinirTempo(27, 10, 35);

      FTempoAtual.NovoObservador(FExibirTemp);
      FTempoAtual.DeletarObservador(FExibirTemp);

      FTempoAtual.DefinirTempo(10, 10, 10);

      FNotasDoApk.NovoObservador(FExibirNotas);
      FNotasDoApk.DefinirNotas(6, 7);
    except
      on E: Exception do
        Writeln(E.ClassName, ': ', E.Message);
    end;
  finally
    ReportMemoryLeaksOnShutdown := True;
     FTempoAtual.Free;
     FNotasDoApk.Free;

//     FExibirTemp.Free;
//     FExibirNotas.Free;    //Nao precisa dar free, pois as classes herdam de uma interface
  end;

end.
