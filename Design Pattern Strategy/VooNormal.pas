unit VooNormal;

interface

uses
  FlyingBehavior;

type
  TVoarComAsas = class(TInterfacedObject, ITipoDeVoo)
    public
      procedure Fly;
  end;

implementation

procedure TVoarComAsas.Fly;
begin
  Writeln('Estou voando com minhas asas !');
  Readln;
end;

end.
