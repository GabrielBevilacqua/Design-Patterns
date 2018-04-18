unit InterfaceIterator;

interface

uses
  System.SysUtils, System.Generics.Collections, ItensDoMenu;

type
  IIterator = interface(IInterface)
  function TemProximo: Boolean;
  function Proximo: TItensMenu;
  end;

implementation

end.
