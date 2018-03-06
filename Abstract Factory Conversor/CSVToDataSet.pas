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

class procedure TCSVToDataSet.Split(Linha: string; Delimiter: char; ListaDeStrings: TStringList);
begin
  ListaDeStrings.Delimiter := Delimiter;
  ListaDeStrings.DelimitedText := Linha;
end;

class procedure TCSVToDataSet.Testando(CaminhoDoArqv: string; DataSet: TClientDataSet);
var
  ListaDeDados, ListaDeItens: TStringList;
  I, J, K: integer;
  LinhaAtual: string;
  Field: TField;
begin
  ListaDeDados := TStringList.Create;
  ListaDeItens := TStringList.Create;

  DataSet.Close;
  DataSet.Fields.Clear;
  try
    ListaDeItens.LoadFromFile(CaminhoDoArqv);

    for I := 0 to ListaDeItens.Count - 1 do
    begin
      LinhaAtual := ListaDeItens[I];
      Split(LinhaAtual, ',', ListaDeDados);

      if I = 0 then
      begin
        for J := 0 to ListaDeDados.Count - 1 do
        begin
          Field := TWideStringField.Create(DataSet);
          Field.Name := '';
          Field.FieldName := ListaDeDados[J];
          Field.DataSet := DataSet;
        end;
        DataSet.CreateDataSet;
        continue;
      end;

      DataSet.Insert;
      for K := 0 to ListaDeDados.Count - 1 do
        DataSet.Fields[K].Value := ListaDeDados[K];
        DataSet.Post;

        Form1.rchTextos.Lines.Add(LinhaAtual);
    end;
  finally
    ListaDeDados.Free;
    ListaDeItens.Free;
  end;
end;

end.
