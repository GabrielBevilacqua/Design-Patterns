unit Printer;

interface

uses
  System.SysUtils, InterfaceTela;

type
  TPrinter = class(TInterfacedObject, ITela)
  private
    Itens: PrintList;
  public
    procedure Print;
    procedure AddNaTela(Item: ITela);
  end;

implementation

{ TPrinter }

procedure TPrinter.AddNaTela(Item: ITela);
begin
  Itens := Itens + [Item];
end;

procedure TPrinter.Print;
var
  Aux: ITela;
begin
  for Aux in Itens do
    Aux.Print;
end;

end.
