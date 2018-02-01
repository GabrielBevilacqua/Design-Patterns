unit JornalMetereologico;

interface

uses
  System.SysUtils, InterfaceObservadorTempo;

type
  TJornalMet = class(TInterfacedObject, IObservadorTempo)
  public
    function Atualizar(Temperatura, Humidade, Pressao : Double): Double;
  private
    Temp, Hum, Press : Double;
  end;

implementation

{ TJornalMet }

function TJornalMet.Atualizar(Temperatura, Humidade, Pressao: Double): Double;
begin
  Temp := Temperatura;
  Hum := Humidade;
  Press := Pressao;

  Result := 1;
end;

end.
