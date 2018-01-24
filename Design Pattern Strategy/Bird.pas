unit Bird;

interface

uses
  DuckClass, System.SysUtils, VooNormal, QuackNormal;

type
  TBird = class(TDuckClass)
    constructor Create;
  end;

implementation

{ TBird }

constructor TBird.Create;
begin
  FTipoDeVoo := TVoarComAsas.Create;
  FTipoDeQuack := TQuackNormal.Create;
end;

end.
