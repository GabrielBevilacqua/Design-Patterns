unit Singleton;

interface

type
  TCafezinho = class
    private
      Acucar: boolean;
      constructor Create;
    public
      class function GetCafe: TCafezinho;
      function AdicionarAcucar: boolean;
      procedure PrepararCafe;
  end;

implementation

var
  CafeTopper: TCafezinho;

{ TCafezinho }

function TCafezinho.AdicionarAcucar: boolean;
begin
  Acucar := True;
  Result := Acucar;
end;

constructor TCafezinho.Create;
begin
//
end;

class function TCafezinho.GetCafe: TCafezinho;
begin
  if CafeTopper = nil then
  begin
    CafeTopper := TCafezinho.Create;
    Result := CafeTopper;
  end
  else
    Result := CafeTopper;
end;

procedure TCafezinho.PrepararCafe;
begin
  if Acucar = true then
    Writeln('Café com açucar!')
  else
    Writeln('Café puro!');
end;

end.
