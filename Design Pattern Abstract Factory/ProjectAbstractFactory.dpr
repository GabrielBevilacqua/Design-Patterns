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
  TelaDeSelecao in 'TelaDeSelecao.pas',
  FazerPedidoEdmoto in 'FazerPedidoEdmoto.pas';

var
  Tela: TTelaDeSelecao;
  Loja: Integer;

  PedidoDeEsfihas: TPedidoEsfiha;
  PedidoDePizzas: TPedidoPizza;
  kk: TPizzaStore;

begin
  PedidoDePizzas := nil;
  PedidoDeEsfihas := nil;
  Tela := nil;
  kk := nil;
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
          PedidoDeEsfihas.PedirEsfihaEdmoto(2, 'TEdmotoEsfihas');
          PedidoDeEsfihas.MostrarPedidoDeEsfihaEdmoto;
          PedidoDePizzas.PedirPizzaEdmoto(2, 'TEdmotoPizzas');
          PedidoDePizzas.MostrarPedidoDePizzaEdmoto;
        end;
      2:
        begin
          kk := TPizzariaJamal.Create;
          Writeln(kk.PesquisarEsfiha.SaborDaEsfiha);
        end;
      3:
        begin
          Exit;
        end;
    end;
    try
    Readln;
    except
      on E: Exception do
        Writeln(E.ClassName, ': ', E.Message);
    end;
  finally
    PedidoDeEsfihas.Free;
    PedidoDePizzas.Free;
    Tela.Free;
    kk.Free;
    ReportMemoryLeaksOnShutdown := True;
  end;

end.
