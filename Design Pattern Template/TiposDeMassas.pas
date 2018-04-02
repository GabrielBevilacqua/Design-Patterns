unit TiposDeMassas;

interface

uses
  System.SysUtils, PadocaClass;

type
  TMassaSalgada = class(TPadoca)
  protected
    procedure TemperaturaDoForno; override;
    procedure AddIngredientes; override;
  end;
  TMassaDoce = class(TPadoca)
  protected
    procedure AddIngredientes; override;
    procedure TemperaturaDoForno; override;
  end;

implementation

{ TMassas }

procedure TMassaSalgada.AddIngredientes;
begin
  inherited;
  Writeln('Fermento, Sal, Água, Farinha, Tempero Especial...');
end;

procedure TMassaSalgada.TemperaturaDoForno;
begin
  inherited;
  Writeln('Temperatura de 230º Graus...');
end;

{ TMassaDoce }

procedure TMassaDoce.AddIngredientes;
begin
  inherited;
  Writeln('Farinha, Açucar, Creme, Sal, Fermento, Leite Condensado, Tempero Especial...');
end;

procedure TMassaDoce.TemperaturaDoForno;
begin
  inherited;
  Writeln('Temperatura de 180º Graus...');
end;

end.
