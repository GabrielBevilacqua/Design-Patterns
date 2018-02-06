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
    constructor Create(Bebida: TBebida);
    destructor Destroy; override;
  end;

implementation

{ TCreme }

constructor TCreme.Create(Bebida: TBebida);
begin
  FBebida := Bebida.Create
end;

function TCreme.Custo: Currency;
begin
  inherited;
  Result := FBebida.Custo + 0.50;
end;

destructor TCreme.Destroy;
begin
  FBebida.Free;
end;

function TCreme.GetDescricao: string;
begin
  inherited;
  Result := FBebida.GetDescricao + ' Creme';
end;

end.
