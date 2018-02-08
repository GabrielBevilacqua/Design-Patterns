unit Creme;

interface

uses
  DecoratorAdicionais, System.SysUtils, Bebida;

type
  TCreme = class(TAdicionais)
  public
    FBebida : TBebida;
    function GetDescricao: string; override;
    function Custo: Currency; override;
  end;

implementation

function TCreme.Custo: Currency;
begin
  Result := inherited Custo + 0.50;
end;

function TCreme.GetDescricao: string;
begin
  Result :=   inherited GetDescricao + ' Creme';
end;

end.
