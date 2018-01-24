program DesignPattern;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  DuckClass in 'DuckClass.pas',
  FlyingBehavior in 'FlyingBehavior.pas',
  VooNormal in 'VooNormal.pas',
  Bird in 'Bird.pas',
  QuackSound in 'QuackSound.pas',
  QuackNormal in 'QuackNormal.pas',
  Pruu in 'Pruu.pas',
  Pomba in 'Pomba.pas',
  VooDaPomba in 'VooDaPomba.pas';

var
  FBird : TDuckClass;
  FPomba : TDuckClass;

begin
  //    FBird := TDuckClass.Create(TVoarComAsas.Create); -->> "ensinando classe pai a como voar"
  FBird := TBird.Create;
  FPomba := TPomba.Create;
  try
    FBird.FTipoDeQuack.Quack;
    FBird.FTipoDeVoo.Fly;

    FPomba.FTipoDeQuack.Quack;
    FPomba.FTipoDeVoo.Fly;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
