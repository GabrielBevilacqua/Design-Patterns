program ProjectCommand;

{$APPTYPE CONSOLE}
{$R *.res}

uses
  System.SysUtils,
  InterfaceCommandos in 'InterfaceCommandos.pas',
  Controle in 'Controle.pas',
  Luz in 'Luz.pas',
  ComandosLuz in 'ComandosLuz.pas';

var
  ControleRemoto: TControle;
  LuzDaSala: TLuz;
  AcenderLuz: TAcenderLuz;
  ApagarLuz: TApagarLuz;

begin
  try
    ControleRemoto := TControle.Create;
    LuzDaSala := TLuz.Create;
    AcenderLuz := TAcenderLuz.Create(LuzDaSala);
    ApagarLuz := TApagarLuz.Create(LuzDaSala);
    try
      ControleRemoto.DefinirComandos(1, AcenderLuz, ApagarLuz);
      ControleRemoto.BotaoLigarApertado(1);
      ControleRemoto.BotaoDesligarApertado(1);
      Readln;
    except
      on E: Exception do
        Writeln(E.ClassName, ': ', E.Message);
    end;
  finally

  end;

end.
