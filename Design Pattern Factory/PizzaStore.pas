unit PizzaStore;

interface

uses
  Pizza, System.SysUtils;

type
  TPizzaStore = class
//  private
//    Pizza : TPizza;
  public
    function FazerPizza: string; virtual;
    procedure PedirPizza; virtual;
  end;

implementation

function TPizzaStore.FazerPizza: string;
begin
//
end;

procedure TPizzaStore.PedirPizza;
begin
//
end;
end.
