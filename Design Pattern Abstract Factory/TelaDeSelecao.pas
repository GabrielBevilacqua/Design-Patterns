unit TelaDeSelecao;

interface

uses
  System.SysUtils;

type
  TTelaDeSelecao = class
    public
      procedure Tela;
  end;

implementation

{ TTelaDeSelecao }

procedure TTelaDeSelecao.Tela;
const
  Tela ='-----------------'+ #13#10 +
    'Selecione a Loja:' + #13#10 +
    '1 - Esfiharia Edmoto' + #13#10 +
    '2 - Pizzaria Jamal' + #13#10 +
    '3 - Sair' + #13#10 +
    '--------------------' + #13#10;
begin
  Writeln(Tela);
end;

end.
