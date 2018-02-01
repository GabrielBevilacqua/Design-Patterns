unit ExibirTempoAtual;

interface

uses
  System.SysUtils, InterfaceExibir, DadosDoTempo, InterfaceObservadorTempo;

type
  TExibirTempoAtual = class(TInterfacedObject, IExibir, IObservadorTempo)
    public
      Temp, Hum, Press : Double;
      FDadosDoTempo : TDadosDoTempo;
      procedure Atualizar(Temperatura, Humidade, Pressao : Double);
      procedure Exibir;
      constructor Create(Tempo : TDadosDoTempo);
  end;

implementation

{ TExibir }

constructor TExibirTempoAtual.Create(Tempo: TDadosDoTempo);
begin
  FDadosDoTempo := Tempo;
  FDadosDoTempo.NovoObservador(Self);
end;

procedure TExibirTempoAtual.Atualizar(Temperatura, Humidade, Pressao : Double);
begin
  Temp := Temperatura;
  Hum := Humidade;
  Press := Pressao;

  Exibir;
end;

procedure TExibirTempoAtual.Exibir;
begin
  Writeln(Format('Tempo Atual: Temperatura %f & Humidade %f ', [Temp, Hum]));
  Readln;
end;

end.
