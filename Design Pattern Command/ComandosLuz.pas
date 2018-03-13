unit ComandosLuz;

interface

uses
  System.SysUtils, InterfaceCommandos, Luz;

type
  TAcenderLuz = class(TInterfacedObject, IComandos)
  private
    FLuz: TLuz;
  public
    constructor Create(Luz: TLuz);
    procedure Executar;
    procedure Desfazer;
  end;

  TApagarLuz = class(TInterfacedObject, IComandos)
  private
    FLuz: TLuz;
  public
    constructor Create(Luz: TLuz);
    procedure Executar;
    procedure Desfazer;
  end;

implementation

{ TAcenderLuz }

constructor TAcenderLuz.Create(Luz: TLuz);
begin
  FLuz := Luz;
end;

procedure TAcenderLuz.Desfazer;
begin
  FLuz.ApagarLuz;
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

procedure TApagarLuz.Desfazer;
begin
  FLuz.AcenderLuz;
end;

procedure TApagarLuz.Executar;
begin
  FLuz.ApagarLuz;
end;

end.
