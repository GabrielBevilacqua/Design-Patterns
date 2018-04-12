program ProjectComposite;

{$APPTYPE CONSOLE}
{$R *.res}

uses
  System.SysUtils,
  InterfaceTela in 'InterfaceTela.pas',
  Textos in 'Textos.pas',
  Printer in 'Printer.pas',
  Titulos in 'Titulos.pas';

var
  Printer: TPrinter;
  Textos: ITela;
  Titulos: ITela;

begin
  Printer := nil;
  try
    Printer := TPrinter.Create;
    Textos := TTextos.Create;
    Titulos := TTitulos.Create;
    try
      Printer.AddNaTela(Titulos);
      Printer.AddNaTela(Textos);
      Printer.AddNaTela(Textos);
      Printer.Print;
      Readln;
    except
      on E: Exception do
        Writeln(E.ClassName, ': ', E.Message);
    end;
  finally
    ReportMemoryLeaksOnShutdown := True;
    Printer.Free;
  end;

end.
