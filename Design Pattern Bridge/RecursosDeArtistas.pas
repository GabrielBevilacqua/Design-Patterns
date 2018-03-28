unit RecursosDeArtistas;

interface

uses
  System.SysUtils, InterfaceRecursos, Artista;

type
  TRecursosDeArtistas = class(TInterfacedObject, IRecursos)
  private
    Artista: TArtista;
  public
    constructor Create(Artista: TArtista);
    procedure Titulo;
    procedure Descricao;
    procedure Adicionais;
  end;

implementation

{ TRecursosDeArtistas }

procedure TRecursosDeArtistas.Adicionais;
begin
  Self.Artista.Discos;
  Self.Artista.Shows;
end;

constructor TRecursosDeArtistas.Create(Artista: TArtista);
begin
  Self.Artista := Artista;
end;

procedure TRecursosDeArtistas.Descricao;
begin
  Self.Artista.Biografia
end;

procedure TRecursosDeArtistas.Titulo;
begin
  Self.Artista.Nome;
end;

end.
