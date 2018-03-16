unit Dvd;

interface

type
  TDvd = class
    procedure Ligar;
    procedure Desligar;
    procedure Play;
    procedure Stop;
  end;

implementation

{ TDvd }

procedure TDvd.Desligar;
begin
  Writeln('Dvd Desligado...');
end;

procedure TDvd.Ligar;
begin
  Writeln('Dvd Ligaado...');
end;

procedure TDvd.Play;
begin
  Writeln('Dvd Play...');
end;

procedure TDvd.Stop;
begin
  Writeln('Dvd Stop...');
end;

end.
