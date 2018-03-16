unit HomeTheaterFacade;

interface

uses
  System.SysUtils, MaquinaDePipoca, Luz, Projetor, Amplificador, Dvd;

type
  THomeFacade = class
  private
    MaquinaDePipoca: TMaqDePipoca;
    Luz: TLuz;
    Projetor: TProjetor;
    Amplificador: TAmplificador;
    Dvd: TDvd;
  public
    constructor Create(MaquinaDePipoca: TMaqDePipoca; Luz: TLuz;
      Projetor: TProjetor; Amplificador: TAmplificador; Dvd: TDvd);
    procedure AssistirFilme(NomeDoFilme: String);
    procedure DesligarHomeFacade;
  end;

implementation

{ THomeFacade }

constructor THomeFacade.Create(MaquinaDePipoca: TMaqDePipoca; Luz: TLuz;
  Projetor: TProjetor; Amplificador: TAmplificador; Dvd: TDvd);
begin
  Self.MaquinaDePipoca := MaquinaDePipoca;
  Self.Luz := Luz;
  Self.Projetor := Projetor;
  Self.Amplificador := Amplificador;
  Self.Dvd := Dvd;
end;

procedure THomeFacade.AssistirFilme(NomeDoFilme: String);
begin
  MaquinaDePipoca.Ligar;
  MaquinaDePipoca.EstourarPipoca;
  Luz.LuzMedia;
  Projetor.Ligar;
  Projetor.TelaCheia;
  Amplificador.Ligar;
  Amplificador.Volume('Max');
  Dvd.Ligar;
  Dvd.Play;
end;

procedure THomeFacade.DesligarHomeFacade;
begin
  MaquinaDePipoca.Desligar;
  Luz.Acender;
  Projetor.Desligar;
  Amplificador.Desligar;
  Dvd.Stop;
  Dvd.Desligar;
end;

end.
