object F_Principale: TF_Principale
  Left = 0
  Top = 0
  Caption = 'Form Principale'
  ClientHeight = 503
  ClientWidth = 987
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Menu = MainMenu1
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 153
    Height = 503
    Align = alLeft
    TabOrder = 0
  end
  object MainMenu1: TMainMenu
    Left = 760
    Top = 336
    object Home1: TMenuItem
      Caption = 'Home'
      object Registro1: TMenuItem
        Caption = 'Registro'
      end
      object Exit1: TMenuItem
        Caption = 'Esci'
        OnClick = Exit1Click
      end
    end
  end
end
