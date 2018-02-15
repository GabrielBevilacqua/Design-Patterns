unit Sorvete;

interface

type
  ISorvete = interface(IInterface)
    function GetDescricao: String;
    function Custo: Currency;
  end;

implementation

end.
