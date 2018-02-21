unit PizzariaJamal;

interface

uses
  System.SysUtils, InterfacePizzaStore, Esfihas, Pizzas;

type
  TPizzariaJamal = class(TPizzaStore)
  private
    class var CardapioJamal: TArray<TTipoDePizza>;
  public
    function PesquisarEsfiha: TEsfiha; override;
    class procedure RegistrarEsfiha(Esfiha: TTipoDeEsfiha); override;
    function PesquisarPizza: TPizza; override;
    class procedure RegistrarPizza(Pizza: TTipoDePizza); override;
  end;

implementation

{ TPizzariaJamal }

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
  //
end;

class procedure TPizzariaJamal.RegistrarPizza(Pizza: TTipoDePizza);
begin
  inherited;
  CardapioJamal := CardapioJamal + [Pizza];
end;

end.
