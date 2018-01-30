unit LatidoNormal;

interface

uses
  TipoDeLatido, System.SysUtils;

type
  TLatidoComum = class(TInterfacedObject, ITipoDeLatido)
  public
    function Latir: string;
  end;

implementation

{ TLatidoComum }

function TLatidoComum.Latir: string;
begin
  Result := 'AU AU AU !';
end;

end.
