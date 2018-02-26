unit UnitConversor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls,
  Data.DBXJSON, Data.DBXJSONCommon, Data.DBXJSONReflect, System.JSON,
  System.JSONConsts, System.IOUtils;

type
  TForm1 = class(TForm)
    btnCarregarJson: TButton;
    btnCarregarXml: TButton;
    btnCarregarCsv: TButton;
    rchTextos: TRichEdit;
    procedure btnCarregarCsvClick(Sender: TObject);
    procedure btnCarregarJsonClick(Sender: TObject);
    procedure btnCarregarXmlClick(Sender: TObject);
  private const
    ArquivoJSON =
      'C:\Users\Gabriel Scavassa\Documents\Embarcadero\Studio\Projects\Design Patterns\'
      + 'Design-Patterns\Abstract Factory Conversor\mockdata\data.json';
    procedure ConverterJSON;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnCarregarCsvClick(Sender: TObject);
begin
  rchTextos.Lines.LoadFromFile
    ('C:\Users\Gabriel Scavassa\Documents\Embarcadero\Studio\Projects\Design Patterns\Design-Patterns\Abstract Factory Conversor\mockdata\data.csv');
end;

procedure TForm1.btnCarregarJsonClick(Sender: TObject);
begin
  ConverterJSON;
end;

procedure TForm1.btnCarregarXmlClick(Sender: TObject);
begin
  rchTextos.Lines.LoadFromFile
    ('C:\Users\Gabriel Scavassa\Documents\Embarcadero\Studio\Projects\Design Patterns\Design-Patterns\Abstract Factory Conversor\mockdata\data.xml');
end;

procedure TForm1.ConverterJSON;
var
  ListaJSON: TJSONArray;
  ValorJSON: TJSONValue;
  ItemJSON: TJSONValue;
begin
  ListaJSON := TJSONObject.ParseJSONValue(TEncoding.ASCII.GetBytes(TFile.ReadAllText(ArquivoJSON)), 0) as TJSONArray;
  for ValorJSON in ListaJSON do
  begin
    for ItemJSON in TJSONArray(ValorJSON) do
      rchTextos.Lines.Add(Format('%s : %s', [TJSONPair(ItemJSON).JsonString.Value, TJSONPair(ItemJSON).JsonValue.Value]));
  end;
end;

end.
