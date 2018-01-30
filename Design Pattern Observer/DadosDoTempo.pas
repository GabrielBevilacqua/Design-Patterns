unit DadosDoTempo;

interface

uses
  System.SysUtils, InterfaceDoAssunto, InterfaceDoObservador,
  System.Generics.Collections, Observador;

type
  TDadosDoTempo = class(TInterfacedObject, IInterfaceDoASsunto)
  public
    Temperatura, Humidade, Pressao: Double;
    ListaDeObservadores: TList<IObservador>;
    function NovoObservador(TObserver: IObservador): Boolean;
    function NotificarObservador: Boolean;
    function DeletarObservador(TObserver: IObservador): Boolean;
    constructor Create;
    destructor Destroy; Override;
  end;

implementation

{ TDadosDoTempo }

constructor TDadosDoTempo.Create;
begin
  ListaDeObservadores := TList<IObservador>.Create;
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
begin
  //
end;

function TDadosDoTempo.NovoObservador(TObserver: IObservador): Boolean;
begin
  ListaDeObservadores.Add(TObserver);
  Result := True;
end;

destructor TDadosDoTempo.Destroy;
begin
  ListaDeObservadores.Free;
  inherited;
end;

end.
