program ProjectFacade;

{$APPTYPE CONSOLE}
{$R *.res}

uses
  System.SysUtils,
  MaquinaDePipoca in 'MaquinaDePipoca.pas',
  Luz in 'Luz.pas',
  Projetor in 'Projetor.pas',
  Amplificador in 'Amplificador.pas',
  Dvd in 'Dvd.pas',
  HomeTheaterFacade in 'HomeTheaterFacade.pas';

var
  HomeTheater: THomeFacade;
  MaquinaDePipoca: TMaqDePipoca;
  Luz: TLuz;
  Projetor: TProjetor;
  Amplificador: TAmplificador;
  Dvd: TDvd;

begin
  MaquinaDePipoca := nil;
  Luz := nil;
  Projetor := nil;
  Amplificador := nil;
  Dvd := nil;
  try
    HomeTheater := THomeFacade.Create(MaquinaDePipoca, Luz, Projetor, Amplificador, Dvd);
    try
      HomeTheater.AssistirFilme('Caraioooo');
      Readln;
      HomeTheater.DesligarHomeFacade;
      Readln;
    except
      on E: Exception do
        Writeln(E.ClassName, ': ', E.Message);
    end;
  finally
    ReportMemoryLeaksOnShutdown := True;
    HomeTheater.Free;
  end;

end.
