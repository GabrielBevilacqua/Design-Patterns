unit PizzaStore;

interface

uses
  Pizza, System.SysUtils;

type
  TTipoDePizzas = class of TPizza;

  TPizzaStore = class
  private
    CardapioPizzas: TArray<TTipoDePizzas>;
  public
    procedure RegistrarPizza(Pizza : TTipoDePizzas); virtual;
    function PedirPizza(TipoDePizza: string): TPizza; dd
  end;

implementation

{ TPizzaStore }

function TPizzaStore.PedirPizza(TipoDePizza: string): TPizza;
begin
//
end;

procedure TPizzaStore.RegistrarPizza(Pizza: TTipoDePizzas);
begin
//
end;

end.
