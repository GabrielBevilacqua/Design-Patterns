program ProjectCommand;

{$APPTYPE CONSOLE}
{$R *.res}

uses
  System.SysUtils,
  InterfaceCommandos in 'InterfaceCommandos.pas',
  Controle in 'Controle.pas',
  Luz in 'Luz.pas',
  ComandosLuz in 'ComandosLuz.pas',
  ComandoPadrao in 'ComandoPadrao.pas';

var
  ControleRemoto: TControle;
  LuzDaSala: TLuz;
  AcenderLuz: IComandos;
  ApagarLuz: IComandos;

begin
  ControleRemoto := nil;
  LuzDaSala := nil;
  try
    ControleRemoto := TControle.Create;
    LuzDaSala := TLuz.Create;
    AcenderLuz := TAcenderLuz.Create(LuzDaSala);
    ApagarLuz := TApagarLuz.Create(LuzDaSala);
    try
      ControleRemoto.DefinirComandos(0, AcenderLuz, ApagarLuz);
      ControleRemoto.BotaoLigarApertado(0);
      ControleRemoto.BotaoDesligarApertado(0);
      ControleRemoto.BotaoLigarApertado(0);
      ControleRemoto.BotaoUndoApertado;
      Readln;
    except
      on E: Exception do
        Writeln(E.ClassName, ': ', E.Message);
    end;
  finally
    ReportMemoryLeaksOnShutdown := True;
    ControleRemoto.Free;
    LuzDaSala.Free;
  end;

end.
