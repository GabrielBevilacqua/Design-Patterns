unit DogClass;

interface

uses
  System.SysUtils, TipoDeLatido, RacaDog;

type
  TDogClass = class
  public
    FTipoDeLatido: ITipoDeLatido;
    FTipoDeRaca: IRacaDog;
    procedure RacaDog;
    procedure Latir;
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

procedure TDogClass.Latir;
begin
  FTipoDeLatido.Latir;
end;

procedure TDogClass.RacaDog;
begin
  FTipoDeRaca.RacaDog;
end;

end.
