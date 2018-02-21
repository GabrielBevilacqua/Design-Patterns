unit Esfihas;

interface

uses
  System.SysUtils, InterfacePizzaStore;

type
  TEdmotoEsfihas = class(TInterfacedObject, IEsfiha)
  public
    function SaborDaEsfiha: string;
    function ValorDaEsfiha: Currency;
  end;

  TJamalEsfihas = class(TInterfacedObject, IEsfiha)
  public
    function SaborDaEsfiha: string;
    function ValorDaEsfiha: Currency;
  end;

implementation

{ TEdmotoEsfihas }

function TEdmotoEsfihas.SaborDaEsfiha: string;
begin
  Result := 'Esfiha Topzera do Edmoto!';
end;

function TEdmotoEsfihas.ValorDaEsfiha: Currency;
begin
  Result := 1.50;
end;

{ TJamalEsfihas }

function TJamalEsfihas.SaborDaEsfiha: string;
begin
  Result := 'Esfiha Meia Boca do Jamal!';
end;

function TJamalEsfihas.ValorDaEsfiha: Currency;
begin
  Result := 1.00;
end;

end.
