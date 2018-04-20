unit CloseGateState;

interface

uses
  System.SysUtils, GateInterface, GateClass;

type
  TCloseGate = class(TInterfacedObject, IGate)
  private
    Gate: TGate;
    Paid: Boolean;
  public
    constructor Create(Gate: TGate);
    procedure Enter;
    procedure Pay;
    procedure PayOk;
  end;

implementation

uses
  OpenGateState;

{ TCloseGate }

constructor TCloseGate.Create(Gate: TGate);
begin
  Self.Gate := Gate;
  Paid := False;
end;

procedure TCloseGate.Enter;
begin
  Writeln('You have to pay, so then the gate will be opened...');
end;

procedure TCloseGate.Pay;
begin
  Writeln('Processing the payment...');
  Self.Gate.ChangeState(TOpenGate.Create(Self.Gate));

  Paid := True;
  PayOk;
end;

procedure TCloseGate.PayOk;
begin
  if Paid = False then
    Writeln('You have to pay first...')
  else
    Writeln('You paid the gate, go ahead...');
end;

end.
