unit ExibirNotasMondinho;

interface

uses
  System.SysUtils, InterfaceExibir, InterfaceObservadorApk, NotasDoApk;

type
  TExibirNotasMondinho = class(TInterfacedObject, IExibir, IObservadorApk)
  public
    PNota, SNota, Media: Double;
    FNotasDoApk : TNotasDoApk;
    procedure Exibir;
    procedure Atualizar(PrimeiraNota , SegundaNota: Double);
    constructor Create(Notas : TNotasDoApk);
  end;

implementation

{ TNotasMondinho }

procedure TExibirNotasMondinho.Atualizar(PrimeiraNota, SegundaNota: Double);
begin
  PNota := PrimeiraNota;
  SNota := SegundaNota;

  Exibir;
end;

constructor TExibirNotasMondinho.Create(Notas: TNotasDoApk);
begin
  FNotasDoApk := Notas;
  FNotasDoApk.NovoObservador(Self);
end;

procedure TExibirNotasMondinho.Exibir;
begin
  Media := (PNota + SNota) / 2;
  Writeln(Format('A Priemeira Nota Do Mondinho foi %n A Segunda Nota Foi %n e sua média foi %n', [PNota, SNota, Media]));
  Readln;
end;

end.
