unit PizzaStore;

interface

type
  TPizza = class
    procedure Cook; virtual; abstract;
    procedure Deliver;
  end;

  TPizzaClass = class of TPizza;


  TPizzaStore = class
  private
    class var FPizzas: TArray<TPizzaClass>;
  public
    class procedure RegisterPizza(Pizza: TPizzaClass);
    class function GetPizza(classe: string): TPizza;
  end;

implementation

{ TPizzaStore }

class function TPizzaStore.GetPizza(classe: string): TPizza;
var
  PizzaClasse: TPizzaClass;
begin
  for PizzaClasse in FPizzas do
    if PizzaClasse.ClassName = classe then
      Exit(PizzaClasse.Create);
end;

class procedure TPizzaStore.RegisterPizza(Pizza: TPizzaClass);
begin
  FPizzas := FPizzas + [Pizza];
end;

{ TPizza }

procedure TPizza.Deliver;
begin
  Writeln('Delivered');
end;

end.
