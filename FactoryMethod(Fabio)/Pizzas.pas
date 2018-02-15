unit Pizzas;

interface

implementation

uses
  PizzaStore;

type
  TPizzaPeperoni = class(TPizza)
  public
    procedure Cook; override;
  end;

  TPizzaCalabreza = class(TPizza)
  public
    procedure Cook; override;
  end;

{ TPizzaPeperoni }

procedure TPizzaPeperoni.Cook;
begin
  Writeln('Peperoni');
end;

{ TPizzaCalabreza }

procedure TPizzaCalabreza.Cook;
begin
  WriteLn('Calabreza');
end;

initialization
  TPizzaStore.RegisterPizza(TPizzaPeperoni);
  TPizzaStore.RegisterPizza(TPizzaCalabreza);

end.
