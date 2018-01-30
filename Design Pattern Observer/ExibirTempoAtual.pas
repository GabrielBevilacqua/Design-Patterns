unit ExibirTempoAtual;

interface

uses
  System.SysUtils, InterfaceDoObservador, InterfaceExibir, DadosDoTempo;

type
  TExibirTempoAtual = class(TInterfacedObject, IExibir, IObservador)
    public
      Temp, Hum, Press: Double;
      FDadosDoTempo : TDadosDoTempo;
      function Atualizar(Temperatura, Humidade, Pressao : Double): Double;
      procedure Exibir;
      constructor Create(Tempo : TDadosDoTempo);
  end;

implementation

{ TExibir }

function TExibirTempoAtual.Atualizar(Temperatura, Humidade, Pressao: Double): Double;
begin
//
end;

constructor TExibirTempoAtual.Create(Tempo: TDadosDoTempo);
begin
  FDadosDoTempo := Tempo;
  FDadosDoTempo.NovoObservador(Self)
end;

procedure TExibirTempoAtual.Exibir;
begin
//
end;

end.
