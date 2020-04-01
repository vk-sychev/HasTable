object frmHelp: TfrmHelp
  Left = 250
  Top = 162
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1060#1080#1083#1100#1084
  ClientHeight = 285
  ClientWidth = 441
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 16
    Top = 32
    Width = 50
    Height = 13
    Caption = #1053#1072#1079#1074#1072#1085#1080#1077
  end
  object lbl2: TLabel
    Left = 16
    Top = 72
    Width = 51
    Height = 13
    Caption = #1056#1077#1078#1080#1089#1089#1077#1088
  end
  object lbl3: TLabel
    Left = 32
    Top = 112
    Width = 38
    Height = 13
    Caption = #1040#1082#1090#1077#1088#1099
  end
  object lbl4: TLabel
    Left = 24
    Top = 152
    Width = 50
    Height = 13
    Caption = #1054#1087#1080#1089#1072#1085#1080#1077
  end
  object edtName: TEdit
    Left = 96
    Top = 24
    Width = 289
    Height = 21
    ReadOnly = True
    TabOrder = 0
  end
  object edtDirector: TEdit
    Left = 96
    Top = 64
    Width = 289
    Height = 21
    ReadOnly = True
    TabOrder = 1
  end
  object edtActors: TEdit
    Left = 96
    Top = 104
    Width = 289
    Height = 21
    ReadOnly = True
    TabOrder = 2
  end
  object mmoDescription: TMemo
    Left = 96
    Top = 144
    Width = 289
    Height = 73
    ReadOnly = True
    TabOrder = 3
  end
  object btnOK: TButton
    Left = 96
    Top = 240
    Width = 105
    Height = 25
    Caption = 'OK'
    Default = True
    TabOrder = 4
    OnClick = btnOKClick
  end
  object btnCancel: TButton
    Left = 248
    Top = 240
    Width = 115
    Height = 25
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 5
  end
end
