unit Capuccino;

interface

uses
  Bebida, System.SysUtils;

type
  TCapucino = class(TBebida)
  public
    function Custo: Currency; override;
    function GetDescricao: string; override;
  end;

implementation

{ TCapucino }

function TCapucino.Custo: Currency;
begin
  inherited;
  Result := 3.50;
end;

function TCapucino.GetDescricao: string;
begin
  inherited;
  Result := 'Capuccino, ';
end;

end.
