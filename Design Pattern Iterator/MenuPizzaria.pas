unit MenuPizzaria;

interface

uses
  System.SysUtils, ItensDoMenu, IteratorMenu;

type
  TMenuPizzaria = class
  private
    ListaMenu: ListaDeMenus;
    Posicao: Integer;
    NovoItemDoMenu: TItensMenu;
  public
    constructor Create;
    procedure AdicionarItem(Nome: string; Descricao: string; Preco: currency;
      Vegano: boolean);
    function CriarIterator: TMenuIterator;
    destructor Destroy; override;
  end;

implementation

{ TMenuPizzaria }

procedure TMenuPizzaria.AdicionarItem(Nome, Descricao: string; Preco: currency;
  Vegano: boolean);
begin
  NovoItemDoMenu := TItensMenu.Create(Nome, Descricao, Preco, Vegano);
  ListaMenu := ListaMenu + [NovoItemDoMenu];
  Posicao := Posicao + 1;
end;

constructor TMenuPizzaria.Create;
begin
  Posicao := 0;
  AdicionarItem('Pizza De Frango', 'Vem Com Frango', 18.50, False);
  AdicionarItem('Pizza De Mussarela', 'Vem Com Queijo', 20.00, False);
  AdicionarItem('Pizza De Mato', 'Vem Com Mato', 15.50, True);
end;

function TMenuPizzaria.CriarIterator: TMenuIterator;
var
  Iterator: TMenuIterator;
begin
  Iterator := TMenuIterator.Create(ListaMenu);
  Result := Iterator;
end;

destructor TMenuPizzaria.Destroy;
begin
  NovoItemDoMenu.Free;
  inherited;
end;

end.
