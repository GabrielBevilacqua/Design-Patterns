unit ItensDoMenu;

interface

uses
  System.SysUtils, System.Contnrs;

type
  TItensMenu = class
  private
    Nome: string;
    Descricao: string;
    Preco: currency;
    Vegano: boolean;
  public
    constructor Create(Nome: string; Descricao: string; Preco: currency; Vegano: boolean);
    function GetNome: string;
    function GetDescricao: string;
    function GetPreco: currency;
    function IsVegan: boolean;
  end;

implementation

{ TItensMenu }

constructor TItensMenu.Create(Nome, Descricao: string; Preco: currency;
  Vegano: boolean);
begin
  Self.Nome := Nome;
  Self.Descricao := Descricao;
  Self.Preco := Preco;
  Self.Vegano := Vegano;
end;

function TItensMenu.GetDescricao: string;
begin
  Result := Descricao;
end;

function TItensMenu.GetNome: string;
begin
  Result := Nome;
end;

function TItensMenu.GetPreco: currency;
begin
  Result := Preco;
end;

function TItensMenu.IsVegan: boolean;
begin
  Result := Vegano;;
end;

end.
