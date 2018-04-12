unit Titulos;

interface

uses
  System.SysUtils, InterfaceTela;

type
  TTitulos = class(TInterfacedObject, ITela)
  public
    procedure Print;
  end;

implementation

{ TTitulos }

procedure TTitulos.Print;
begin
Writeln('Printando Um Titulo...');
end;

end.
