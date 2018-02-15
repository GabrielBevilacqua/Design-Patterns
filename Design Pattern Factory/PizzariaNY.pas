unit PizzariaNY;

interface

uses
  System.SysUtils, PizzaStore;

type
  TPizzariaNY = class(TPizzaStore)
  public
    function FazerPizza: string; override;
  end;

implementation

{ TPizzariaNY }

function TPizzariaNY.FazerPizza: string;
begin
//
end;

end.
