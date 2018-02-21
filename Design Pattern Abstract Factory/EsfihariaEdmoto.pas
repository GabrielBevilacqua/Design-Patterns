unit EsfihariaEdmoto;

interface

uses
  System.SysUtils, InterfacePizzaStore, Esfihas, Pizzas;

type
  TEsfihariaEdmoto = class(TInterfacedObject, IPizzaStore)
  public
    function PesquisarEsfiha: IEsfiha;
    function PesquisarPizza: IPizza;
  end;

implementation

{ TEsfihariaEdmoto }

function TEsfihariaEdmoto.PesquisarEsfiha: IEsfiha;
begin
  Result := TEdmotoEsfihas.Create;
end;

function TEsfihariaEdmoto.PesquisarPizza: IPizza;
begin
  Result := TEdmotoPizzas.Create;
end;

end.
