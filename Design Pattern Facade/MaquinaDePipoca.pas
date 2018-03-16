unit MaquinaDePipoca;

interface

type
  TMaqDePipoca = class
    procedure Ligar;
    procedure EstourarPipoca;
    procedure Desligar;
  end;

implementation

{ MaqDePipoca }

procedure TMaqDePipoca.Desligar;
begin
  Writeln('Maquina de Pipoca Desligada....');
end;

procedure TMaqDePipoca.EstourarPipoca;
begin
  Writeln('Pipoca Estourando...');
end;

procedure TMaqDePipoca.Ligar;
begin
  Writeln('Maquina De Pipoca Ligada...');
end;

end.
