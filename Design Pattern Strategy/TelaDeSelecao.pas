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
    'Selecione Seu animal:' + #13#10 +
    '1 - PatoNormal.' + #13#10 +
    '2 - Pomba.' + #13#10 +
    '3 - Cachorro Viralata.' + #13#10 +
    '--------------------' + #13#10;
begin
  Write(Tela);
end;

end.
