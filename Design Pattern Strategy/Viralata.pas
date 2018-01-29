unit Viralata;

interface

uses
  RacaDog, System.SysUtils;

type
  TViralata = class(TInterfacedObject, IRacaDog)
  public
    function RacaDog: string;
  end;

implementation

{ TViralata }

function TViralata.RacaDog: string;
begin
  Result := 'E ai parça sou um Viralata da quebrada mermao !';

end;

end.
