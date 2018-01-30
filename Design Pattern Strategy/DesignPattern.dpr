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
  VooDaPomba in 'VooDaPomba.pas',
  DogClass in 'DogClass.pas',
  RacaDog in 'RacaDog.pas',
  TipoDeLatido in 'TipoDeLatido.pas',
  LatidoNormal in 'LatidoNormal.pas',
  Viralata in 'Viralata.pas',
  DogMau in 'DogMau.pas',
  TelaDeSelecao in 'TelaDeSelecao.pas';

var
  FBird: TDuckClass;
  FPomba: TDuckClass;
  FBob: TDogClass;
  FTela: TTelaDeSelecao;
  NumAnimal: Integer;

begin
  FTela := TTelaDeSelecao.Create;
  // FBird := TDuckClass.Create(TVoarComAsas.Create); -->> "ensinando classe pai a como voar"
  FBird := TBird.Create;
  FPomba := TPomba.Create;
  FBob := TDogMau.Create;
  // FBob := TDogMau.Create(TLatidoComum.Create, TViralata.Create); Utilizando Create do DogClass.
  try
    try
      FTela.Tela;
      Readln(NumAnimal);

      while not(NumAnimal in [1, 2, 3]) do
      begin
        Writeln('Digite um numero valido!');
        Readln(NumAnimal);
      end;
      case NumAnimal of
        1:
          begin
            Writeln(FBird.Quack);
            Readln;
            Writeln(FBird.Fly);
            Readln;
          end;
        2:
          begin
            Writeln(FPomba.Quack);
            Readln;
            Writeln(FPomba.Fly);
            Readln;
          end;
        3:
          begin
            Writeln(FBob.RacaDog);
            Readln;
            Writeln(FBob.Latir);
            Readln;
          end;

      end;
    except
      on E: Exception do
        Writeln(E.ClassName, ': ', E.Message);
    end;
  finally
    FBird.Free;
    FPomba.Free;
    FBob.Free;
    FTela.Free;
  end;

end.
