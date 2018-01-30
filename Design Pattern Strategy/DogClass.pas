unit DogClass;

interface

uses
  System.SysUtils, TipoDeLatido, RacaDog;

type
  TDogClass = class
  public
    FTipoDeLatido: ITipoDeLatido;
    FTipoDeRaca: IRacaDog;
    function RacaDog: string;
    function Latir: string;
//    constructor Create(ATipoDeLatido: ITipoDeLatido; ATipoDeRaca: IRacaDog); reintroduce;  Construtor na classe pai, caso a classe
//    Filho não tenha seu proprio create ("Pizza Personalizada")
  end;

implementation

//constructor TDogClass.Create(ATipoDeLatido: ITipoDeLatido; ("Pizza Personalizada")
//  ATipoDeRaca: IRacaDog);
//begin
//  FTipoDeLatido := ATipoDeLatido;
//  FTipoDeRaca := ATipoDeRaca;
//end;

function TDogClass.Latir: string;
begin
 Result := FTipoDeLatido.Latir;
end;

function TDogClass.RacaDog: string;
begin
  Result := FTipoDeRaca.RacaDog;
end;

end.
