unit Expresso;

interface

uses
  Bebida, System.SysUtils;

type
  TExpresso = class(TBebida)
  public
    function Custo: Currency; override;
    function GetDescricao: string; override;
  end;

implementation

{ TExpresso }

function TExpresso.Custo: Currency;
begin
  inherited;
  Result := 2;
end;

function TExpresso.GetDescricao: string;
begin
  inherited;
  Result := 'Expresso,';
end;

end.
