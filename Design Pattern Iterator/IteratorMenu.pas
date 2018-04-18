unit IteratorMenu;

interface

uses
  System.SysUtils, ItensDoMenu, InterfaceIterator, System.Generics.Collections;

type
  ListaDeMenus = array of TItensMenu;

  TMenuIterator = class(TInterfacedObject, IIterator)
  private
    Itens: ListaDeMenus;
    Posição: Integer;
    PizzaAtual: TItensMenu;
  public
    constructor Create(Itens: ListaDeMenus);
    function TemProximo: Boolean;
    function Proximo: TItensMenu;
    function Nome: String;
    function Descricao: String;
    function Preco: Currency;
    function Vegano: String;
    destructor Destroy; override;
  end;

implementation

{ TMenuIterator }

constructor TMenuIterator.Create(Itens: ListaDeMenus);
begin
  Self.Itens := Itens;
  Posição := 0;
end;

function TMenuIterator.Descricao: String;
begin
  PizzaAtual := Itens[Posição];
  Result := PizzaAtual.GetDescricao;
end;

destructor TMenuIterator.Destroy;
begin
  PizzaAtual.Free;
  inherited;
end;

function TMenuIterator.Nome: String;
begin
  PizzaAtual := Itens[Posição];
  Result := PizzaAtual.GetNome;
end;

function TMenuIterator.Preco: Currency;
begin
  PizzaAtual := Itens[Posição];
  Result := PizzaAtual.GetPreco;
end;

function TMenuIterator.Proximo: TItensMenu;
begin
  PizzaAtual := Itens[Posição];
  Posição := +1;
  Result := PizzaAtual;
end;

function TMenuIterator.TemProximo: Boolean;
begin
  if (Posição > Length(Itens)) or (Itens[Posição] = nil) then
    Result := False
  else
    Result := True;

end;

function TMenuIterator.Vegano: String;
begin
  PizzaAtual := Itens[Posição];
  Writeln(PizzaAtual.IsVegan);
end;

end.
