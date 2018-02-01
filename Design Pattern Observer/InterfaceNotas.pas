unit InterfaceNotas;

interface

uses
  System.SysUtils, InterfaceObservadorApk;

type
  IInterfaceNotas = interface(IInterface)
    procedure NovoObservador(IObserv : IObservadorApk);
    procedure DeletarObservador(IObserv : IObservadorApk);
    procedure NotificarObservadores;
  end;

implementation

end.
