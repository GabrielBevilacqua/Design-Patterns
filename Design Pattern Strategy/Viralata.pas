unit Viralata;

interface

uses
  RacaDog, System.SysUtils;

type
  TViralata = class(TInterfacedObject, IRacaDog)
  public
    procedure RacaDog;
  end;

implementation

{ TViralata }

procedure TViralata.RacaDog;
begin
  Writeln('E ai parça sou um Viralata da quebrada mermao !');
  Readln;
end;

end.
