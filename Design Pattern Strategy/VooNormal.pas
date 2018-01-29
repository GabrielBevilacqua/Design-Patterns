unit VooNormal;

interface

uses
  FlyingBehavior;

type
  TVoarComAsas = class(TInterfacedObject, ITipoDeVoo)
    public
      function Fly: string;
  end;

implementation

function TVoarComAsas.Fly: string;
begin
  Result := 'Estou voando com minhas asas !';
end;

end.
