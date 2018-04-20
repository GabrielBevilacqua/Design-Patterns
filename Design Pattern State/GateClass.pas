unit GateClass;

interface

uses
  System.SysUtils, GateInterface;

type
  TGate = class
  private
    State: IGate;
  public
    constructor Create();
    procedure Pass;
    procedure PayGate;
    procedure Paid;
    procedure ChangeState(State: IGate);
  end;

implementation

uses
  CloseGateState;

procedure TGate.ChangeState(State: IGate);
begin
  Self.State := State;
end;

constructor TGate.Create;
begin
  Self.State := TCloseGate.Create(Self);
end;

procedure TGate.Pass;
begin
  Self.State.Enter;
end;

procedure TGate.Paid;
begin
  Self.State.PayOk;
end;

procedure TGate.PayGate;
begin
  Self.State.Pay;
end;

end.
