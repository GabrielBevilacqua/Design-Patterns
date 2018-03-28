program ProjectBridge;

{$APPTYPE CONSOLE}
{$R *.res}

uses
  System.SysUtils,
  AbstractView in 'AbstractView.pas',
  ViewCelular in 'ViewCelular.pas',
  InterfaceRecursos in 'InterfaceRecursos.pas',
  RecursosDeArtistas in 'RecursosDeArtistas.pas',
  Artista in 'Artista.pas';

var
  View: TView;
  Recursos: IRecursos;
  Panic: TArtista;

begin
  try
    Recursos := TRecursosDeArtistas.Create(Panic);
    View := TViewCelular.Create(Recursos);
    try
      View.Exibir('Panic');
      Readln;
    except
      on E: Exception do
        Writeln(E.ClassName, ': ', E.Message);
    end;
  finally
    ReportMemoryLeaksOnShutdown := True;
    FreeAndNil(View);
    FreeAndNil(Panic);
  end;

end.
