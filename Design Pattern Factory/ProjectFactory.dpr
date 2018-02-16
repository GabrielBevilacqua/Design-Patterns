program ProjectFactory;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  PizzaStore in 'PizzaStore.pas',
  PizzaDeQueijoNY in 'PizzaDeQueijoNY.pas',
  Pizza in 'Pizza.pas';

begin
  try
    { TODO -oUser -cConsole Main : Insert code here }
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
