unit TestDogMau;

interface

uses
  TestFramework, DogMau, DogClass, Viralata, System.SysUtils, LatidoNormal;

type
  TestTDogMau = class(TTestCase)
  strict private
    FDogMau: TDogMau;
  protected
    procedure SetUp; override;
    procedure TearDown; override;
  published
    procedure ClassTest_TipoTDogMau_TDogMau;
    procedure LatidoTest_LatidoDogMau_AuAu;
    procedure RacaTest_RacaDogMau_Viralata;

  end;

implementation

procedure TestTDogMau.LatidoTest_LatidoDogMau_AuAu;
begin
  CheckEquals('AU AU AU !', FDogMau.Latir);
end;

procedure TestTDogMau.RacaTest_RacaDogMau_Viralata;
begin
  CheckEquals('E ai parça sou um Viralata da quebrada mermao !', FDogMau.RacaDog);
end;

procedure TestTDogMau.SetUp;
begin
  inherited;
  FDogMau := TDogMau.Create;
end;

procedure TestTDogMau.TearDown;
begin
  inherited;
  FDogMau.Free;
end;

procedure TestTDogMau.ClassTest_TipoTDogMau_TDogMau;
begin
  CheckEquals(FDogMau.ClassType, TDogMau);
end;

initialization
  // Register any test cases with the test runner
  RegisterTest(TestTDogMau.Suite);
end.

