program Project1;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  System.Generics.Collections,
  Pizzas in 'Pizzas.pas',
  PizzaStore in 'PizzaStore.pas';

var
  Pizza: TPizza;
begin
  try
    Pizza := TPizzaStore.GetPizza('TPizzaPeperoni');
    try
      Pizza.Cook;
      Pizza.Deliver;
    finally
      Pizza.Free;
    end;
    Readln;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
