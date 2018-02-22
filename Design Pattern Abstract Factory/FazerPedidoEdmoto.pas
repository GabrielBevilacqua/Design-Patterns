unit FazerPedidoEdmoto;

interface

uses
  System.SysUtils, InterfacePizzaStore, PizzariaJamal, EsfihariaEdmoto;

type
  TPedidoEsfiha = class
    class var ListaDoPedidoEsfihasEdmoto: TArray<TEsfiha>;
    procedure PedirEsfihaEdmoto(Qtd: Integer; Tipo: string);
    function RegistarPedidoDeEsfihaEdmoto(Esfiha: string): TEsfiha;
    procedure MostrarPedidoDeEsfihaEdmoto;
    destructor Destroy; override;
  end;

  TPedidoPizza = class
    class var ListaDoPedidoPizzasEdmoto: TArray<TPizza>;
    procedure PedirPizzaEdmoto(Qtd: Integer; Tipo: string);
    function RegistrarPedidoDePizzaEdmoto(Pizza: string): TPizza;
    procedure MostrarPedidoDePizzaEdmoto;
    destructor Destroy; override;
  end;

implementation

destructor TPedidoEsfiha.Destroy;
var
  Esfihas: TEsfiha;
begin
  for Esfihas in ListaDoPedidoEsfihasEdmoto do
    Esfihas.Free;
  inherited;
end;

procedure TPedidoEsfiha.MostrarPedidoDeEsfihaEdmoto;
var
  Esfihas: TEsfiha;
begin
  for Esfihas in ListaDoPedidoEsfihasEdmoto do
    Writeln(Esfihas.SaborDaEsfiha + ' ' + Format('%m', [ESfihas.ValorDaEsfiha]));
end;

procedure TPedidoEsfiha.PedirEsfihaEdmoto(Qtd: Integer; Tipo: string);
var
  I: Integer;
begin
  for I := 0 to Qtd - 1 do
    ListaDoPedidoEsfihasEdmoto := ListaDoPedidoEsfihasEdmoto + [RegistarPedidoDeEsfihaEdmoto(Tipo)];
end;

function TPedidoEsfiha.RegistarPedidoDeEsfihaEdmoto(Esfiha: string): TEsfiha;
var
  EsfihaClass: TTipoDeEsfiha;
begin
  Result := nil;
  for EsfihaClass in TEsfihariaEdmoto.EsfihasEdmoto do
    if EsfihaClass.ClassName = Esfiha then
      Result := (EsfihaClass.Create);
end;

{ TPedidoPizza }

destructor TPedidoPizza.Destroy;
var
  Pizzas: TPizza;
begin
  for Pizzas in ListaDoPedidoPizzasEdmoto do
    Pizzas.Free;
  inherited;
end;

procedure TPedidoPizza.MostrarPedidoDePizzaEdmoto;
var
  Pizzas: TPizza;
begin
  for Pizzas in ListaDoPedidoPizzasEdmoto do
    Writeln(Pizzas.SaborDaPizza+ '' + Format('%m', [Pizzas.ValorDaPizza]));
end;

procedure TPedidoPizza.PedirPizzaEdmoto(Qtd: Integer; Tipo: string);
var
  I: Integer;
begin
  for I := 0 to Qtd - 1 do
    ListaDoPedidoPizzasEdmoto := ListaDoPedidoPizzasEdmoto + [RegistrarPedidoDePizzaEdmoto(Tipo)];
end;

function TPedidoPizza.RegistrarPedidoDePizzaEdmoto(Pizza: string): TPizza;
var
  PizzaClass: TTipoDePizza;
begin
  Result := nil;
  for PizzaClass in TEsfihariaEdmoto.PizzasEdmoto do
    if PizzaClass.ClassName = Pizza then
      Result := (PizzaClass.Create);
end;

end.
