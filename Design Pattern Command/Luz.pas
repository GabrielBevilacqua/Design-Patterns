unit Luz;

interface

type
  TLuz = class
    procedure AcenderLuz;
    procedure ApagarLuz;
  end;

implementation

{ TLuz }

procedure TLuz.AcenderLuz;
begin
  Writeln('Luz Da Sala Acesa!');
end;

procedure TLuz.ApagarLuz;
begin
  Writeln('Luz Da Sala Apagada');
end;

end.
