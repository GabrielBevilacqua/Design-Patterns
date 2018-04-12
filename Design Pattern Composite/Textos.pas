unit Textos;

interface

uses
  System.SysUtils, InterfaceTela;

type
  TTextos = class(TInterfacedObject, ITela)
  public
    procedure Print;
  end;

implementation

{ TTextos }

procedure TTextos.Print;
begin
  Writeln('Printando um Texto...');
end;

end.
