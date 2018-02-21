unit InterfacePizzaStore;

interface

type
  IEsfiha = interface;
  IPizza = interface;

  IPizzaStore = interface(IInterface)
    function PesquisarEsfiha: IEsfiha;
    function PesquisarPizza: IPizza;
  end;

  IEsfiha = interface(IInterface)
    function SaborDaEsfiha: string;
    function ValorDaEsfiha: currency;
  end;

  IPizza = interface(IInterface)
    function SaborDaPizza: string;
    function ValorDaPizza: currency;
  end;

implementation

end.
