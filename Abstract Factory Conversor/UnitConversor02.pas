unit UnitConversor02;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls;

type
  TForm2 = class(TForm)
    rchTextos: TRichEdit;
    btnCarregarXml: TButton;
    btnCarregarJson: TButton;
    btnCarregarCsv: TButton;
  private
    { Private declarations }
  public
    function ConversorJSON:
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

end.
