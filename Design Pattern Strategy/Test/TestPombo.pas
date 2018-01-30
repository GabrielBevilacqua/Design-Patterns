unit TestPombo;

interface

uses
  TestFramework, System.SysUtils, VooDaPomba, DuckClass, Pruu, Pomba;

type
  TestTPomba = class(TTestCase)
  strict private
    FPomba: TPomba;
  protected
    procedure SetUp; override;
    procedure TearDown; override;
  published
    procedure ClassTest_TipoPombo_TPomba;
    procedure PruuTest_QuackPombo_Pruu;
    procedure PombaTest_VooDoPombo_PruuVoando;

  end;

implementation

{ TestTPomba }

procedure TestTPomba.ClassTest_TipoPombo_TPomba;
begin
  CheckEquals(FPomba.ClassType, TPomba);
end;

procedure TestTPomba.PombaTest_VooDoPombo_PruuVoando;
begin
  CheckEquals('Pruu Estou Voando e Cagando !', FPomba.Fly);
end;

procedure TestTPomba.PruuTest_QuackPombo_Pruu;
begin
  CheckEquals('Pruuuuuuu sou um Pombo', FPomba.Quack);
end;

procedure TestTPomba.SetUp;
begin
  inherited;
  FPomba := TPomba.Create;
end;

procedure TestTPomba.TearDown;
begin
  inherited;
  FPomba.Free
end;

initialization
  // Register any test cases with the test runner
  RegisterTest(TestTPomba.Suite);
end.

