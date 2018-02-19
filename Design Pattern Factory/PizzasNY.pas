unit PizzasNY;

interface

uses
  System.SysUtils, Pizza, PizzaStore;

type
  TQuatroQueijosNY = class(TPizza)
  public
    function PrepararPizza: string; override;
  end;

implementation

function TQuatroQueijosNY.PrepararPizza: string;
begin
  inherited;
  Result := 'Pizza de Quatro Queijos NY!';
end;

initialization
  TPizzaStore.RegistrarPizza(TQuatroQueijosNY);

end.
