program ProjectIterator;

{$APPTYPE CONSOLE}
{$R *.res}

uses
  System.SysUtils,
  InterfaceIterator in 'InterfaceIterator.pas',
  ItensDoMenu in 'ItensDoMenu.pas',
  IteratorMenu in 'IteratorMenu.pas',
  MenuPizzaria in 'MenuPizzaria.pas';

var
  MenuPizza: TMenuPizzaria;
  PizzaIterator: TMenuIterator;

begin
  MenuPizza := nil;
  PizzaIterator := nil;
  try
    MenuPizza := TMenuPizzaria.Create;
    PizzaIterator := MenuPizza.CriarIterator;
    try
      Writeln(PizzaIterator.Nome);
      Writeln(PizzaIterator.Descricao);
      Writeln(Format('%m',[PizzaIterator.Preco]));
      Writeln(PizzaIterator.Vegano);
      Readln;
      PizzaIterator.Proximo;
      Writeln(PizzaIterator.Nome);
      Writeln(PizzaIterator.Descricao);
      Writeln(Format('%m',[PizzaIterator.Preco]));
      Writeln(PizzaIterator.Vegano);
      Readln;

    except
      on E: Exception do
        Writeln(E.ClassName, ': ', E.Message);
    end;
  finally
    ReportMemoryLeaksOnShutdown := True;
    MenuPizza.Free;
    PizzaIterator.Free;

  end;

end.
