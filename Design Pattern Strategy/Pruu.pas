unit Pruu;

interface

uses
  QuackSound;

type
  TPruu = class(TInterfacedObject, ITipoDeQuack)
    function Quack: string;
  end;

implementation

function TPruu.Quack: string;
begin
  Result := 'Pruuuuuuu sou um Pombo';
end;

end.
