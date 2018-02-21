unit PizzariaJamal;

interface

uses
  System.SysUtils, InterfacePizzaStore, Esfihas, Pizzas;

type
  TPizzariaJamal = class(TInterfacedObject, IPizzaStore)
  public
    function PesquisarPizza: IPizza;
    function PesquisarEsfiha: IEsfiha;
  end;

implementation

{ TPizzariaJamal }

function TPizzariaJamal.PesquisarEsfiha: IEsfiha;
begin
  Result := TJamalEsfihas.Create;
end;

function TPizzariaJamal.PesquisarPizza: IPizza;
begin
  Result := TJamalPizzas.Create;
end;

end.
