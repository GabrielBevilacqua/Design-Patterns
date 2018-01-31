unit InterfaceNotas;

interface

uses
  System.SysUtils, InterfaceObservadorApk;

type
  IInterfaceNotas = interface(IInterface)
    procedure NovoObservador(IObserver : IObservadorApk);
    procedure DeletarObservador(IObserver : IObservadorApk);
    procedure NotificarObservadores;
  end;

implementation

end.
