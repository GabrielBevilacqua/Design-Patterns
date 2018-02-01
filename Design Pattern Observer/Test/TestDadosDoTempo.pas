unit TestDadosDoTempo;

interface

uses
  TestFramework, InterfaceDadosTempo, InterfaceObservadorTempo,
  System.Generics.Collections, DadosDoTempo, System.SysUtils;

type
  TestTDadosDoTempo = class(TTestCase)
  strict private
    FDadosDoTempo: TDadosDoTempo;
  public
    procedure SetUp; override;
    procedure TearDown; override;
  published
    procedure NovoObservador_TDadosDoTempo_1;
    procedure DeletarObservador_TDadosDoTempo_0;
  end;

implementation

uses
  ExibirTempoAtual;

procedure TestTDadosDoTempo.DeletarObservador_TDadosDoTempo_0;
begin
  FDadosDoTempo.NovoObservador(TExibirTempoAtual.Create);
  FDadosDoTempo.DeletarObservador(TExibirTempoAtual.Create);

  CheckEquals(0, FDadosDoTempo.ListaDeObservadores.Count);
end;

procedure TestTDadosDoTempo.NovoObservador_TDadosDoTempo_1;
begin
  FDadosDoTempo.NovoObservador(TExibirTempoAtual.Create);

  CheckEquals(1, FDadosDoTempo.ListaDeObservadores.Count);
end;

procedure TestTDadosDoTempo.SetUp;
begin
  FDadosDoTempo := TDadosDoTempo.Create;
end;

procedure TestTDadosDoTempo.TearDown;
begin
  FDadosDoTempo.Free;
end;

initialization
  // Register any test cases with the test runner
  RegisterTest(TestTDadosDoTempo.Suite);
end.

