unit PizzariaJamal;

interface

uses
  System.SysUtils, InterfacePizzaStore, Esfihas, Pizzas;

type
  TPizzariaJamal = class(TPizzaStore)
  public
    class var PizzasJamal: TArray<TTipoDePizza>;
    class var EsfihasJamal: TArray<TTipoDeEsfiha>;

    function PesquisarEsfiha: TEsfiha; override;
    class procedure RegistrarEsfiha(Esfiha: TTipoDeEsfiha); override;
    function PesquisarPizza: TPizza; override;
    class procedure RegistrarPizza(Pizza: TTipoDePizza); override;
  end;

implementation

function TPizzariaJamal.PesquisarEsfiha: TEsfiha;
begin
  inherited;
  Result := TJamalEsfihas.Create;
end;

function TPizzariaJamal.PesquisarPizza: TPizza;
begin
  inherited;
  Result := TJamalPizzas.Create;
end;

class procedure TPizzariaJamal.RegistrarEsfiha(Esfiha: TTipoDeEsfiha);
begin
  inherited;
  EsfihasJamal := EsfihasJamal + [Esfiha];
end;

class procedure TPizzariaJamal.RegistrarPizza(Pizza: TTipoDePizza);
begin
  inherited;
  PizzasJamal := PizzasJamal + [Pizza];
end;

end.
