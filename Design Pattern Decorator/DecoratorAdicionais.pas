unit DecoratorAdicionais;

interface

uses
  Bebida, System.SysUtils;

type
  TAdicionais = class(TBebida)
  public
    FBebida : TBebida;
    function GetDescricao: String; override;
    function Custo: Currency; override;
    constructor Create(Bebida : TBebida);
    destructor Destroy; override;
  end;

implementation

{ TAdicionais }

constructor TAdicionais.Create(Bebida: TBebida);
begin
  FBebida := Bebida;
end;

function TAdicionais.Custo: Currency;
begin
  Result := FBebida.Custo
end;

destructor TAdicionais.Destroy;
begin
  FBebida.Free;
  inherited;
end;

function TAdicionais.GetDescricao: String;
begin
  Result := FBebida.GetDescricao;
end;

end.
