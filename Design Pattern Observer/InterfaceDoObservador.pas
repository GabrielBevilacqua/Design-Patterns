unit InterfaceDoObservador;

interface

type
  IObservador = Interface(IInterface)
     function Atualizar(Temperatura, Humidade, Pressao : Double): Double;
  end;

implementation

end.
