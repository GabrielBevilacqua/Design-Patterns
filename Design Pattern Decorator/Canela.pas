unit Canela;

interface

uses
  System.SysUtils, DecoratorAdicionais, Bebida;

type
  TCanela = class(TAdicionais)
  public
    function GetDescricao: string; override;
    function Custo: Currency; override;
  end;

implementation

function TCanela.Custo: Currency;
begin
  Result := inherited + 0.50;
end;

function TCanela.GetDescricao: string;
begin
  Result := inherited + ' Canela';
end;

end.
