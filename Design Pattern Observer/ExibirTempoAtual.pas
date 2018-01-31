unit ExibirTempoAtual;

interface

uses
  System.SysUtils, InterfaceDoObservador, InterfaceExibir, DadosDoTempo;

type
  TExibirTempoAtual = class(TInterfacedObject, IExibir, IObservador)
    public
      Temp, Hum, Press : Double;
      FDadosDoTempo : TDadosDoTempo;
      function Atualizar(Temperatura, Humidade, Pressao : Double): Double;
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

function TExibirTempoAtual.Atualizar(Temperatura, Humidade, Pressao: Double): Double;
begin
  Temp := Temperatura;
  Hum := Humidade;
  Press := Pressao;

  Exibir;
  Result := 1;
end;

procedure TExibirTempoAtual.Exibir;
begin
  Writeln(Format('Tempo Atual: Temperatura %f & Humidade %f ', [Temp, Hum]));
  Readln;
end;

end.
