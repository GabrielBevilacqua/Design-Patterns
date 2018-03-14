unit Pato;

interface

uses
  System.SysUtils, InterfaceDoPato;

type
  TPato = class(TInterfacedObject, IPato)
  public
    procedure Quack;
    procedure VoarMuito;
  end;

implementation

{ TPato }

procedure TPato.Quack;
begin
  Writeln('Quack Carai !');
end;

procedure TPato.VoarMuito;
begin
  Writeln('Ao infinito e além...');
end;

end.
