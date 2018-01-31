unit DadosDoTempo;

interface

uses
  System.SysUtils, InterfaceDoAssunto, InterfaceDoObservador,
  System.Generics.Collections;

type
  TDadosDoTempo = class(TInterfacedObject, IInterfaceDoASsunto)
  public
    Temp, Hum, Press: Double;
    ListaDeObservadores: TList<IObservador>;
    function NovoObservador(TObserver: IObservador): Boolean;
    function NotificarObservador: Boolean;
    function DeletarObservador(TObserver: IObservador): Boolean;
    function DefinirTempo(Temperatura, Humidade, Pressao : Double): Boolean;
    constructor Create;
    destructor Destroy; Override;
  end;

implementation

{ TDadosDoTempo }

constructor TDadosDoTempo.Create;
begin
  ListaDeObservadores := TList<IObservador>.Create;
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

function TDadosDoTempo.DeletarObservador(TObserver: IObservador): Boolean;
begin
  for TObserver in ListaDeObservadores do
  begin
    ListaDeObservadores.Delete(ListaDeObservadores.IndexOf(TObserver));
  end;
  Result := True;
end;

function TDadosDoTempo.NotificarObservador: Boolean;
var
  FObservador : IObservador;
begin
  for FObservador in ListaDeObservadores do
  begin
    FObservador.Atualizar(Temp, Hum, Press);
  end;
  Result := True;
end;

function TDadosDoTempo.NovoObservador(TObserver: IObservador): Boolean;
begin
// Se Nao estiver cadastrado...
  ListaDeObservadores.Add(TObserver);
  Result := True;
end;

destructor TDadosDoTempo.Destroy;
begin
  ListaDeObservadores.Free;
  inherited;
end;

end.
