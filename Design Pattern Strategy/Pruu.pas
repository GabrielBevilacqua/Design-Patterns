unit Pruu;

interface

uses
  QuackSound;

type
  TPruu = class(TInterfacedObject, ITipoDeQuack)
    procedure Quack;
  end;

implementation

procedure TPruu.Quack;
begin
  Writeln('Pruuuuuuu sou um Pombo');
  Readln;
end;

end.
