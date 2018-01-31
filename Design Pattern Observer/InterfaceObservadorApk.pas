unit InterfaceObservadorApk;

interface

type
  IObservadorApk = interface(IInterface)
  procedure Atualizar(PrimeiraNota , SegundaNota: Double);
  end;

implementation

end.
