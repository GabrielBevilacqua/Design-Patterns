unit Observador;

interface

uses
  System.SysUtils, InterfaceDoObservador;

type
  TObservador = class(TInterfacedObject, IObservador)
    public
      function Atualizar(Temperatura, Humidade, Pressao : Double): Double;
  end;

implementation

{ TObservador }

function TObservador.Atualizar(Temperatura, Humidade, Pressao: Double): Double;
begin
//
end;

end.
