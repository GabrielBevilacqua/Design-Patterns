unit InterfaceTela;

interface

type
  ITela = interface(IInterface)
    procedure Print;
  end;

  PrintList = array of ITela;

implementation

end.
