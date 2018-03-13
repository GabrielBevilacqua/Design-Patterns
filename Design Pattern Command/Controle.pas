unit Controle;

interface

uses
  System.SysUtils, System.Generics.Collections, InterfaceCommandos,
  ComandoPadrao;

type
  TControle= class
  private
    BotoesLigar: TList<IComandos>;
    BotoesDesligar: TList<IComandos>;
    Undo: IComandos;
    Padrao: TComandoPadrao;
  public
    constructor Create;
    procedure DefinirComandos(NumeroDoBotao: integer; Ligar, Desligar: IComandos);
    procedure BotaoLigarApertado(NumeroDoBotao: integer);
    procedure BotaoDesligarApertado(NumeroDoBotao: integer);
    procedure BotaoUndoApertado;
    destructor Destroy; override;
  end;

implementation

procedure TControle.BotaoDesligarApertado(NumeroDoBotao: integer);
begin
  BotoesDesligar.Items[NumeroDoBotao].Executar;
  Undo := BotoesDesligar.Items[NumeroDoBotao];
end;

{ TControle }

procedure TControle.BotaoLigarApertado(NumeroDoBotao: integer);
begin
  BotoesLigar.Items[NumeroDoBotao].Executar;
  Undo := BotoesLigar.Items[NumeroDoBotao];
end;

procedure TControle.BotaoUndoApertado;
begin
  Undo.Desfazer;
end;

constructor TControle.Create;
var
  I: Integer;
begin
  BotoesLigar := TList<IComandos>.Create;
  BotoesDesligar := TList<IComandos>.Create;
  Padrao := TComandoPadrao.Create;
  for I := 0 to BotoesLigar.Count do
  begin
    BotoesLigar.Add(Padrao);
    BotoesDesligar.Add(Padrao);
  end;
  Undo := Padrao;
end;

procedure TControle.DefinirComandos(NumeroDoBotao: integer; Ligar, Desligar: IComandos);
begin
  BotoesLigar.Insert(NumeroDoBotao, Ligar);
  BotoesDesligar.Insert(NumeroDoBotao, Desligar);
  end;
destructor TControle.Destroy;
begin
  BotoesLigar.Free;
  BotoesDesligar.Free;
  inherited;
end;

end.
