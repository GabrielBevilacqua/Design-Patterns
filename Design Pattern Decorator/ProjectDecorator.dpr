program ProjectDecorator;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  Bebida in 'Bebida.pas',
  DecoratorAdicionais in 'DecoratorAdicionais.pas',
  Expresso in 'Expresso.pas',
  Creme in 'Creme.pas',
  Capuccino in 'Capuccino.pas',
  Canela in 'Canela.pas';

var
  Pedido01: TBebida;
  Pedido02: TBebida;
begin
  Pedido01 := TExpresso.Create;
  Pedido01 := TCanela.Create(Pedido01);
  Pedido01 := TCreme.Create(Pedido01);
  Pedido02 := TCapucino.Create;
  Pedido02 := TCanela.Create(Pedido02);
  Pedido02 := TCreme.Create(Pedido02);
  try
  try
    Writeln(Pedido01.GetDescricao);
    Readln;
    Writeln(Format('%m', [Pedido01.Custo]));
    Readln;
    Writeln(Pedido02.GetDescricao);
    Readln;
    Writeln(Format('%m', [Pedido02.Custo]));
    Readln;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
  finally
    Pedido01.Free;
    Pedido02.Free;
    ReportMemoryLeaksOnShutdown := True;
  end;
end.
