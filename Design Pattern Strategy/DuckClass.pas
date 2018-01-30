unit DuckClass;

interface

uses
  FlyingBehavior, System.SysUtils, QuackSound;

type
  TDuckClass = class
  public
    FTipoDeVoo : ITipoDeVoo;
    FTipoDeQuack : ITipoDeQuack;
    function Quack: string;
    function Fly: string;
end;

implementation

function TDuckClass.Fly: string;
begin
  Result := FTipoDeVoo.Fly;
end;

function TDuckClass.Quack: string;
begin
  Result := FTipoDeQuack.Quack;
end;

end.
