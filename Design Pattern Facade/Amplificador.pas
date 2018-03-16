unit Amplificador;

interface

type
  TAmplificador = class
    procedure Ligar;
    procedure Desligar;
    procedure Volume(Vol: string);
  end;

implementation

{ TAmplificador }

procedure TAmplificador.Desligar;
begin
  Writeln('Amplificador Desligado...');
end;

procedure TAmplificador.Ligar;
begin
  Writeln('Amplificador Lesligado...');
end;

procedure TAmplificador.Volume(Vol: string);
begin
  Writeln('Volume = ' + Vol);
end;

end.
