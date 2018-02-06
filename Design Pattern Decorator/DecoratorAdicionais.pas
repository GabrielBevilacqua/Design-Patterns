unit DecoratorAdicionais;

interface

uses
  Bebida, System.SysUtils;

type
  TAdicionais = class abstract(TBebida)
  public
    function GetDescricao: String; override; abstract;
  end;

implementation

end.
