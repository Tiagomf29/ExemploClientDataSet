object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 428
  ClientWidth = 483
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 13
    Width = 32
    Height = 13
    Caption = 'Nome'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 8
    Top = 59
    Width = 81
    Height = 13
    Caption = 'Sobre do meio'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 8
    Top = 102
    Width = 100
    Height = 13
    Caption = 'Sobrenomedo fim'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 16
    Top = 405
    Width = 41
    Height = 13
    Caption = 'Replicar '
  end
  object Edit1: TEdit
    Left = 8
    Top = 32
    Width = 305
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 8
    Top = 75
    Width = 305
    Height = 21
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 8
    Top = 120
    Width = 305
    Height = 21
    TabOrder = 2
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 147
    Width = 467
    Height = 246
    DataSource = DS
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Button1: TButton
    Left = 344
    Top = 30
    Width = 97
    Height = 25
    Caption = 'Popular Dataset'
    TabOrder = 4
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 336
    Top = 61
    Width = 123
    Height = 25
    Caption = 'Gravar Banco de dados'
    TabOrder = 5
    OnClick = Button2Click
  end
  object Edit4: TEdit
    Left = 63
    Top = 399
    Width = 121
    Height = 21
    TabOrder = 6
    Text = '1000'
  end
  object DS: TDataSource
    DataSet = CDS
    Left = 256
    Top = 208
  end
  object CDS: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 344
    Top = 216
    object CDSNome: TStringField
      FieldName = 'Nome'
    end
    object CDSSobrenome_meio: TStringField
      DisplayLabel = 'Sobrenome do meio'
      FieldName = 'Sobrenome_meio'
    end
    object CDSSobrenome_fim: TStringField
      DisplayLabel = 'Sobrenome dofim'
      FieldName = 'Sobrenome_fim'
    end
  end
  object ZConnection1: TZConnection
    ControlsCodePage = cCP_UTF16
    Connected = True
    HostName = 'localhost'
    Port = 3306
    Database = 'teste'
    User = 'root'
    Password = 'root'
    Protocol = 'mysql'
    Left = 288
    Top = 312
  end
end
