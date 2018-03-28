unit ViewCelular;

interface

uses
  System.SysUtils, AbstractView;

type
  TViewCelular = class(TView)
  public
    function Exibir(Artista: string): string; override;
  end;

implementation

{ TViewCelular }

function TViewCelular.Exibir(Artista: string): string;
begin
  Self.Recursos.Titulo;
  Self.Recursos.Descricao;
  Self.Recursos.Adicionais;
end;

end.
