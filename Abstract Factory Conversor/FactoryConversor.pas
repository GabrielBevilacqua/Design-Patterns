unit FactoryConversor;

interface

uses
  InterfaceConversor, System.SysUtils, Data.DB, Datasnap.DBClient,
  JSONToDataSet;

type
  TFactoryConversor = class
  public
    function ConverterArquivo(Arquivo: string; ClientDataSet: TClientDataSet): TConversor;
  end;

implementation

{ TFactoryConversor }

function TFactoryConversor.ConverterArquivo(Arquivo: string; ClientDataSet: TClientDataSet): TConversor;
begin
  Result := TJSONToDataSet.Create(Arquivo, ClientDataSet);
end;

end.
