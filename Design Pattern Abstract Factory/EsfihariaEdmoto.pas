unit EsfihariaEdmoto;

interface

uses
  System.SysUtils, InterfacePizzaStore, Esfihas, Pizzas;

type
  TEsfihariaEdmoto = class(TPizzaStore)
  public
    class var PizzasEdmoto: TArray<TTipoDePizza>;
    class var EsfihasEdmoto: TArray<TTipoDeEsfiha>;
    function PesquisarEsfiha: TEsfiha; override;
    class procedure RegistrarEsfiha(Esfiha: TTipoDeEsfiha); override;
    function PesquisarPizza: TPizza; override;
    class procedure RegistrarPizza(Pizza: TTipoDePizza); override;
  end;

implementation

function TEsfihariaEdmoto.PesquisarEsfiha: TEsfiha;
begin
  inherited;
  Result := TEdmotoEsfihas.Create;
end;

function TEsfihariaEdmoto.PesquisarPizza: TPizza;
begin
  inherited;
   Result := TEdmotoPizzas.Create;
end;

class procedure TEsfihariaEdmoto.RegistrarEsfiha(Esfiha: TTipoDeEsfiha);
begin
  inherited;
  EsfihasEdmoto := EsfihasEdmoto + [Esfiha];
end;

class procedure TEsfihariaEdmoto.RegistrarPizza(Pizza: TTipoDePizza);
begin
  inherited;
  PizzasEdmoto := PizzasEdmoto + [Pizza];
end;

end.
