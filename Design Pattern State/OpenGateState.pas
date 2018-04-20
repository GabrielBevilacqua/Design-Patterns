unit OpenGateState;

interface

uses
  System.SysUtils, GateInterface, GateClass;

type
  TOpenGate = class(TInterfacedObject, IGate)
  private
    Gate: TGate;
  public
    constructor Create(Gate: TGate);
    procedure Enter;
    procedure Pay;
    procedure PayOk;
  end;

implementation

uses
  CloseGateState;

{ TOpenGate }

constructor TOpenGate.Create(Gate: TGate);
begin
  Self.Gate := Gate;
end;

procedure TOpenGate.Enter;
begin
  Writeln('Be my guest, always come back...');
  Gate.ChangeState(TCloseGate.Create(Self.Gate));
end;

procedure TOpenGate.Pay;
begin
  Writeln('You already paid, go ahead...');
end;

procedure TOpenGate.PayOk;
begin
  Writeln('Go on bro...');
end;

end.
