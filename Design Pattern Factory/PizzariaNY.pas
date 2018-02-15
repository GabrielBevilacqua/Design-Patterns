unit PizzariaNY;

interface

uses
  System.SysUtils, PizzaStore;

type
  TPizzariaNY = class(TPizzaStore)
  public
    function CriarPizza: string; override;
  end;

implementation

{ TPizzariaNY }

function TPizzariaNY.CriarPizza: string;
begin
//
end;

end.
