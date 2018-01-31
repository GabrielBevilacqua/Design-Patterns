unit InterfaceDadosTempo;

interface

uses
  System.SysUtils, InterfaceObservadorTempo;

type
  IInterfaceDadosTempo = Interface(IInterface)
    function NovoObservador(TObserfervador: IObservadorTempo): Boolean;
    function NotificarObservador: Boolean;
    function DeletarObservador(TObserfervador: IObservadorTempo): Boolean;
  end;

implementation

end.
