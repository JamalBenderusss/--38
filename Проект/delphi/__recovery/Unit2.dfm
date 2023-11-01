object Form2: TForm2
  Left = 0
  Top = 0
  Align = alClient
  BorderIcons = []
  Caption = #1057#1090#1072#1090#1080#1089#1090#1080#1082#1072' '#1080' '#1073#1080#1086#1075#1088#1072#1092#1080#1103
  ClientHeight = 1039
  ClientWidth = 1633
  Color = clMenu
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Menu = MainMenu1
  TextHeight = 15
  object PageControl1: TPageControl
    Left = -8
    Top = 0
    Width = 1633
    Height = 1031
    ActivePage = Биография
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = #1054#1073#1097#1072#1103' '#1089#1090#1072#1090#1080#1089#1090#1080#1082#1072
      object myStringGrid: TStringGrid
        Left = 3
        Top = 0
        Width = 997
        Height = 576
        ColCount = 15
        DefaultColWidth = 150
        DefaultColAlignment = taCenter
        DefaultRowHeight = 70
        FixedCols = 0
        RowCount = 52
        FixedRows = 0
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object Button1: TButton
        Left = 1184
        Top = 496
        Width = 129
        Height = 57
        Caption = #1047#1072#1087#1086#1083#1085#1080#1090#1100
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = Button1Click
      end
      object Button3: TButton
        Left = 1056
        Top = 496
        Width = 122
        Height = 57
        Caption = #1055#1086#1080#1089#1082
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnClick = Button3Click
      end
      object Button4: TButton
        Left = 1184
        Top = 559
        Width = 129
        Height = 57
        Caption = #1059#1076#1072#1083#1080#1090#1100
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        OnClick = Button4Click
      end
      object Button5: TButton
        Left = 1184
        Top = 622
        Width = 129
        Height = 57
        Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        OnClick = Button5Click
      end
      object Edit1: TEdit
        Left = 1056
        Top = 447
        Width = 225
        Height = 31
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
      end
      object StringGrid1: TStringGrid
        Left = 3
        Top = 598
        Width = 997
        Height = 147
        Color = clMenu
        ColCount = 15
        DefaultColWidth = 150
        DefaultColAlignment = taCenter
        DefaultRowHeight = 70
        FixedCols = 0
        RowCount = 52
        FixedRows = 0
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
      end
      object RadioGroup2: TRadioGroup
        Left = 1028
        Top = 48
        Width = 334
        Height = 345
        Caption = #1042#1099#1073#1077#1088#1080#1090#1077' '#1082#1088#1080#1090#1077#1088#1080#1081' '#1087#1086#1080#1089#1082#1072
        DefaultHeaderFont = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Segoe UI'
        Font.Style = []
        HeaderFont.Charset = DEFAULT_CHARSET
        HeaderFont.Color = clWindowText
        HeaderFont.Height = -17
        HeaderFont.Name = 'Segoe UI'
        HeaderFont.Style = []
        Items.Strings = (
          #1052#1072#1090#1095#1080
          #1043#1086#1083#1086#1074' '#1079#1072#1073#1080#1090#1086
          #1040#1089#1089#1080#1089#1090#1099
          #1046#1077#1083#1090#1099#1077' '#1082#1072#1088#1090#1086#1095#1082#1080
          #1050#1088#1072#1089#1085#1099#1077' '#1082#1072#1088#1090#1086#1095#1082#1080
          #1043#1086#1083#1086#1074' '#1087#1088#1086#1087#1091#1097#1077#1085#1086
          #1057#1091#1093#1080#1093' '#1084#1072#1090#1095#1077#1081
          #1057#1099#1075#1088#1072#1085#1085#1086' '#1084#1080#1085#1091#1090
          #1057#1090#1086#1080#1084#1086#1089#1090#1100)
        ParentFont = False
        TabOrder = 7
      end
      object Button7: TButton
        Left = 1056
        Top = 559
        Width = 122
        Height = 57
        Caption = #1044#1086#1073#1072#1074#1080#1090#1100
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 8
        OnClick = Button7Click
      end
    end
    object Биография: TTabSheet
      Caption = #1041#1080#1086#1075#1088#1072#1092#1080#1103
      ImageIndex = 1
      object WebBrowser1: TWebBrowser
        Left = 653
        Top = 3
        Width = 1017
        Height = 878
        TabOrder = 0
        ControlData = {
          4C00000017540000984800000000000000000000000000000000000000000000
          000000004C000000000000000000000001000000E0D057007335CF11AE690800
          2B2E126208000000000000004C0000000114020000000000C000000000000046
          8000000000000000000000000000000000000000000000000000000000000000
          00000000000000000100000000000000000000000000000000000000}
      end
      object RadioGroup1: TRadioGroup
        Left = 24
        Top = 224
        Width = 401
        Height = 465
        Caption = ' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Segoe UI'
        Font.Style = []
        Items.Strings = (
          #1042#1088#1072#1090#1072#1088#1100
          #1062#1077#1085#1090#1088#1072#1083#1100#1085#1099#1081' '#1079#1072#1097#1080#1090#1085#1080#1082
          #1051#1077#1074#1099#1081' '#1079#1072#1097#1080#1090#1085#1080#1082
          #1055#1088#1072#1074#1099#1081' '#1079#1072#1097#1080#1090#1085#1080#1082
          #1054#1087#1086#1088#1085#1099#1081' '#1087#1086#1083#1091#1079#1072#1097#1080#1090#1085#1080#1082
          #1062#1077#1085#1090#1088#1072#1083#1100#1085#1099#1081' '#1087#1086#1083#1091#1079#1072#1097#1080#1090#1085#1080#1082
          #1051#1077#1074#1099#1081' '#1074#1080#1085#1075#1077#1088
          #1055#1088#1072#1074#1099#1081' '#1074#1080#1085#1075#1077#1088
          #1062#1077#1085#1090#1088#1072#1083#1100#1085#1099#1081' '#1085#1072#1087#1072#1076#1072#1102#1097#1080#1081)
        ParentFont = False
        TabOrder = 1
        OnClick = RadioGroup1Click
      end
      object ComboBox1: TComboBox
        Left = 24
        Top = 32
        Width = 353
        Height = 31
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      object Button2: TButton
        Left = 304
        Top = 168
        Width = 121
        Height = 65
        Caption = #1041#1080#1086#1075#1088#1072#1092#1080#1103
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        OnClick = Button2Click
      end
      object Button6: TButton
        Left = 160
        Top = 168
        Width = 121
        Height = 65
        Caption = #1058#1077#1089#1090
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        OnClick = Button6Click
      end
    end
  end
  object MainMenu1: TMainMenu
    Left = 1068
    Top = 65506
    object Main1: TMenuItem
      Caption = #1043#1083#1072#1074#1085#1072#1103
      object Main2: TMenuItem
        Caption = #1055#1088#1077#1076#1099#1076#1091#1097#1072#1103' '#1089#1090#1088#1072#1085#1080#1094#1072
        OnClick = Main2Click
      end
      object quit1: TMenuItem
        Caption = #1047#1072#1082#1088#1099#1090#1100
        OnClick = quit1Click
      end
      object N1: TMenuItem
        Caption = #1058#1077#1089#1090
        OnClick = N1Click
      end
      object N2: TMenuItem
        Caption = #1048#1075#1088#1072
        OnClick = N2Click
      end
    end
  end
end
