unit InterfacePizzaStore;

interface

type
  TEsfiha = class;
  TPizza = class;

  TTipoDePizza = class of TPizza;
  TTipoDeEsfiha = class of TEsfiha;

  TPizzaStore = class
    function PesquisarEsfiha: TEsfiha; virtual; abstract;
    function PesquisarPizza: TPizza; virtual; abstract;
    class procedure RegistrarPizza(Pizza: TTipoDePizza); virtual; abstract;
    class procedure RegistrarEsfiha(Esfiha: TTipoDeEsfiha); virtual; abstract;
  end;

  TEsfiha = class
    function SaborDaEsfiha: string; virtual; abstract;
    function ValorDaEsfiha: currency; virtual; abstract;
  end;

  TPizza = class
    function SaborDaPizza: string; virtual; abstract;
    function ValorDaPizza: currency; virtual; abstract;
  end;

implementation

end.
