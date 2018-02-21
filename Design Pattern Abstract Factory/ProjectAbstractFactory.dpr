program ProjectAbstractFactory;

{$APPTYPE CONSOLE}
{$R *.res}

uses
  System.SysUtils,
  InterfacePizzaStore in 'InterfacePizzaStore.pas',
  PizzariaJamal in 'PizzariaJamal.pas',
  EsfihariaEdmoto in 'EsfihariaEdmoto.pas',
  Esfihas in 'Esfihas.pas',
  Pizzas in 'Pizzas.pas',
  TelaDeSelecao in 'TelaDeSelecao.pas';

var
  Tela: TTelaDeSelecao;
  Loja: integer;

  EsfihariaEdmoto: IPizzaStore;
  PizzariaJamal: IPizzaStore;

  Esfiha: IEsfiha;
  Pizza: IPizza;

begin
  try
    Tela := TTelaDeSelecao.Create;
    Tela.Tela;
    Readln(Loja);

    while not(Loja in [1, 2, 3]) do
    begin
      Writeln('Selecione Uma Loja Valida');
      Readln(Loja);
    end;
    case Loja of
      1:
        begin
          EsfihariaEdmoto := TEsfihariaEdmoto.Create;
          Pizza := EsfihariaEdmoto.PesquisarPizza;
          Esfiha := EsfihariaEdmoto.PesquisarEsfiha;
        end;
      2:
        begin
          PizzariaJamal := TPizzariaJamal.Create;
          Pizza := PizzariaJamal.PesquisarPizza;
          Esfiha := PizzariaJamal.PesquisarEsfiha;
        end;
      3:
        begin
          Exit;
        end;
    end;
    try
      Writeln(Pizza.SaborDaPizza);
      Readln;
      Writeln(Format('%m', [Pizza.ValorDaPizza]));
      Readln;
      Writeln(Esfiha.SaborDaEsfiha);
      Readln;
      Writeln(Format('%m', [Esfiha.ValorDaEsfiha]));
      Readln;
    except
      on E: Exception do
        Writeln(E.ClassName, ': ', E.Message);
    end;
  finally
    Tela.Free;
    ReportMemoryLeaksOnShutdown := True;
  end;

end.
