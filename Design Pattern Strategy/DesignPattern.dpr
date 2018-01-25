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
  try
    FTela := TTelaDeSelecao.Create;
    // FBird := TDuckClass.Create(TVoarComAsas.Create); -->> "ensinando classe pai a como voar"
    FBird := TBird.Create;
    FPomba := TPomba.Create;
    FBob := TDogMau.Create;
    // FBob := TDogMau.Create(TLatidoComum.Create, TViralata.Create); Utilizando Create do DogClass.
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
            FBird.FTipoDeQuack.Quack;
            FBird.FTipoDeVoo.Fly;
          end;
        2:
          begin
            FPomba.FTipoDeQuack.Quack;
            FPomba.FTipoDeVoo.Fly;
          end;
        3:
          begin
            FBob.FTipoDeRaca.RacaDog;
            FBob.FTipoDeLatido.Latir;
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
