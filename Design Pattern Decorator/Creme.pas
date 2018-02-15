unit Creme;

interface

uses
  DecoratorAdicionais, System.SysUtils, Bebida;

type
  TCreme = class(TAdicionais)
  public
    function GetDescricao: string; override;
    function Custo: Currency; override;
  end;

implementation

function TCreme.Custo: Currency;
begin
  Result := inherited + 0.50;
end;

function TCreme.GetDescricao: string;
begin
  Result :=   inherited + ' Creme';
end;

end.
