program ProjectProxy;

{$APPTYPE CONSOLE}
{$R *.res}

uses
  System.SysUtils,
  InterfacePizzaria in 'InterfacePizzaria.pas',
  Pizzaria in 'Pizzaria.pas',
  EntregadorProxy in 'EntregadorProxy.pas';

var
  Entrega: IPizzaria;

begin
  try
    Entrega := TEntregador.Create('Marguerita');
    try
      Entrega.EntregarPizzas;
      Readln;
      Entrega.EntregarPizzas;
      Readln;
      Entrega.ReceberDinheiro;
      Readln;
      Entrega.ReceberDinheiro;
      Readln;
    except
      on E: Exception do
        Writeln(E.ClassName, ': ', E.Message);
    end;
  finally
    ReportMemoryLeaksOnShutdown := True;
  end;

end.
