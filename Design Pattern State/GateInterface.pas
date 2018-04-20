unit GateInterface;

interface

type
  IGate = interface(IInterface)
    procedure Enter;
    procedure Pay;
    procedure PayOk;
  end;

implementation

end.
