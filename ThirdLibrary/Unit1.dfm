object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 263
  ClientWidth = 498
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 50
    Top = 131
    Width = 8
    Height = 16
    Caption = 'X'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 50
    Top = 167
    Width = 7
    Height = 16
    Caption = 'Y'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Button1: TButton
    Left = 17
    Top = 16
    Width = 209
    Height = 90
    Caption = 
      #1047#1072#1087#1091#1089#1082' '#1092#1091#1085#1082#1094#1080#1080' SummaX_Y '#1080#1079' '#1076#1080#1085#1072#1084#1080#1095#1077#1089#1082#1080' '#1087#1086#1076#1082#1083#1102#1095#1077#1085#1085#1086#1081' '#1073#1080#1073#1083#1080#1086#1090#1077#1082#1080' M' +
      'ainDll.dll'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    WordWrap = True
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 72
    Top = 128
    Width = 121
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object Edit2: TEdit
    Left = 72
    Top = 166
    Width = 121
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object RichEdit1: TRichEdit
    Left = 223
    Top = 128
    Width = 194
    Height = 62
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
  end
  object Button2: TButton
    Left = 248
    Top = 16
    Width = 169
    Height = 90
    Caption = 
      #1047#1072#1087#1091#1089#1082' '#1092#1091#1085#1082#1094#1080#1080' ProizvX_Y '#1080#1079' '#1076#1080#1085#1072#1084#1080#1095#1077#1089#1082#1080' '#1087#1086#1076#1082#1083#1102#1095#1077#1085#1085#1086#1081' '#1073#1080#1073#1083#1080#1086#1090#1077#1082#1080' ' +
      'MainDll.dll'
    TabOrder = 4
    WordWrap = True
    OnClick = Button2Click
  end
end
