program ProjectFactory;

{$APPTYPE CONSOLE}
{$R *.res}

uses
  System.SysUtils,
  PizzaStore in 'PizzaStore.pas',
  PizzasNY in 'PizzasNY.pas',
  Pizza in 'Pizza.pas',
  PizzasTexas in 'PizzasTexas.pas';

var
  Pedido: TPizza;
  Pedido02: TPizza;
  P: TPedido;
begin
  P := TPedido.Create;
  try
    P.Pedir(2, 'TQuatroQueijosNY');
    P.Pedir(1, 'TQuatroQueijosTX');
    P.MostrarPedido;
    Readln;
  finally
    P.Free;
  end;

  Pedido := nil;
  Pedido02 := nil;
  try
    Pedido := TPizzaStore.PedirPizza('TQuatroQueijosNY');
    Pedido02 := TPizzaStore.PedirPizza('TQuatroQueijosTX');
    try
      Writeln(Pedido.PrepararPizza);
      Pedido.Entregar;
      Readln;
      Writeln(Pedido02.PrepararPizza);
      Pedido02.Entregar;
      Readln;
    except
      on E: Exception do
        Writeln(E.ClassName, ': ', E.Message);
    end;
  finally
    Pedido.Free;
    Pedido02.Free;
    ReportMemoryLeaksOnShutdown := True;
  end;

end.
