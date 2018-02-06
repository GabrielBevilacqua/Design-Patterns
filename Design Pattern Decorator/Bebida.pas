unit Bebida;

interface

uses
  System.SysUtils;

type
  TBebida = class abstract
  public
    function GetDescricao: String; virtual; abstract;
    function Custo: Currency; virtual; abstract;
  end;

implementation

end.
