unit QuackNormal;

interface

uses
  QuackSound;

type
  TQuackNormal = class(TInterfacedObject, ITipoDeQuack)
    procedure Quack;
  end;

implementation

procedure TQuackNormal.Quack;
begin
  Readln;
  Writeln('I am a Normal Duck, Quack!');
  Readln;
end;

end.
