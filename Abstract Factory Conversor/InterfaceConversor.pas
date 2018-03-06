unit InterfaceConversor;

interface

uses
  Data.DB, System.SysUtils, System.IOUtils, Datasnap.DBClient, System.JSON;

type
  TConversor = class
  function Converter(const CaminhoDoArqv: string; DataSet: TClientDataSet) : String; virtual; abstract;
  end;

implementation

end.
