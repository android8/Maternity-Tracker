object dlgInfectHist: TdlgInfectHist
  Left = 252
  Top = 137
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Infection History'
  ClientHeight = 397
  ClientWidth = 787
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  Scaled = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 14
  object pnlfooter: TPanel
    Tag = 19641
    Left = 0
    Top = 368
    Width = 787
    Height = 29
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 2
    object bbtnOK: TBitBtn
      Left = 630
      Top = 3
      Width = 75
      Height = 25
      Align = alCustom
      Anchors = [akTop, akRight]
      Caption = 'OK'
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333330000333333333333333333333333F33333333333
        00003333344333333333333333388F3333333333000033334224333333333333
        338338F3333333330000333422224333333333333833338F3333333300003342
        222224333333333383333338F3333333000034222A22224333333338F338F333
        8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
        33333338F83338F338F33333000033A33333A222433333338333338F338F3333
        0000333333333A222433333333333338F338F33300003333333333A222433333
        333333338F338F33000033333333333A222433333333333338F338F300003333
        33333333A222433333333333338F338F00003333333333333A22433333333333
        3338F38F000033333333333333A223333333333333338F830000333333333333
        333A333333333333333338330000333333333333333333333333333333333333
        0000}
      ModalResult = 1
      NumGlyphs = 2
      TabOrder = 0
      OnClick = bbtnOKClick
    end
    object bbtnCancel: TBitBtn
      Left = 711
      Top = 3
      Width = 75
      Height = 25
      Align = alCustom
      Anchors = [akTop, akRight]
      Kind = bkCancel
      NumGlyphs = 2
      TabOrder = 1
    end
  end
  object pnlbody: TPanel
    Left = 0
    Top = 35
    Width = 787
    Height = 333
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    object Label1: TLabel
      Tag = 1
      Left = 11
      Top = 9
      Width = 226
      Height = 28
      Caption = 'Live with someone with Tuberculosis or exposed to Tuberculosis?'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      WordWrap = True
    end
    object Label3: TLabel
      Left = 38
      Top = 72
      Width = 3
      Height = 14
    end
    object Label4: TLabel
      Tag = 4
      Left = 11
      Top = 91
      Width = 189
      Height = 14
      Caption = 'Rash since last menstrual period?'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object StaticText1: TLabel
      Tag = 2
      Left = 11
      Top = 43
      Width = 137
      Height = 14
      Caption = 'History of Genital Herpes'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object StaticText2: TLabel
      Tag = 3
      Left = 11
      Top = 67
      Width = 152
      Height = 14
      Caption = 'Exposed to Genital Herpes?'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object StaticText3: TLabel
      Tag = 5
      Left = 11
      Top = 115
      Width = 227
      Height = 14
      Caption = 'Viral illness since last menstrual period?'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object StaticText4: TLabel
      Tag = 6
      Left = 11
      Top = 139
      Width = 58
      Height = 14
      Caption = 'Hepatitis B'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object StaticText5: TLabel
      Tag = 7
      Left = 11
      Top = 163
      Width = 59
      Height = 14
      Caption = 'Hepatitis C'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object StaticText6: TLabel
      Tag = 8
      Left = 11
      Top = 187
      Width = 218
      Height = 14
      Caption = 'History of Sexually Transmitted Disease'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object StaticText7: TLabel
      Tag = 9
      Left = 11
      Top = 211
      Width = 115
      Height = 14
      Caption = 'History of Gonorrhea'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object StaticText8: TLabel
      Tag = 10
      Left = 11
      Top = 234
      Width = 113
      Height = 14
      Caption = 'History of Chlamydia'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object StaticText9: TLabel
      Tag = 11
      Left = 11
      Top = 259
      Width = 178
      Height = 14
      Caption = 'History of Human Papillomavirus'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object StaticText10: TLabel
      Tag = 12
      Left = 11
      Top = 283
      Width = 232
      Height = 14
      Caption = 'History of Human Immunodeficiency Virus'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object StaticText11: TLabel
      Tag = 13
      Left = 11
      Top = 307
      Width = 99
      Height = 14
      Caption = 'History of Syphilis'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object CheckBox2: TCheckBox
      Tag = 1
      Left = 276
      Top = 9
      Width = 46
      Height = 17
      Caption = 'Yes'
      TabOrder = 0
      OnClick = CheckBoxClick
    end
    object CheckBox3: TCheckBox
      Tag = 1
      Left = 324
      Top = 9
      Width = 37
      Height = 17
      Caption = 'No'
      TabOrder = 1
      OnClick = CheckBoxClick
    end
    object CheckBox4: TCheckBox
      Tag = 2
      Left = 276
      Top = 43
      Width = 46
      Height = 17
      Caption = 'Yes'
      Color = clBtnFace
      ParentColor = False
      TabOrder = 4
      OnClick = CheckBoxClick
    end
    object CheckBox5: TCheckBox
      Tag = 2
      Left = 324
      Top = 43
      Width = 37
      Height = 17
      Caption = 'No'
      Color = clBtnFace
      ParentColor = False
      TabOrder = 5
      OnClick = CheckBoxClick
    end
    object CheckBox8: TCheckBox
      Tag = 3
      Left = 276
      Top = 67
      Width = 46
      Height = 17
      Caption = 'Yes'
      Color = clBtnFace
      ParentColor = False
      TabOrder = 8
      OnClick = CheckBoxClick
    end
    object CheckBox9: TCheckBox
      Tag = 3
      Left = 324
      Top = 67
      Width = 37
      Height = 17
      Caption = 'No'
      Color = clBtnFace
      ParentColor = False
      TabOrder = 9
      OnClick = CheckBoxClick
    end
    object CheckBox10: TCheckBox
      Tag = 4
      Left = 276
      Top = 91
      Width = 46
      Height = 17
      Caption = 'Yes'
      Color = clBtnFace
      ParentColor = False
      TabOrder = 12
      OnClick = CheckBoxClick
    end
    object CheckBox11: TCheckBox
      Tag = 4
      Left = 324
      Top = 91
      Width = 37
      Height = 17
      Caption = 'No'
      Color = clBtnFace
      ParentColor = False
      TabOrder = 13
      OnClick = CheckBoxClick
    end
    object CheckBox6: TCheckBox
      Tag = 4
      Left = 366
      Top = 91
      Width = 79
      Height = 17
      Caption = 'Unknown'
      Color = clBtnFace
      ParentColor = False
      TabOrder = 14
      OnClick = CheckBoxClick
    end
    object CheckBox7: TCheckBox
      Tag = 3
      Left = 366
      Top = 67
      Width = 77
      Height = 17
      Caption = 'Unknown'
      TabOrder = 10
      OnClick = CheckBoxClick
    end
    object CheckBox12: TCheckBox
      Tag = 2
      Left = 366
      Top = 43
      Width = 79
      Height = 17
      Caption = 'Unknown'
      Color = clBtnFace
      ParentColor = False
      TabOrder = 6
      OnClick = CheckBoxClick
    end
    object CheckBox13: TCheckBox
      Tag = 1
      Left = 366
      Top = 9
      Width = 77
      Height = 17
      Caption = 'Unknown'
      TabOrder = 2
      OnClick = CheckBoxClick
    end
    object CheckBox14: TCheckBox
      Tag = 5
      Left = 276
      Top = 115
      Width = 45
      Height = 17
      Caption = 'Yes'
      TabOrder = 16
      OnClick = CheckBoxClick
    end
    object CheckBox15: TCheckBox
      Tag = 5
      Left = 324
      Top = 115
      Width = 37
      Height = 17
      Caption = 'No'
      TabOrder = 17
      OnClick = CheckBoxClick
    end
    object CheckBox16: TCheckBox
      Tag = 5
      Left = 366
      Top = 115
      Width = 79
      Height = 17
      Caption = 'Unknown'
      TabOrder = 18
      OnClick = CheckBoxClick
    end
    object CheckBox17: TCheckBox
      Tag = 6
      Left = 276
      Top = 139
      Width = 45
      Height = 17
      Caption = 'Yes'
      Color = clBtnFace
      ParentColor = False
      TabOrder = 20
      OnClick = CheckBoxClick
    end
    object CheckBox18: TCheckBox
      Tag = 6
      Left = 324
      Top = 139
      Width = 37
      Height = 17
      Caption = 'No'
      Color = clBtnFace
      ParentColor = False
      TabOrder = 21
      OnClick = CheckBoxClick
    end
    object CheckBox19: TCheckBox
      Tag = 6
      Left = 366
      Top = 139
      Width = 79
      Height = 17
      Caption = 'Unknown'
      Color = clBtnFace
      ParentColor = False
      TabOrder = 22
      OnClick = CheckBoxClick
    end
    object CheckBox20: TCheckBox
      Tag = 7
      Left = 276
      Top = 163
      Width = 45
      Height = 17
      Caption = 'Yes'
      Color = clBtnFace
      ParentColor = False
      TabOrder = 24
      OnClick = CheckBoxClick
    end
    object CheckBox21: TCheckBox
      Tag = 8
      Left = 276
      Top = 187
      Width = 45
      Height = 17
      Caption = 'Yes'
      Color = clBtnFace
      ParentColor = False
      TabOrder = 28
      OnClick = CheckBoxClick
    end
    object CheckBox22: TCheckBox
      Tag = 7
      Left = 324
      Top = 163
      Width = 37
      Height = 17
      Caption = 'No'
      Color = clBtnFace
      ParentColor = False
      TabOrder = 25
      OnClick = CheckBoxClick
    end
    object CheckBox23: TCheckBox
      Tag = 8
      Left = 324
      Top = 187
      Width = 37
      Height = 17
      Caption = 'No'
      Color = clBtnFace
      ParentColor = False
      TabOrder = 29
      OnClick = CheckBoxClick
    end
    object CheckBox24: TCheckBox
      Tag = 7
      Left = 366
      Top = 163
      Width = 79
      Height = 17
      Caption = 'Unknown'
      Color = clBtnFace
      ParentColor = False
      TabOrder = 26
      OnClick = CheckBoxClick
    end
    object CheckBox25: TCheckBox
      Tag = 8
      Left = 366
      Top = 187
      Width = 79
      Height = 17
      Caption = 'Unknown'
      Color = clBtnFace
      ParentColor = False
      TabOrder = 30
      OnClick = CheckBoxClick
    end
    object CheckBox1: TCheckBox
      Tag = 9
      Left = 276
      Top = 211
      Width = 45
      Height = 17
      Caption = 'Yes'
      Color = clBtnFace
      ParentColor = False
      TabOrder = 32
      OnClick = CheckBoxClick
    end
    object CheckBox26: TCheckBox
      Tag = 10
      Left = 276
      Top = 234
      Width = 45
      Height = 17
      Caption = 'Yes'
      Color = clBtnFace
      ParentColor = False
      TabOrder = 36
      OnClick = CheckBoxClick
    end
    object CheckBox27: TCheckBox
      Tag = 11
      Left = 276
      Top = 259
      Width = 45
      Height = 17
      Caption = 'Yes'
      Color = clBtnFace
      ParentColor = False
      TabOrder = 40
      OnClick = CheckBoxClick
    end
    object CheckBox28: TCheckBox
      Tag = 12
      Left = 276
      Top = 283
      Width = 45
      Height = 17
      Caption = 'Yes'
      Color = clBtnFace
      ParentColor = False
      TabOrder = 44
      OnClick = CheckBoxClick
    end
    object CheckBox33: TCheckBox
      Tag = 12
      Left = 324
      Top = 283
      Width = 37
      Height = 17
      Caption = 'No'
      Color = clBtnFace
      ParentColor = False
      TabOrder = 45
      OnClick = CheckBoxClick
    end
    object CheckBox30: TCheckBox
      Tag = 9
      Left = 324
      Top = 211
      Width = 37
      Height = 17
      Caption = 'No'
      Color = clBtnFace
      ParentColor = False
      TabOrder = 33
      OnClick = CheckBoxClick
    end
    object CheckBox31: TCheckBox
      Tag = 10
      Left = 324
      Top = 234
      Width = 37
      Height = 17
      Caption = 'No'
      Color = clBtnFace
      ParentColor = False
      TabOrder = 37
      OnClick = CheckBoxClick
    end
    object CheckBox32: TCheckBox
      Tag = 11
      Left = 324
      Top = 259
      Width = 37
      Height = 17
      Caption = 'No'
      Color = clBtnFace
      ParentColor = False
      TabOrder = 41
      OnClick = CheckBoxClick
    end
    object CheckBox35: TCheckBox
      Tag = 9
      Left = 366
      Top = 211
      Width = 79
      Height = 17
      Caption = 'Unknown'
      Color = clBtnFace
      ParentColor = False
      TabOrder = 34
      OnClick = CheckBoxClick
    end
    object CheckBox36: TCheckBox
      Tag = 10
      Left = 366
      Top = 234
      Width = 79
      Height = 17
      Caption = 'Unknown'
      Color = clBtnFace
      ParentColor = False
      TabOrder = 38
      OnClick = CheckBoxClick
    end
    object CheckBox37: TCheckBox
      Tag = 11
      Left = 366
      Top = 259
      Width = 79
      Height = 17
      Caption = 'Unknown'
      Color = clBtnFace
      ParentColor = False
      TabOrder = 42
      OnClick = CheckBoxClick
    end
    object CheckBox38: TCheckBox
      Tag = 12
      Left = 366
      Top = 283
      Width = 79
      Height = 17
      Caption = 'Unknown'
      Color = clBtnFace
      ParentColor = False
      TabOrder = 46
      OnClick = CheckBoxClick
    end
    object CheckBox29: TCheckBox
      Tag = 13
      Left = 276
      Top = 307
      Width = 45
      Height = 17
      Caption = 'Yes'
      Color = clBtnFace
      ParentColor = False
      TabOrder = 48
      OnClick = CheckBoxClick
    end
    object CheckBox34: TCheckBox
      Tag = 13
      Left = 324
      Top = 307
      Width = 37
      Height = 17
      Caption = 'No'
      Color = clBtnFace
      ParentColor = False
      TabOrder = 49
      OnClick = CheckBoxClick
    end
    object CheckBox39: TCheckBox
      Tag = 13
      Left = 366
      Top = 307
      Width = 79
      Height = 17
      Caption = 'Unknown'
      Color = clBtnFace
      ParentColor = False
      TabOrder = 50
      OnClick = CheckBoxClick
    end
    object Edit1: TEdit
      Tag = 1
      Left = 440
      Top = 6
      Width = 337
      Height = 22
      Enabled = False
      TabOrder = 3
    end
    object Edit2: TEdit
      Tag = 2
      Left = 440
      Top = 40
      Width = 337
      Height = 22
      Enabled = False
      TabOrder = 7
    end
    object Edit3: TEdit
      Tag = 3
      Left = 440
      Top = 64
      Width = 337
      Height = 22
      Enabled = False
      TabOrder = 11
    end
    object Edit4: TEdit
      Tag = 4
      Left = 440
      Top = 88
      Width = 337
      Height = 22
      Enabled = False
      TabOrder = 15
    end
    object Edit5: TEdit
      Tag = 5
      Left = 440
      Top = 112
      Width = 337
      Height = 22
      Enabled = False
      TabOrder = 19
    end
    object Edit7: TEdit
      Tag = 7
      Left = 440
      Top = 160
      Width = 337
      Height = 22
      Enabled = False
      TabOrder = 27
    end
    object Edit6: TEdit
      Tag = 6
      Left = 440
      Top = 136
      Width = 337
      Height = 22
      Enabled = False
      TabOrder = 23
    end
    object Edit8: TEdit
      Tag = 8
      Left = 440
      Top = 184
      Width = 337
      Height = 22
      Enabled = False
      TabOrder = 31
    end
    object Edit9: TEdit
      Tag = 9
      Left = 440
      Top = 208
      Width = 337
      Height = 22
      Enabled = False
      TabOrder = 35
    end
    object Edit10: TEdit
      Tag = 10
      Left = 440
      Top = 231
      Width = 337
      Height = 22
      Enabled = False
      TabOrder = 39
    end
    object Edit11: TEdit
      Tag = 11
      Left = 440
      Top = 254
      Width = 337
      Height = 22
      Enabled = False
      TabOrder = 43
    end
    object Edit12: TEdit
      Tag = 12
      Left = 440
      Top = 277
      Width = 337
      Height = 22
      Enabled = False
      TabOrder = 47
    end
    object Edit13: TEdit
      Tag = 13
      Left = 440
      Top = 300
      Width = 337
      Height = 22
      Enabled = False
      TabOrder = 51
    end
  end
  object pnlheader: TPanel
    Left = 0
    Top = 0
    Width = 787
    Height = 35
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object ckNotInfectionHistory: TCheckBox
      Left = 11
      Top = 12
      Width = 138
      Height = 17
      Caption = 'No History of Infection'
      Color = clBtnFace
      ParentColor = False
      TabOrder = 0
      OnClick = ckNotInfectionHistoryClick
    end
  end
end
