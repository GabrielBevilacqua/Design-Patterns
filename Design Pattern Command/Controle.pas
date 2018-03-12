unit Controle;

interface

uses
  System.SysUtils, System.Generics.Collections, InterfaceCommandos;

type
  TControle= class
  private
    BotoesLigar: TList<IComandos>;
    BotoesDesligar: TList<IComandos>;
  public
    procedure DefinirComandos(NumeroDoBotao: integer; Ligar, Desligar: IComandos);
    procedure BotaoLigarApertado(NumeroDoBotao: integer);
    procedure BotaoDesligarApertado(NumeroDoBotao: integer);
  end;

implementation

procedure TControle.BotaoDesligarApertado(NumeroDoBotao: integer);
begin
  BotoesDesligar[NumeroDoBotao].Executar;
end;

{ TControle }

procedure TControle.BotaoLigarApertado(NumeroDoBotao: integer);
begin
  BotoesLigar[NumeroDoBotao].Executar;
end;

procedure TControle.DefinirComandos(NumeroDoBotao: integer; Ligar, Desligar: IComandos);
begin
  BotoesLigar[NumeroDoBotao] := Ligar;
  BotoesDesligar[NumeroDoBotao] := Desligar;
end;

end.
