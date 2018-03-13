unit ComandoPadrao;

interface

uses
  System.SysUtils, InterfaceCommandos;

type
  TComandoPadrao = class(TInterfacedObject, IComandos)
  public
    procedure Executar;
    procedure Desfazer;
  end;

implementation

{ TComandoPadrao }

procedure TComandoPadrao.Desfazer;
begin
//
end;

procedure TComandoPadrao.Executar;
begin
//
end;

end.
