unit InterfaceDoAssunto;

interface

uses
  System.SysUtils, InterfaceDoObservador;

type
  IInterfaceDoAssunto = Interface(IInterface)
    function NovoObservador(TObserfervador: IObservador): Boolean;
    function NotificarObservador: Boolean;
    function DeletarObservador(TObserfervador: IObservador): Boolean;
  end;

implementation

end.
