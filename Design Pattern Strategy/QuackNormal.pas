unit QuackNormal;

interface

uses
  QuackSound;

type
  TQuackNormal = class(TInterfacedObject, ITipoDeQuack)
    function Quack: string;
  end;

implementation

function TQuackNormal.Quack: string;
begin
  Result := 'I am a Normal Duck, Quack!';
end;

end.
