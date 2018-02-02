unit NotasDoApk;

interface

uses
  System.SysUtils, InterfaceNotas, InterfaceObservadorApk,
  System.Generics.Collections;

type
  TNotasDoApk = class(TInterfacedObject, IInterfaceNotas)
  public
    PNota, SNota, Media : Double;
    ListaObserver: TList<IObservadorApk>;
    procedure NovoObservador(TObserv: IObservadorApk);
    procedure DeletarObservador(TObserv: IObservadorApk);
    procedure NotificarObservadores;
    procedure DefinirNotas(PrimeiraNota , SegundaNota: Double);
    constructor Create;
    destructor  Destroy; Override;
  end;

implementation

{ TNotasDoApk }

constructor TNotasDoApk.Create;
begin
  ListaObserver := TList<IObservadorApk>.Create;
end;

procedure TNotasDoApk.DefinirNotas(PrimeiraNota , SegundaNota: Double);
begin
  PNota := PrimeiraNota;
  SNota := SegundaNota;

  NotificarObservadores;
end;

procedure TNotasDoApk.DeletarObservador(TObserv: IObservadorApk);
begin
  for TObserv in ListaObserver do
    ListaObserver.Delete(ListaObserver.IndexOf(TObserv));
end;

destructor TNotasDoApk.Destroy;
begin
  inherited;
  ListaObserver.Free;
end;

procedure TNotasDoApk.NotificarObservadores;
var
  Observadores : IObservadorApk;
begin
  for Observadores in ListaObserver do
    Observadores.Atualizar(PNota, SNota);
end;

procedure TNotasDoApk.NovoObservador(TObserv: IObservadorApk);
begin
  ListaObserver.Add(TObserv);
end;

end.
