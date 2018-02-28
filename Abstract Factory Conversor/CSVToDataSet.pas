unit CSVToDataSet;

interface

uses
  System.SysUtils, Datasnap.DBClient, System.IOUtils, Data.DB, System.Variants,
  System.Classes, UnitConversor;

type
  TCSVToDataSet = class
    class procedure Converter(CaminhoDoArqv: string; DataSet: TClientDataSet);
    class procedure Testando(CaminhoDoArqv: string);
    class procedure Split(Linha: string; Delimiter: char; ListaDeStrings: TStringList);
  end;

implementation

{ TCSVToDataSet }

class procedure TCSVToDataSet.Converter(CaminhoDoArqv: string;
  DataSet: TClientDataSet);
begin
  // ListaCSV := TFile.ReadAllText(CaminhoDoArqv)
end;

class procedure TCSVToDataSet.Split(Linha: string; Delimiter: char;
    ListaDeStrings: TStringList);
begin
  ListaDeStrings.Delimiter := Delimiter;
  ListaDeStrings.DelimitedText := Linha;
end;

class procedure TCSVToDataSet.Testando(CaminhoDoArqv: string);
var
  ListaDeDados, ListaDeItens: TStringList;
  I, Cont: integer;
  LinhaAtual: string;
begin
  ListaDeDados := TStringList.Create;
  ListaDeItens := TStringList.Create;
  try
    ListaDeItens.LoadFromFile(CaminhoDoArqv);
    for I := 0 to ListaDeItens.Count -1 do
    begin
      LinhaAtual := ListaDeItens[I];
      Split(LinhaAtual, ',', ListaDeDados);

      Form1.rchTextos.Lines.Add(ListaDeDados[I]);

//      Form1.rchTextos.Lines.Add(ListaDeDados[0]);
//      Form1.rchTextos.Lines.Add(ListaDeDados[1]);
//      Form1.rchTextos.Lines.Add(ListaDeDados[2]);
//      Form1.rchTextos.Lines.Add(ListaDeDados[3]);
//      Form1.rchTextos.Lines.Add(ListaDeDados[4]);
//      Form1.rchTextos.Lines.Add(ListaDeDados[5]);

    end;
  finally
    ListaDeDados.Free;
    ListaDeItens.Free;
  end;
end;

end.
