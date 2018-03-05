unit CSVToDataSet;

interface

uses
  System.SysUtils, Datasnap.DBClient, System.IOUtils, Data.DB, System.Variants,
  System.Classes, UnitConversor;

type
  TCSVToDataSet = class
    class procedure Testando(CaminhoDoArqv: string; DataSet: TClientDataSet);
    class procedure Split(Linha: string; Delimiter: char; ListaDeStrings: TStringList);
  end;

implementation

class procedure TCSVToDataSet.Split(Linha: string; Delimiter: char;
    ListaDeStrings: TStringList);
begin
  ListaDeStrings.Delimiter := Delimiter;
  ListaDeStrings.DelimitedText := Linha;
end;

class procedure TCSVToDataSet.Testando(CaminhoDoArqv: string; DataSet: TClientDataSet);
var
  ListaDeDados, ListaDeItens: TStringList;
  I: integer;
  LinhaAtual: string;
  Field: TField;
begin
  ListaDeDados := TStringList.Create;
  ListaDeItens := TStringList.Create;
  try
    ListaDeItens.LoadFromFile(CaminhoDoArqv);

    for I := Low to High do
    begin
      LinhaAtual := ListaDeItens[0];
      Split(LinhaAtual, ',', ListaDeDados);
      Field := TWideStringField.Create(DataSet);
      Field.Name := '';
      Field.FieldName := LinhaAtual;
      Field.DataSet := DataSet;
    end;

    for I := 1 to ListaDeItens.Count -1 do
    begin
      LinhaAtual := ListaDeItens[I];
      Split(LinhaAtual, ',', ListaDeDados);

      Form1.rchTextos.Lines.Add(LinhaAtual);
    end;
  finally
    ListaDeDados.Free;
    ListaDeItens.Free;
  end;
end;

end.
