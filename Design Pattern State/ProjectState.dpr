program ProjectState;

{$APPTYPE CONSOLE}
{$R *.res}

uses
  System.SysUtils,
  GateInterface in 'GateInterface.pas',
  GateClass in 'GateClass.pas',
  CloseGateState in 'CloseGateState.pas',
  OpenGateState in 'OpenGateState.pas';

var
  Gate: TGate;

begin
  try
    Gate := TGate.Create;
    try
      Gate.Pass;
      Gate.PayGate;
      Readln;
      Gate.PayGate;
      Gate.Pass;
      Readln;
      Gate.Paid;
      Readln;
    except
      on E: Exception do
        Writeln(E.ClassName, ': ', E.Message);
    end;
  finally

  end;

end.
