unit PizzasTexas;

interface

uses
  System.SysUtils, Pizza, PizzaStore;

type
  TQuatroQueijosTX = class(TPizza)
  public
    function PrepararPizza: string; override;
  end;

implementation

function TQuatroQueijosTX.PrepararPizza: string;
begin
  inherited;
  Result := 'Pizza Quatro QueijosTX!';
end;

initialization
  TPizzaStore.RegistrarPizza(TQuatroQueijosTX);

end.
