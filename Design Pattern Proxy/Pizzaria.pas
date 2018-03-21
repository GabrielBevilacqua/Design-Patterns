unit Pizzaria;

interface

uses
  System.SysUtils, InterfacePizzaria;

type
  TPizzaria = class(TInterfacedObject, IPizzaria)
  private
    Pizza: string;
  public
    constructor Create(Pizza: string);
    procedure EntregarPizzas;
    procedure ReceberDinheiro;
  end;

implementation

{ TPizzaria }

constructor TPizzaria.Create(Pizza: string);
begin
  Self.Pizza := Pizza;
end;

procedure TPizzaria.EntregarPizzas;
begin
  Writeln('Pizza de ' + Pizza + 'Saiu para entrega');
end;

procedure TPizzaria.ReceberDinheiro;
begin
  Writeln('Pizza de ' + Pizza + ' foi entregue e o dinheiro foi recebido com sucesso...');
end;

end.
