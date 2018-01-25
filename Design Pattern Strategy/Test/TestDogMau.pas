unit TestDogMau;

interface

uses
  TestFramework, DogMau, DogClass, Viralata, System.SysUtils, LatidoNormal;

type
  TestTDogMau = class(TTestCase)
  strict private
    FDogMau: TDogMau;
  published

  end;

implementation

initialization
  // Register any test cases with the test runner
  RegisterTest(TestTDogMau.Suite);
end.

