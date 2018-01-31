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
    function NovoObservador(TObserver: IObservadorTempo): Boolean;
    function NotificarObservador: Boolean;
    function DeletarObservador(TObserver: IObservadorTempo): Boolean;
    function DefinirTempo(Temperatura, Humidade, Pressao : Double): Boolean;
    constructor Create;
  end;

implementation

{ TDadosDoTempo }

constructor TDadosDoTempo.Create;
begin
  try
    ListaDeObservadores := TList<IObservadorTempo>.Create;
  finally
    ListaDeObservadores.Free;
  end;
end;

function TDadosDoTempo.DefinirTempo(Temperatura, Humidade, Pressao: Double): Boolean;
begin
  Temp := Temperatura;
  Hum := Humidade;
  Press := Pressao;

// se ocorrer mudanças...
  NotificarObservador;
  Result := True;
end;

function TDadosDoTempo.DeletarObservador(TObserver: IObservadorTempo): Boolean;
begin
  for TObserver in ListaDeObservadores do
  begin
    ListaDeObservadores.Delete(ListaDeObservadores.IndexOf(TObserver));
  end;
  Result := True;
end;

function TDadosDoTempo.NotificarObservador: Boolean;
var
  FObservador : IObservadorTempo;
begin
  for FObservador in ListaDeObservadores do
  begin
    FObservador.Atualizar(Temp, Hum, Press);
  end;
  Result := True;
end;

function TDadosDoTempo.NovoObservador(TObserver: IObservadorTempo): Boolean;
begin
// Se Nao estiver cadastrado...
  ListaDeObservadores.Add(TObserver);
  Result := True;
end;

end.
