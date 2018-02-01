unit DadosDoTempo;

interface

uses
  System.SysUtils, System.Generics.Collections, InterfaceDadosTempo,
  InterfaceObservadorTempo;

type
  TDadosDoTempo = class(TInterfacedObject, IInterfaceDadosTempo)
  public
    Temp, Hum, Press: Double;
    ListaDeObservadores: TList<IObservadorTempo>;
    procedure NovoObservador(TObserver: IObservadorTempo);
    procedure NotificarObservador;
    procedure DeletarObservador(TObserver: IObservadorTempo);
    procedure DefinirTempo(Temperatura, Humidade, Pressao : Double);
    constructor Create;
    destructor Dstroy;
  end;

implementation

{ TDadosDoTempo }

constructor TDadosDoTempo.Create;
begin
  ListaDeObservadores := TList<IObservadorTempo>.Create;
end;

procedure TDadosDoTempo.DefinirTempo(Temperatura, Humidade, Pressao : Double);
begin
  Temp := Temperatura;
  Hum := Humidade;
  Press := Pressao;

// se ocorrer mudanças...
  NotificarObservador;
end;

procedure TDadosDoTempo.DeletarObservador(TObserver: IObservadorTempo);
begin
  for TObserver in ListaDeObservadores do
  begin
    ListaDeObservadores.Delete(ListaDeObservadores.IndexOf(TObserver));
  end;
end;

destructor TDadosDoTempo.Dstroy;
begin
  ListaDeObservadores.Free;
end;

procedure TDadosDoTempo.NotificarObservador;
var
  FObservador : IObservadorTempo;
begin
  for FObservador in ListaDeObservadores do
  begin
    FObservador.Atualizar(Temp, Hum, Press);
  end;
end;

procedure TDadosDoTempo.NovoObservador(TObserver: IObservadorTempo);
begin
// Se Nao estiver cadastrado...
  ListaDeObservadores.Add(TObserver);
end;

end.
