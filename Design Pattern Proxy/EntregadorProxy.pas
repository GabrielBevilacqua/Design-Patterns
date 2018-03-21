unit EntregadorProxy;

interface

uses
  System.SysUtils, InterfacePizzaria, Pizzaria;

type
  TEntregador = class(TInterfacedObject, IPizzaria)
  private
    Pizzaria: TPizzaria;
    Pizza: string;
  public
    constructor Create(Pizza: string);
    procedure EntregarPizzas;
    procedure ReceberDinheiro;
    destructor Destroy; override;
  end;

implementation

{ TEntregador }

constructor TEntregador.Create(Pizza: string);
begin
  Self.Pizza := Pizza;
end;

destructor TEntregador.Destroy;
begin
  Pizzaria.Free;
  inherited;
end;

procedure TEntregador.EntregarPizzas;
begin
  if Pizzaria = nil then
    Pizzaria := TPizzaria.Create(Pizza);

    Pizzaria.EntregarPizzas;
end;

procedure TEntregador.ReceberDinheiro;
begin
  if Pizzaria = nil then
    Pizzaria := TPizzaria.Create(Pizza);

    Pizzaria.ReceberDinheiro;
end;

end.
