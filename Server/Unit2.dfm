object Form2: TForm2
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = 'Form2'
  ClientHeight = 185
  ClientWidth = 312
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 50
    Top = 8
    Width = 49
    Height = 13
    Caption = 'Comando:'
  end
  object Label2: TLabel
    Left = 0
    Top = 32
    Width = 99
    Height = 13
    Caption = 'Tamanho Horizontal:'
  end
  object Label3: TLabel
    Left = 13
    Top = 71
    Width = 86
    Height = 13
    Caption = 'Tamanho Vertical:'
  end
  object Label4: TLabel
    Left = 65
    Top = 106
    Width = 34
    Height = 13
    Caption = 'Image:'
  end
  object editComando: TEdit
    Left = 105
    Top = 5
    Width = 184
    Height = 21
    TabOrder = 0
  end
  object trackHorizontal: TTrackBar
    Left = 105
    Top = 34
    Width = 202
    Height = 33
    Max = 7
    Min = 1
    Position = 1
    TabOrder = 1
  end
  object trackVertical: TTrackBar
    Left = 105
    Top = 71
    Width = 202
    Height = 33
    Max = 11
    Min = 1
    Position = 1
    TabOrder = 2
  end
  object Button1: TButton
    Left = 282
    Top = 3
    Width = 25
    Height = 25
    Caption = 'O'
    TabOrder = 3
    OnClick = Button1Click
  end
  object cbEnable: TCheckBox
    Left = 105
    Top = 130
    Width = 50
    Height = 17
    Caption = 'Ativo'
    Checked = True
    State = cbChecked
    TabOrder = 4
  end
  object editUrl: TEdit
    Left = 105
    Top = 103
    Width = 121
    Height = 21
    ReadOnly = True
    TabOrder = 5
  end
  object Button2: TButton
    Left = 232
    Top = 99
    Width = 75
    Height = 25
    Caption = 'Buscar'
    TabOrder = 6
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 31
    Top = 153
    Width = 124
    Height = 25
    Caption = 'OK'
    TabOrder = 7
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 161
    Top = 153
    Width = 124
    Height = 25
    Caption = 'Cancel'
    TabOrder = 8
    OnClick = Button4Click
  end
  object cbPad: TCheckBox
    Left = 161
    Top = 130
    Width = 40
    Height = 17
    Caption = 'Pad'
    Enabled = False
    TabOrder = 9
  end
  object Panel1: TPanel
    Left = -5
    Top = 41
    Width = 320
    Height = 59
    Color = clSilver
    ParentBackground = False
    TabOrder = 10
    Visible = False
    object Label5: TLabel
      Left = 5
      Top = 17
      Width = 307
      Height = 33
      Caption = 'GRAVANDO COMANDO'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Left = 264
    Top = 120
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 80
    OnTimer = Timer1Timer
    Left = 16
    Top = 112
  end
end
