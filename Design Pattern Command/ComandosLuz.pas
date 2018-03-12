unit ComandosLuz;

interface

uses
  System.SysUtils, InterfaceCommandos, Luz;

type
  TAcenderLuz = class(TInterfacedObject, IComandos)
  private
    FLuz: TLuz;
  public
    procedure Executar;
    constructor Create(Luz: TLuz);
  end;

  TApagarLuz = class(TInterfacedObject, IComandos)
  private
    FLuz: TLuz;
  public
    procedure Executar;
    constructor Create(Luz: TLuz);
  end;

implementation

{ TComandosLuz }

constructor TAcenderLuz.Create(Luz: TLuz);
begin
  FLuz := Luz;
end;

procedure TAcenderLuz.Executar;
begin
  FLuz.AcenderLuz;
end;

{ TApagarLuz }

constructor TApagarLuz.Create(Luz: TLuz);
begin
  FLuz := Luz;
end;

procedure TApagarLuz.Executar;
begin
  FLuz.ApagarLuz;
end;

end.
