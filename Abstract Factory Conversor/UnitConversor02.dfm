object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 584
  ClientWidth = 555
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object rchTextos: TRichEdit
    Left = 8
    Top = 8
    Width = 537
    Height = 505
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    Zoom = 100
  end
  object btnCarregarXml: TButton
    Left = 208
    Top = 532
    Width = 89
    Height = 25
    Caption = 'Carregar Xml'
    TabOrder = 1
  end
  object btnCarregarJson: TButton
    Left = 64
    Top = 532
    Width = 89
    Height = 25
    Caption = 'Carregar Jason'
    TabOrder = 2
  end
  object btnCarregarCsv: TButton
    Left = 368
    Top = 532
    Width = 97
    Height = 25
    Caption = 'Carregar Csv'
    TabOrder = 3
  end
end
