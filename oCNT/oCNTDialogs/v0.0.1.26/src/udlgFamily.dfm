object dlgFamily: TdlgFamily
  Tag = 4
  Left = 192
  Top = 175
  BorderStyle = bsDialog
  ClientHeight = 601
  ClientWidth = 702
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  Scaled = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object spDateSelect: TSpeedButton
    Tag = 3
    Left = 273
    Top = 240
    Width = 25
    Height = 25
    Hint = 'Pick Date From Calendar'
    Flat = True
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      33333FFFFFFFFFFFFFFF000000000000000077777777777777770FF7FF7FF7FF
      7FF07FF7FF7FF7F37F3709F79F79F7FF7FF077F77F77F7FF7FF7077777777777
      777077777777777777770FF7FF7FF7FF7FF07FF7FF7FF7FF7FF709F79F79F79F
      79F077F77F77F77F77F7077777777777777077777777777777770FF7FF7FF7FF
      7FF07FF7FF7FF7FF7FF709F79F79F79F79F077F77F77F77F77F7077777777777
      777077777777777777770FFFFF7FF7FF7FF07F33337FF7FF7FF70FFFFF79F79F
      79F07FFFFF77F77F77F700000000000000007777777777777777CCCCCC8888CC
      CCCC777777FFFF777777CCCCCCCCCCCCCCCC7777777777777777}
    NumGlyphs = 2
    ParentShowHint = False
    ShowHint = True
    OnClick = spDateSelectClick
  end
  object Label2: TLabel
    Left = 41
    Top = 76
    Width = 57
    Height = 14
    Caption = 'Diagnosis:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label1: TLabel
    Left = 27
    Top = 48
    Width = 71
    Height = 14
    Caption = 'Relationship:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 237
    Top = 308
    Width = 28
    Height = 14
    Caption = 'State:'
  end
  object lvPersonList: TListView
    Left = 41
    Top = 399
    Width = 619
    Height = 130
    Columns = <>
    RowSelect = True
    TabOrder = 26
    TabStop = False
    ViewStyle = vsReport
    Visible = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 702
    Height = 31
    Align = alTop
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGray
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object lbltitle: TLabel
      Left = 4
      Top = 4
      Width = 155
      Height = 20
      Caption = 'Family Assessment'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object Panel2: TPanel
    Tag = 19641
    Left = 0
    Top = 572
    Width = 702
    Height = 29
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 25
    object bbtnOK: TBitBtn
      Left = 544
      Top = 2
      Width = 75
      Height = 25
      Kind = bkOK
      NumGlyphs = 2
      TabOrder = 0
      OnClick = bbtnOKClick
    end
    object bbtnCancel: TBitBtn
      Left = 625
      Top = 2
      Width = 75
      Height = 25
      Kind = bkCancel
      NumGlyphs = 2
      TabOrder = 1
    end
  end
  object memFamily: TMemo
    Left = 0
    Top = 368
    Width = 702
    Height = 204
    Align = alBottom
    ReadOnly = True
    ScrollBars = ssBoth
    TabOrder = 24
  end
  object btnDAdd: TButton
    Left = 336
    Top = 101
    Width = 49
    Height = 22
    Caption = 'Add'
    TabOrder = 6
    OnClick = btnDAddClick
  end
  object btnDDelete: TButton
    Left = 336
    Top = 140
    Width = 49
    Height = 22
    Caption = 'Delete'
    TabOrder = 7
    OnClick = btnDDeleteClick
  end
  object ListBox: TListBox
    Left = 104
    Top = 101
    Width = 226
    Height = 61
    ItemHeight = 14
    TabOrder = 5
  end
  object ledcomments: TLabeledEdit
    Left = 104
    Top = 168
    Width = 577
    Height = 22
    EditLabel.Width = 53
    EditLabel.Height = 14
    EditLabel.Caption = 'Comments:'
    EditLabel.Color = clBtnFace
    EditLabel.ParentColor = False
    LabelPosition = lpLeft
    TabOrder = 8
  end
  object leddatebirth: TLabeledEdit
    Left = 104
    Top = 242
    Width = 167
    Height = 22
    EditLabel.Width = 63
    EditLabel.Height = 14
    EditLabel.Caption = 'Date of Birth:'
    EditLabel.Font.Charset = DEFAULT_CHARSET
    EditLabel.Font.Color = clWindowText
    EditLabel.Font.Height = -11
    EditLabel.Font.Name = 'Arial'
    EditLabel.Font.Style = []
    EditLabel.ParentFont = False
    LabelPosition = lpLeft
    TabOrder = 11
  end
  object cobdx: TComboBox
    Left = 104
    Top = 73
    Width = 226
    Height = 22
    TabOrder = 4
    Items.Strings = (
      'Arthritis'
      'Asthma'
      'Bleeding Tendency'
      'Cancer'
      'Colitis'
      'Congenital Heart Disease'
      'Depression'
      'Diabetes'
      'Dyslipidemia'
      'Epilepsy'
      'Goiter'
      'Hay Fever'
      'Heart Attack'
      'High Blood Pressure'
      'Hypothyroidism for Goiter'
      'Kidney Disease'
      'Leukemia'
      'Migraine'
      'Rheumatic Heart Disease'
      'Stomach Ulcers'
      'Stroke'
      'Suicide'
      'Tuberculosis')
  end
  object cbdead: TCheckBox
    Tag = 5
    Left = 393
    Top = 48
    Width = 75
    Height = 17
    Caption = 'Deceased'
    TabOrder = 3
    OnClick = ToggleCB
  end
  object cblive: TCheckBox
    Tag = 1
    Left = 336
    Top = 48
    Width = 53
    Height = 17
    Caption = 'Living'
    TabOrder = 2
    OnClick = ToggleCB
  end
  object cobfammem: TComboBox
    Left = 104
    Top = 45
    Width = 226
    Height = 22
    TabOrder = 1
  end
  object btnAdd: TBitBtn
    Left = 606
    Top = 330
    Width = 75
    Height = 25
    Caption = '&Add'
    Default = True
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
    NumGlyphs = 2
    TabOrder = 23
    OnClick = btnAddClick
  end
  object spnEducation: TSpinEdit
    Left = 340
    Top = 242
    Width = 49
    Height = 23
    Hint = 'Years of Education'
    MaxValue = 0
    MinValue = 0
    TabOrder = 13
    Value = 0
    OnChange = spnEducationChange
  end
  object lblEducation: TStaticText
    Left = 340
    Top = 222
    Width = 100
    Height = 18
    Caption = 'Years of Education:'
    TabOrder = 12
  end
  object edtAddr1: TLabeledEdit
    Left = 104
    Top = 277
    Width = 121
    Height = 22
    EditLabel.Width = 85
    EditLabel.Height = 14
    EditLabel.Caption = 'Street Address 1:'
    LabelPosition = lpLeft
    TabOrder = 14
  end
  object edtAddr2: TLabeledEdit
    Left = 104
    Top = 305
    Width = 121
    Height = 22
    EditLabel.Width = 85
    EditLabel.Height = 14
    EditLabel.Caption = 'Street Address 2:'
    LabelPosition = lpLeft
    TabOrder = 15
  end
  object edtAddr3: TLabeledEdit
    Left = 104
    Top = 333
    Width = 121
    Height = 22
    EditLabel.Width = 85
    EditLabel.Height = 14
    EditLabel.Caption = 'Street Address 3:'
    LabelPosition = lpLeft
    TabOrder = 16
  end
  object edtAddrcity: TLabeledEdit
    Left = 268
    Top = 277
    Width = 121
    Height = 22
    EditLabel.Width = 21
    EditLabel.Height = 14
    EditLabel.Caption = 'City:'
    LabelPosition = lpLeft
    TabOrder = 17
  end
  object edtAddrzip: TLabeledEdit
    Left = 268
    Top = 333
    Width = 121
    Height = 22
    EditLabel.Width = 18
    EditLabel.Height = 14
    EditLabel.Caption = 'Zip:'
    LabelPosition = lpLeft
    NumbersOnly = True
    TabOrder = 19
  end
  object edtPhoneH: TLabeledEdit
    Left = 470
    Top = 277
    Width = 121
    Height = 22
    EditLabel.Width = 71
    EditLabel.Height = 14
    EditLabel.Caption = 'Phone (Home):'
    LabelPosition = lpLeft
    TabOrder = 20
  end
  object edtPhoneC: TLabeledEdit
    Left = 470
    Top = 305
    Width = 121
    Height = 22
    EditLabel.Width = 61
    EditLabel.Height = 14
    EditLabel.Caption = 'Phone (Cell):'
    LabelPosition = lpLeft
    TabOrder = 21
  end
  object edtPhoneW: TLabeledEdit
    Left = 470
    Top = 333
    Width = 121
    Height = 22
    EditLabel.Width = 69
    EditLabel.Height = 14
    EditLabel.Caption = 'Phone (Work):'
    LabelPosition = lpLeft
    TabOrder = 22
  end
  object cbAddrstate: TComboBox
    Left = 268
    Top = 305
    Width = 121
    Height = 22
    TabOrder = 18
  end
  object cbName: TComboBox
    Left = 104
    Top = 214
    Width = 194
    Height = 22
    Hint = 'Name (LastName,FirstName)'
    TabOrder = 10
    OnChange = cbNameChange
  end
  object lblName: TStaticText
    Left = 104
    Top = 196
    Width = 144
    Height = 18
    Caption = 'Name (LastName,FirstName):'
    TabOrder = 9
  end
end
