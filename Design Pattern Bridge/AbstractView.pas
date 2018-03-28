unit AbstractView;

interface

uses
  System.SysUtils, InterfaceRecursos;

type
  TView = class
    Recursos: IRecursos;
    constructor Create(Recursos: IRecursos);
    function Exibir(Artista: string): string; virtual; abstract;
  end;

implementation

{ TView }

constructor TView.Create(Recursos: IRecursos);
begin
  Self.Recursos := Recursos;
end;

end.
