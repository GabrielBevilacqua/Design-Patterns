unit DuckClass;

interface

uses
  FlyingBehavior, System.SysUtils, QuackSound;

type
  TDuckClass = class
  public
    FTipoDeVoo : ITipoDeVoo;
    FTipoDeQuack : ITipoDeQuack;
    procedure Quack;
    procedure Fly;
    constructor CreateVoo(ATipoDeVoo: ITipoDeVoo);
    constructor CreateQuack(ATipoDeQuack: ITipoDeQuack);
end;

implementation

constructor TDuckClass.CreateVoo(ATipoDeVoo: ITipoDeVoo);
begin
  FTipoDeVoo := ATipoDeVoo;
end;

constructor TDuckClass.CreateQuack(ATipoDeQuack: ITipoDeQuack);
begin
  FTipoDeQuack := ATipoDeQuack;
end;

procedure TDuckClass.Fly;
begin
  FTipoDeVoo.Fly;
end;

procedure TDuckClass.Quack;
begin
  FTipoDeQuack.Quack;
end;

end.
