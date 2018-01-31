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
    procedure NovoObservador(TObserver: IObservadorApk);
    procedure DeletarObservador(TObserver: IObservadorApk);
    procedure NotificarObservadores;
    procedure DefinirNotas(Nota01 , Nota02: Double);
    constructor Create;
  end;

implementation

{ TNotasDoApk }

constructor TNotasDoApk.Create;
begin
  try
    ListaObserver := TList<IObservadorApk>.Create;
  finally
    ListaObserver.Free
  end;
end;

procedure TNotasDoApk.DefinirNotas(Nota01, Nota02: Double);
begin
  PNota := Nota01;
  SNota := Nota02;

  NotificarObservadores;
end;

procedure TNotasDoApk.DeletarObservador(TObserver: IObservadorApk);
begin
  for TObserver in ListaObserver do
    ListaObserver.Delete(ListaObserver.IndexOf(TObserver));
end;

procedure TNotasDoApk.NotificarObservadores;
var
  Observadores : IObservadorApk;
begin
  for Observadores in ListaObserver do
    Observadores.Atualizar(PNota, SNota);
end;

procedure TNotasDoApk.NovoObservador(TObserver: IObservadorApk);
begin
  ListaObserver.Add(TObserver);
end;

end.
