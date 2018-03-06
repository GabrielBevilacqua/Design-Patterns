unit JSONToDataSet;

interface

uses
  Datasnap.DBClient, UnitConversor, System.JSON, Data.DB, System.SysUtils,
  System.IOUtils;

type
  TJSONToDataSet = class
    class procedure Converter(const CaminhoDoArqv: string;
      DataSet: TClientDataSet);
  end;

implementation

{ TJSONToDataSet }

class procedure TJSONToDataSet.Converter(const CaminhoDoArqv: string; DataSet: TClientDataSet);
var
  ListaJSON: TJSONArray;
  ValorJSON: TJSONValue;
  ItemJSON: TJSONValue;
  Field: TField;
begin
  DataSet.Close;
  DataSet.Fields.Clear;
  ListaJSON := nil;
  try
    ListaJSON := TJSONObject.ParseJSONValue(TEncoding.ASCII.GetBytes(TFile.ReadAllText(CaminhoDoArqv)), 0)
      as TJSONArray;
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

end.
