unit LatidoNormal;

interface

uses
  TipoDeLatido, System.SysUtils;

type
  TLatidoComum = class(TInterfacedObject, ITipoDeLatido)
  public
    procedure Latir;
  end;

implementation

{ TLatidoComum }

procedure TLatidoComum.Latir;
begin
  Writeln('AU AU AU !');
  Readln;
end;

end.
