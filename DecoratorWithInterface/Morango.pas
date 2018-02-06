unit Morango;

interface

uses
  System.SysUtils, Sorvete;

type
  TMorango = class(TInterfacedObject, ISorvete)
    FSorvete : ISorvete;
    function GetDescricao: String; virtual;
    function Custo: Currency; virtual;
  end;

implementation

function TMorango.Custo: Currency;
begin
  Result := 3.00;
end;

function TMorango.GetDescricao: String;
begin
  Result := 'Morango,'
end;

end.
