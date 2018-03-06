unit InterfaceConversor;

interface

uses
  Data.DB, System.SysUtils, System.IOUtils, Datasnap.DBClient, System.JSON;

type
  TConversor = class
  function Converter: string; virtual; abstract;
  constructor Create(const CaminhoDoArqv: string; DataSet: TClientDataSet); virtual; abstract;
  end;

implementation

end.
