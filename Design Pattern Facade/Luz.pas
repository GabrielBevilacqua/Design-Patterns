unit Luz;

interface

type
  TLuz = class
    procedure Acender;
    procedure LuzMedia;
    procedure Apagar;
  end;

implementation

{ TLuz }

procedure TLuz.Acender;
begin
  Writeln('Luz Acesa...');
end;

procedure TLuz.Apagar;
begin
  Writeln('luz Apagada...');
end;

procedure TLuz.LuzMedia;
begin
  Writeln('Luz Media...');
end;

end.
