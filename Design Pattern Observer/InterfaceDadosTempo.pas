unit InterfaceDadosTempo;

interface

uses
  System.SysUtils, InterfaceObservadorTempo;

type
  IInterfaceDadosTempo = Interface(IInterface)
    procedure NovoObservador(TObserfervador: IObservadorTempo);
    procedure NotificarObservador;
    procedure DeletarObservador(TObserfervador: IObservadorTempo);
  end;

implementation

end.
