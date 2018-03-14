unit Adapter;

interface

uses
  System.SysUtils, InterfaceDoPato, InterfaceDoPiru;

type
  TAdapterPiru = class(TInterfacedObject, IPato)
  private
    Piru: IPiru;
  public
    constructor Create(Piru: IPiru);
    procedure Quack;
    procedure VoarMuito;
  end;

implementation

{ TAdapterPiru }

constructor TAdapterPiru.Create(Piru: IPiru);
begin
  Self.Piru := Piru;
end;

procedure TAdapterPiru.Quack;
begin
  Piru.Gluglu;
end;

procedure TAdapterPiru.VoarMuito;
begin
  Piru.VoarPouco;
end;

end.
