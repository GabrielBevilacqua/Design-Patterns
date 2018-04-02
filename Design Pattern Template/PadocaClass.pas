unit PadocaClass;

interface

uses
  System.SysUtils;

type
  TPadoca = class
  public
    procedure PrepararMassa;
    procedure AssarMassa;
    procedure VenderPao;
  protected
    procedure AddIngredientes; virtual; abstract;
    procedure TemperaturaDoForno; virtual; abstract;
  end;

implementation

{ TPadoca }

procedure TPadoca.AssarMassa;
begin
  Writeln('Assando Massa...');
end;

procedure TPadoca.PrepararMassa;
begin
  AddIngredientes;
  TemperaturaDoForno;
  AssarMassa;
  VenderPao;
end;

procedure TPadoca.VenderPao;
begin
  Writeln('Pão Colocado para vendas...');
end;

end.
