unit InterfaceObservadorTempo;

interface

type
  IObservadorTempo = Interface(IInterface)
     procedure Atualizar(Temperatura, Humidade, Pressao : Double);
  end;

implementation

end.
