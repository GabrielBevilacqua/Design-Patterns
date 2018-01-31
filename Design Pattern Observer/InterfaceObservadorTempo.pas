unit InterfaceObservadorTempo;

interface

type
  IObservadorTempo = Interface(IInterface)
     function Atualizar(Temperatura, Humidade, Pressao : Double): Double;
  end;

implementation

end.
