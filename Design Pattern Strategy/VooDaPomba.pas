unit VooDaPomba;

interface

uses
  FlyingBehavior;


type
  TFlyPomba = class(TInterfacedObject, ITipoDeVoo)
    procedure Fly;
  end;

implementation

{ FlyPomba }

procedure TFlyPomba.Fly;
begin
  Writeln('Pruu Estou Voando e Cagando !');
  Readln;
end;

end.
