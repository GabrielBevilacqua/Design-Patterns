unit Pizza;

interface

type
  TPizza = class
  public
    function PrepararPizza: string; virtual; abstract;
    procedure Entregar;
  end;

implementation

{ TPizza }

procedure TPizza.Entregar;
begin
  Writeln('Pizza Saiu para entrega!');
end;

end.
