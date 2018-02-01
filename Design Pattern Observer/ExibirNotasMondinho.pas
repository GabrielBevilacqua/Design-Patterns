unit ExibirNotasMondinho;

interface

uses
  System.SysUtils, InterfaceExibir, InterfaceObservadorApk, NotasDoApk;

type
  TExibirNotasMondinho = class(TInterfacedObject, IExibir, IObservadorApk)
  public
    PNota, SNota: Double;
    FNotasDoApk : TNotasDoApk;
    procedure Exibir;
    procedure Atualizar(PrimeiraNota , SegundaNota: Double);
  end;

implementation

{ TNotasMondinho }

procedure TExibirNotasMondinho.Atualizar(PrimeiraNota, SegundaNota: Double);
begin
  PNota := PrimeiraNota;
  SNota := SegundaNota;

  Exibir;
end;

procedure TExibirNotasMondinho.Exibir;
var
  Media : Double;
begin
  Media := (PNota + SNota) / 2;
  Writeln(Format('A Priemeira Nota Do Mondinho foi %n A Segunda Nota Foi %n e sua média foi %n', [PNota, SNota, Media]));
  Readln;
end;

end.
