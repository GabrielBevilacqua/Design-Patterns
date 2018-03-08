unit JSONToDataSet;

interface

uses
  Datasnap.DBClient, System.JSON, Data.DB, System.SysUtils,
  System.IOUtils, InterfaceConversor;

type
   TJSONToDataSet = class(TConversor)
  private
    DataSet: TClientDataSet;
    CaminhoDoArqv: String;
  public
    function Converter: string; override;
    constructor Create(const Arquivo: string; ClientDataSet: TClientDataSet); override;
  end;

implementation

uses
  UnitConversor;

{ TJSONToDataSet }

function TJSONToDataSet.Converter: string;
var
  ListaJSON: TJSONArray;
  ValorJSON: TJSONValue;
  ItemJSON: TJSONValue;
  Field: TField;
begin
  inherited;
  DataSet.Close;
  DataSet.Fields.Clear;
  ListaJSON := nil;
  try
    ListaJSON := TJSONObject.ParseJSONValue(TEncoding.ASCII.GetBytes(TFile.ReadAllText(CaminhoDoArqv)), 0) as TJSONArray;
    if ListaJSON.Count > 0 then
    begin
      ValorJSON := ListaJSON.Items[0];
      for ItemJSON in TJSONArray(ValorJSON) do
      begin
        Field := TWideStringField.Create(DataSet);
        Field.Name := '';
        Field.FieldName := TJSONPair(ItemJSON).JsonString.Value;
        Field.DataSet := DataSet
      end;
    end;

    DataSet.CreateDataSet;
    for ValorJSON in ListaJSON do
    begin
      DataSet.Insert;
      for ItemJSON in TJSONArray(ValorJSON) do
      begin
        DataSet.FieldByName(TJSONPair(ItemJSON).JsonString.Value).Value := TJSONPair(ItemJSON).JsonValue.Value;
        Form1.rchTextos.Lines.Add(Format('%s : %s', [TJSONPair(ItemJSON).JsonString.Value, TJSONPair(ItemJSON).JsonValue.Value]));
      end;
      DataSet.Post;
    end;
  finally
    ListaJSON.Free;
  end;
end;

constructor TJSONToDataSet.Create(const Arquivo: string; ClientDataSet: TClientDataSet);
begin
  inherited;
  CaminhoDoArqv := Arquivo;
  DataSet := ClientDataSet;
end;

end.
