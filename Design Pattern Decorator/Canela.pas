unit Canela;

interface

uses
  System.SysUtils, DecoratorAdicionais, Bebida;

type
  TCanela = class(TAdicionais)
  public
    FBebida: TBebida;
    function GetDescricao: string; override;
    function Custo: Currency; override;
    constructor Create(Bebida: TBebida);
    destructor Destroy; override;
  end;

implementation

{ TCanela }

constructor TCanela.Create(Bebida: TBebida);
begin
  FBebida := Bebida;
end;

function TCanela.Custo: Currency;
begin
  Result := FBebida.Custo + 0.50;
end;

destructor TCanela.Destroy;
begin
  FBebida.Free;
end;

function TCanela.GetDescricao: string;
begin
  Result := FBebida.GetDescricao + ' Canela';
end;

end.
