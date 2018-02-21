unit Esfihas;

interface

uses
  System.SysUtils, InterfacePizzaStore;

type
  TEdmotoEsfihas = class(TEsfiha)
  public
    function SaborDaEsfiha: string; override;
    function ValorDaEsfiha: Currency; override;
  end;

  TJamalEsfihas = class(TEsfiha)
  public
    function SaborDaEsfiha: string; override;
    function ValorDaEsfiha: Currency; override;
    end;

implementation

uses
  EsfihariaEdmoto, PizzariaJamal;

{ TEdmotoEsfihas }

function TEdmotoEsfihas.SaborDaEsfiha: string;
begin
  inherited;
  Result := 'Pizza Topzera do Jamal!'
end;

function TEdmotoEsfihas.ValorDaEsfiha: Currency;
begin
  inherited;
  Result := 1.50;
end;

{ TJamalEsfihas }

function TJamalEsfihas.SaborDaEsfiha: string;
begin
  inherited;
  Result := 'Esfiha Meia Boca do Jamal!';
end;

function TJamalEsfihas.ValorDaEsfiha: Currency;
begin
  inherited;
  Result := 1.00;
end;

initialization
  TPizzariaJamal.RegistrarEsfiha(TJamalEsfihas);
  TEsfihariaEdmoto.RegistrarEsfiha(TEdmotoEsfihas);
end.
