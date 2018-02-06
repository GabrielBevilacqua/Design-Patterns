unit Adicionais;

interface

uses
  System.SysUtils, Sorvete;

type
  TAdicionais = class(TInterfacedObject, ISorvete)
  public
    TipoDeSorvete : ISorvete;
    function Custo: Currency; virtual;
    function GetDescricao: string; virtual;
    constructor Create(Sorvete : ISorvete);
  end;


implementation

{ TAdicionais }

constructor TAdicionais.Create(Sorvete: ISorvete);
begin
  Self.TipoDeSorvete := Sorvete;
end;

function TAdicionais.Custo: Currency;
begin
  Result := TipoDeSorvete.Custo;
end;

function TAdicionais.GetDescricao: string;
begin
  Result := TipoDeSorvete.GetDescricao;
end;

end.
