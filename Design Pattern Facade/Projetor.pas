unit Projetor;

interface

type
  TProjetor = class
    procedure Ligar;
    procedure Desligar;
    procedure TelaCheia;
  end;

implementation

{ TProjetor }

procedure TProjetor.Desligar;
begin
  Writeln('Projetor Desligado...');
end;

procedure TProjetor.Ligar;
begin
  Writeln('Projetor Ligado...');
end;

procedure TProjetor.TelaCheia;
begin
  Writeln('Tela Cheia Selecionada...');
end;

end.
