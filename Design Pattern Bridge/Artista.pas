unit Artista;

interface

type
  TArtista = class
    procedure Nome;
    procedure Biografia;
    procedure Discos;
    procedure Shows;
  end;

implementation

{ TArtista }

procedure TArtista.Biografia;
begin
  Writeln('Biografia: Quando os jovens Ryan Ross e Spencer Smith pediram guitarra e bateria, respectivamente, como presentes de natal,' +
  'eles nunca iriam imaginar que seu interesse por música poderia levá-los tão longe.');
end;

procedure TArtista.Discos;
begin
  Writeln('Discos: ');
  Writeln ('2005: A Fever You Can''t Sweat Out');
  Writeln('2008: Pretty. Odd');
  Writeln('2011: Vices & Virtues');
  Writeln('2013: Too Weird To Live, Too Rare To Die!');
  Writeln('2016: Death Of A Bachelor');
end;

procedure TArtista.Nome;
begin
  Writeln('Panic! at the Disco');
end;

procedure TArtista.Shows;
begin
  Writeln('Shows: JUL 11 WED Target Center A R I Z O N A Hayley Kiyoko Minneapolis, MN, United States TICKETS  RSVP' +
  'JUL 13 FRI Bankers Life Fieldhouse Hayley Kiyoko A R I Z O N A Indianapolis, IN, United States');
end;

end.
