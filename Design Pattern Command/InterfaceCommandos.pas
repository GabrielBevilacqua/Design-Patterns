unit InterfaceCommandos;

interface

type
  IComandos = Interface(IInterface)
  procedure Executar;
  procedure Desfazer;
  end;

implementation

end.
