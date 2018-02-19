unit PizzaStore;

interface

uses
  Pizza, System.SysUtils;

type
  TTipoDePizzas = class of TPizza;

  TPizzaStore = class
  private
    class var CardapioPizzas: TArray<TTipoDePizzas>;
  public
    class procedure RegistrarPizza(Pizza: TTipoDePizzas); virtual;
    class function PedirPizza(Pizzas: string): TPizza;
  end;

implementation

{ TPizzaStore }

class function TPizzaStore.PedirPizza(Pizzas: string): TPizza;
var
  ClasseDaPizza: TTipoDePizzas;
begin
  for ClasseDaPizza in CardapioPizzas do
    if ClasseDaPizza.ClassName = Pizzas then
      Result := (ClasseDaPizza.Create); //perguntar sobre isso
end;

class procedure TPizzaStore.RegistrarPizza(Pizza: TTipoDePizzas);
begin
  CardapioPizzas := CardapioPizzas + [Pizza];
end;

end.
