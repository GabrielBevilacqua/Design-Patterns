unit VooDaPomba;

interface

uses
  FlyingBehavior;


type
  TFlyPomba = class(TInterfacedObject, ITipoDeVoo)
    function Fly: string;
  end;

implementation

{ FlyPomba }

function TFlyPomba.Fly: string;
begin
  Result := 'Pruu Estou Voando e Cagando !';
end;

end.
