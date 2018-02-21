unit Pizzas;

interface

uses
  System.SysUtils, InterfacePizzaStore;

type
  TEdmotoPizzas = class(TInterfacedObject, IPizza)
  public
    function SaborDaPizza: string;
    function ValorDaPizza: Currency;
  end;

  TJamalPizzas = class(TInterfacedObject, IPizza)
  public
    function SaborDaPizza: string;
    function ValorDaPizza: Currency;
  end;

implementation

{ TEdmotoPizzas }

function TEdmotoPizzas.SaborDaPizza: string;
begin
  Result := 'Pizza Meia Boca Do Edmoto!';
end;

function TEdmotoPizzas.ValorDaPizza: Currency;
begin
  Result := 22.50;
end;

{ TJamalPizzas }

function TJamalPizzas.SaborDaPizza: string;
begin
  Result := 'Pizza Do Jamal Topzera!';
end;

function TJamalPizzas.ValorDaPizza: Currency;
begin
  Result := 28.50;
end;

end.
