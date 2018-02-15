unit PizzaDeQueijoNY;

interface

uses
  System.SysUtils, Pizza;

type
  TQueijoNY = class(TPizza)
  public
    function PizzaDeQueijo: string; override;
  end;

implementation

{ TQueijoNY }

function TQueijoNY.PizzaDeQueijo: string;
begin
//
end;

end.
