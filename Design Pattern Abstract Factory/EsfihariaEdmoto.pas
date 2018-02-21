unit EsfihariaEdmoto;

interface

uses
  System.SysUtils, InterfacePizzaStore, Esfihas, Pizzas;

type
  TEsfihariaEdmoto = class(TPizzaStore)
  private
    class var CardapioEdmoto : TArray<TTipoDePizza>;
  public
    function PesquisarEsfiha: TEsfiha; override;
    class procedure RegistrarEsfiha(Esfiha: TTipoDeEsfiha); override;
    function PesquisarPizza: TPizza; override;
    class procedure RegistrarPizza(Pizza: TTipoDePizza); override;
  end;

implementation

{ TEsfihariaEdmoto }

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
//
end;

class procedure TEsfihariaEdmoto.RegistrarPizza(Pizza: TTipoDePizza);
begin
  inherited;
  CardapioEdmoto := CardapioEdmoto + [Pizza];
end;

end.
