object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 442
  ClientWidth = 628
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 628
    Height = 442
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 624
    ExplicitHeight = 441
    object Label1: TLabel
      Left = 208
      Top = 114
      Width = 110
      Height = 32
      Caption = 'Username'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 208
      Top = 223
      Width = 101
      Height = 32
      Caption = 'Password'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object E_username: TEdit
      Left = 208
      Top = 168
      Width = 201
      Height = 23
      TabOrder = 0
    end
    object E_password: TEdit
      Left = 208
      Top = 272
      Width = 201
      Height = 23
      TabOrder = 1
    end
    object Button1: TButton
      Left = 208
      Top = 328
      Width = 201
      Height = 25
      Caption = 'Accedi'
      TabOrder = 2
      OnClick = Button1Click
    end
  end
end