unit XMlToDataSet;

interface

uses
  System.Win.ComObj, Winapi.msxml, System.SysUtils, System.IOUtils,
  Datasnap.DBClient, Data.DB;

type
  EvalidationError = class(Exception);

  TXMLToDataSet = class
    class procedure Testando(CaminhoDoArqv: string; DataSet: TClientDataSet);
  end;

implementation

uses
  UnitConversor;

{ TXMLToDataSet }

class procedure TXMLToDataSet.Testando(CaminhoDoArqv: string; DataSet: TClientDataSet);
var
  XML: IXMLDOMDocument;
  RowNode: IXMLDOMNode;
  ChildNode: IXMLDOMNode;
  NodeRow: IXMLDOMNodeList;
  Field: TField;
begin
  DataSet.Close;
  DataSet.Fields.Clear;
  XML := CreateOleObject('Microsoft.XMLDOM') as IXMLDOMDocument;
  XML.load(CaminhoDoArqv);
  if XML.parseError.errorCode <> 0 then
    raise EvalidationError.Create('Error :' + XML.parseError.reason);

  NodeRow := XML.selectNodes('/root/row');
  if NodeRow.length = 0 then
    Exit;

  RowNode := NodeRow.item[0];

  while RowNode <> nil do
  begin
    ChildNode := RowNode.childNodes.item[0];
    while ChildNode <> nil do
    begin
      Field := TWideStringField.Create(DataSet);
      Field.Name := '';
      Field.FieldName := ChildNode.nodeName;
      Field.DataSet := DataSet;

      ChildNode := ChildNode.nextSibling;
    end;
    Break;
  end;

  DataSet.CreateDataSet;
  while RowNode <> nil do
  begin
    ChildNode := RowNode.childNodes.item[0];
    DataSet.Insert;
    while ChildNode <> nil do
    begin
      DataSet.FieldByName(ChildNode.nodeName).Value := ChildNode.text;
      Form1.rchTextos.Lines.Add(ChildNode.nodeName + ChildNode.text);
      ChildNode := ChildNode.nextSibling;
    end;
    RowNode := RowNode.nextSibling;
    if RowNode <> nil then
      DataSet.Insert;
  end;

end;

end.
