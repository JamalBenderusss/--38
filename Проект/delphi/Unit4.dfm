object Form5: TForm5
  Left = 0
  Top = 0
  BorderIcons = []
  Caption = #1058#1077#1089#1090
  ClientHeight = 538
  ClientWidth = 1141
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Menu = MainMenu1
  Position = poScreenCenter
  OnCreate = FormCreate
  TextHeight = 15
  object Label2: TLabel
    Left = 162
    Top = 488
    Width = 4
    Height = 19
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 833
    Top = 126
    Width = 4
    Height = 19
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label1: TLabel
    Left = 162
    Top = 463
    Width = 4
    Height = 19
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object RadioGroup2: TRadioGroup
    Left = 32
    Top = 91
    Width = 795
    Height = 303
    TabOrder = 0
  end
  object Button1: TButton
    Left = 384
    Top = 421
    Width = 97
    Height = 36
    Caption = #1055#1088#1086#1074#1077#1088#1082#1072
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 448
    Top = 60
    Width = 97
    Height = 25
    Caption = #1053#1072#1095#1072#1090#1100
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 520
    Top = 421
    Width = 105
    Height = 36
    Caption = #1057#1083#1077#1076#1091#1102#1097#1080#1081
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 712
    Top = 421
    Width = 97
    Height = 36
    Caption = #1055#1086#1076#1089#1082#1072#1079#1082#1072
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 712
    Top = 463
    Width = 97
    Height = 36
    Caption = #1048#1075#1088#1072
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    OnClick = Button5Click
  end
  object MainMenu1: TMainMenu
    Left = 896
    Top = 376
    object N1: TMenuItem
      Caption = #1043#1083#1072#1074#1085#1072#1103
      object N2: TMenuItem
        Caption = #1055#1088#1077#1076#1099#1076#1091#1097#1072#1103' '#1089#1090#1088#1072#1085#1080#1094#1072
        OnClick = N2Click
      end
      object N3: TMenuItem
        Caption = #1047#1072#1082#1088#1099#1090#1100
        OnClick = N3Click
      end
      object N4: TMenuItem
        Caption = #1048#1075#1088#1072
        OnClick = N4Click
      end
    end
  end
end
