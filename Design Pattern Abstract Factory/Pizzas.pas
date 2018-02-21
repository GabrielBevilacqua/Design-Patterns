unit Pizzas;

interface

uses
  System.SysUtils, InterfacePizzaStore;

type
  TEdmotoPizzas = class(TPizza)
  public
    function SaborDaPizza: string; override;
    function ValorDaPizza: Currency; override;
  end;

  TJamalPizzas = class(TPizza)
  public
    function SaborDaPizza: string; override;
    function ValorDaPizza: Currency; override;
  end;

implementation

uses
  PizzariaJamal, EsfihariaEdmoto;

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
  Result := 'Pizza Topzera do Jamal!';
end;

function TJamalPizzas.ValorDaPizza: Currency;
begin
  Result := 25.00
end;

initialization
  TPizzariaJamal.RegistrarPizza(TJamalPizzas);
  TEsfihariaEdmoto.RegistrarPizza(TEdmotoPizzas);
end.
