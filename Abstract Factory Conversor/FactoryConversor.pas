unit FactoryConversor;

interface

uses
  InterfaceConversor, System.SysUtils, Data.DB, Datasnap.DBClient,
  JSONToDataSet, XMlToDataSet, CSVToDataSet;

type
  TFactoryConversor = class
  public
    function ConverterArquivo(Arquivo: string; ClientDataSet: TClientDataSet): TConversor;
  end;

  EValidationError = class(Exception);

implementation

{ TFactoryConversor }

function TFactoryConversor.ConverterArquivo(Arquivo: string; ClientDataSet: TClientDataSet): TConversor;
var 
  FileExit: String;
begin
  FileExit := ExtractFileExt(Arquivo);
  if FileExit = '.json' then
    Result := TJSONToDataSet.Create(Arquivo, ClientDataSet)
  else if FileExit = '.xml' then
    Result := TXMLToDataSet.Create(Arquivo, ClientDataSet)
  else if FileExit = '.csv' then
    Result := TCSVToDataSet.Create(Arquivo, ClientDataSet)
  else
  begin
    raise EvalidationError.Create('Arquivo invalido'); 
    Result := nil;
  end;
end;

end.
