object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 575
  ClientWidth = 549
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object btnCarregarJson: TButton
    Left = 32
    Top = 532
    Width = 89
    Height = 25
    Caption = 'Carregar Jason'
    TabOrder = 0
    OnClick = btnCarregarJsonClick
  end
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
    TabOrder = 1
    Zoom = 100
  end
  object btnCarregarXml: TButton
    Left = 160
    Top = 532
    Width = 89
    Height = 25
    Caption = 'Carregar Xml'
    TabOrder = 2
    OnClick = btnCarregarXmlClick
  end
  object btnCarregarCsv: TButton
    Left = 288
    Top = 532
    Width = 97
    Height = 25
    Caption = 'Carregar Csv'
    TabOrder = 3
    OnClick = btnCarregarCsvClick
  end
end
