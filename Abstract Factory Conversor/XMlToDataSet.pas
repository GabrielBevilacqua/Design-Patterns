unit XMlToDataSet;

interface

uses
  System.Win.ComObj, Winapi.msxml, System.SysUtils, System.IOUtils;

type
  EvalidationError = class(Exception);

  TXMLToDataSet = class
  class procedure Testando(CaminhoDoArqv: string);
  end;

implementation

uses
  UnitConversor;

{ TXMLToDataSet }

class procedure TXMLToDataSet.Testando(CaminhoDoArqv: string);
var
  XML: IXMLDOMDocument;
  Node: IXMLDOMNode;
  Node_Row: IXMLDOMNodeList;
  I: integer;
begin
  XML := CreateOleObject('Microsoft.XMLDOM') as IXMLDOMDocument;
  XML.async := False;
  XML.load(CaminhoDoArqv);
  if XML.parseError.errorCode <> 0 then
    raise EvalidationError.Create('Error :' + XML.parseError.reason);

  Node_Row := XML.selectNodes('/root/row');
  for I := 0 to Node_Row.length -1 do
  begin
    Node := Node_Row.item[I];
    Form1.rchTextos.Lines.Add(Node.text);
  end;
end;

end.
