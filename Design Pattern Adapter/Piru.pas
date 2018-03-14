unit Piru;

interface

uses
  System.SysUtils, InterfaceDoPiru;

type
  TPiru = class(TInterfacedObject, IPiru)
  public
    procedure Gluglu;
    procedure VoarPouco;
  end;

implementation

{ TPiru }

procedure TPiru.Gluglu;
begin
  Writeln('Gluglu Cuzao');
end;

procedure TPiru.VoarPouco;
begin
  Writeln('Eeeee vooooaaarrrrr euuuu nãooo vouuuuu nuncaaaaa maisssss...');
end;

end.
