object Form1: TForm1
  Left = 219
  Top = 125
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'ListBox Hints'
  ClientHeight = 267
  ClientWidth = 450
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 120
  TextHeight = 16
  object lbx_Demo: TListBox
    Left = 8
    Top = 8
    Width = 305
    Height = 249
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ItemHeight = 16
    Items.Strings = (
      'Voici un exemple'
      'Voici un exemple de texte long'
      'Voici un exemple de texte long de plus en plus long'
      
        'Voici un exemple de texte long de plus en plus long qu'#39'il est im' +
        'possible'
      
        'Voici un exemple de texte long de plus en plus long qu'#39'il est im' +
        'possible de voir dans'
      
        'Voici un exemple de texte long de plus en plus long qu'#39'il est im' +
        'possible de voir dans sa totalite'
      
        'Voici un exemple de texte long de plus en plus long qu'#39'il est im' +
        'possible de voir dans sa totalite dans une TListBox'
      'et on recommence'
      'Voici un exemple'
      'Voici un exemple de texte long'
      'Voici un exemple de texte long de plus en plus long'
      
        'Voici un exemple de texte long de plus en plus long qu'#39'il est im' +
        'possible'
      
        'Voici un exemple de texte long de plus en plus long qu'#39'il est im' +
        'possible de voir dans'
      
        'Voici un exemple de texte long de plus en plus long qu'#39'il est im' +
        'possible de voir dans sa totalite'
      
        'Voici un exemple de texte long de plus en plus long qu'#39'il est im' +
        'possible de voir dans sa totalite dans une TListBox')
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
  end
  object GroupBox1: TGroupBox
    Left = 320
    Top = 4
    Width = 121
    Height = 101
    Caption = ' Font size '
    TabOrder = 1
    object rbtn_Big: TRadioButton
      Left = 16
      Top = 24
      Width = 57
      Height = 17
      Caption = 'Big'
      TabOrder = 0
      OnClick = rbtn_BigClick
    end
    object rbtn_Medium: TRadioButton
      Tag = 1
      Left = 16
      Top = 48
      Width = 73
      Height = 17
      Caption = 'Middle'
      TabOrder = 1
      OnClick = rbtn_BigClick
    end
    object rbtn_Normal: TRadioButton
      Tag = 2
      Left = 16
      Top = 72
      Width = 73
      Height = 17
      Caption = 'Normal'
      Checked = True
      TabOrder = 2
      TabStop = True
      OnClick = rbtn_BigClick
    end
  end
  object cbx_HintActive: TCheckBox
    Left = 328
    Top = 214
    Width = 105
    Height = 20
    Caption = 'Active Hints'
    Checked = True
    State = cbChecked
    TabOrder = 2
    OnClick = cbx_HintActiveClick
  end
  object cbx_HScrollBar: TCheckBox
    Left = 327
    Top = 240
    Width = 114
    Height = 17
    Caption = 'ScrollBar horiz.'
    TabOrder = 3
    OnClick = cbx_HScrollBarClick
  end
end
