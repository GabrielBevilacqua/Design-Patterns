unit Pomba;

interface

uses
  DuckClass, Pruu, System.SysUtils, VooDaPomba;

type
  TPomba = class(TDuckClass)
    constructor Create;
  end;

implementation

{ TPomba }

constructor TPomba.Create;
begin
  FTipoDeVoo := TFlyPomba.Create;
  FTipoDeQuack := TPruu.Create;
end;

end.
