program ProjectDecoratorWithInterface;

{$APPTYPE CONSOLE}
{$R *.res}

uses
  System.SysUtils,
  Sorvete in 'Sorvete.pas',
  Morango in 'Morango.pas',
  Casquinha in 'Casquinha.pas',
  Adicionais in 'Adicionais.pas';

var
  Pedido01: ISorvete;

begin
  try
    Pedido01 := TMorango.Create;
    try
      Pedido01 := TCasquinha.Create(Pedido01);
      Writeln(Pedido01.GetDescricao);
      Readln;
      Writeln(Format('%m', [Pedido01.Custo]));
      Readln;
    except
      on E: Exception do
        Writeln(E.ClassName, ': ', E.Message);
    end;
  finally
    ReportMemoryLeaksOnShutdown := True;
  end;

end.
