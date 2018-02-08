unit Casquinha;

interface

uses
  System.SysUtils, Sorvete, Adicionais;

type
  TCasquinha = class(TAdicionais)
    function GetDescricao: String; override;
    function Custo: Currency; override;
  end;

implementation

{ TCasquinha }

function TCasquinha.Custo: Currency;
begin
  Result := inherited Custo + 1.50;
end;

function TCasquinha.GetDescricao: String;
begin
  Result := inherited GetDescricao;
  Result := Result + ' Casquinha';
end;

end.
