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

  TPedido = class
    class var FPizzas: TArray<TPizza>;
    class procedure Pedir(Qtde: Integer; const Tipo: string);
    class procedure MostrarPedido;
  end;

implementation

{ TPizzaStore }

class function TPizzaStore.PedirPizza(Pizzas: string): TPizza;
var
  ClasseDaPizza: TTipoDePizzas;
begin
  Result := nil;
  for ClasseDaPizza in CardapioPizzas do
    if ClasseDaPizza.ClassName = Pizzas then
      Result := (ClasseDaPizza.Create); //perguntar sobre isso

  if Result = nil then
    raise Exception.Create('Pizza não cadastrada.');
end;

class procedure TPizzaStore.RegistrarPizza(Pizza: TTipoDePizzas);
begin
  CardapioPizzas := CardapioPizzas + [Pizza];
end;

{ TPedido }

class procedure TPedido.MostrarPedido;
var
  P: TPizza;
begin
  for P in FPizzas do
    WriteLn(P.PrepararPizza);
end;

class procedure TPedido.Pedir(Qtde: Integer; const Tipo: string);
var
  I: Integer;
begin
  for I := 0 to Qtde - 1 do
    FPizzas := FPizzas + [TPizzaStore.PedirPizza(Tipo)];
end;

end.
