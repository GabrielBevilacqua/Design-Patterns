unit DogMau;

interface

uses
  DogClass, System.SysUtils, LatidoNormal, Viralata;

type
  TDogMau = class(TDogClass)
    constructor Create; overload;
  end;

implementation

{ TDogMau }

constructor TDogMau.Create;
begin
  FTipoDeRaca := TViralata.Create;
  FTipoDeLatido := TLatidoComum.Create;
 end;

end.
