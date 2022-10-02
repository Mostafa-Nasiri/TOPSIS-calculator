object Form1: TForm1
  Left = 356
  Top = 138
  BorderStyle = bsSingle
  Caption = 
    'TOPSIS calculator  By Mostafa Nasiri      -= nasirsoft@gmail.com' +
    ' =-'
  ClientHeight = 629
  ClientWidth = 1058
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 120
  TextHeight = 16
  object PageControl1: TPageControl
    Left = 30
    Top = 79
    Width = 1015
    Height = 523
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    ActivePage = TabSheet1
    BiDiMode = bdRightToLeftNoAlign
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Century Gothic'
    Font.Style = [fsBold]
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 0
    object TabSheet1: TTabSheet
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Input Data'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clDefault
      Font.Height = -14
      Font.Name = 'Century Gothic'
      Font.Style = []
      ParentFont = False
      object Label1: TLabel
        Left = 95
        Top = 6
        Width = 62
        Height = 19
        Caption = 'Colums'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clDefault
        Font.Height = -17
        Font.Name = 'Century Gothic'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = -1
        Top = 70
        Width = 43
        Height = 19
        Caption = 'Rows'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clDefault
        Font.Height = -17
        Font.Name = 'Century Gothic'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object sg1: TStringGrid
        Left = 49
        Top = 32
        Width = 937
        Height = 447
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        DefaultColWidth = 100
        FixedCols = 0
        FixedRows = 0
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -18
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goDrawFocusSelected, goEditing, goTabs, goThumbTracking]
        ParentFont = False
        TabOrder = 0
        RowHeights = (
          24
          24
          24
          24
          24)
      end
      object ccount: TSpinEdit
        Left = 49
        Top = 3
        Width = 40
        Height = 26
        Font.Charset = ANSI_CHARSET
        Font.Color = clDefault
        Font.Height = -13
        Font.Name = 'Century Gothic'
        Font.Style = [fsBold]
        MaxValue = 50
        MinValue = 3
        ParentFont = False
        TabOrder = 1
        Value = 3
        OnChange = ccountChange
      end
      object rCount: TSpinEdit
        Left = 3
        Top = 35
        Width = 40
        Height = 26
        Font.Charset = ANSI_CHARSET
        Font.Color = clDefault
        Font.Height = -13
        Font.Name = 'Century Gothic'
        Font.Style = [fsBold]
        MaxValue = 50
        MinValue = 3
        ParentFont = False
        TabOrder = 2
        Value = 3
        OnChange = rcountChange
      end
    end
    object TTabSheet
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Evaluation Matrix'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object sg2: TStringGrid
        Left = 10
        Top = 10
        Width = 986
        Height = 474
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        RowCount = 7
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -18
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goDrawFocusSelected, goEditing, goTabs, goThumbTracking]
        ParentFont = False
        TabOrder = 0
        ColWidths = (
          64
          64
          64
          64
          64)
      end
    end
    object TabSheet3: TTabSheet
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Entropy'
      ImageIndex = 2
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object BitBtn4: TBitBtn
        Left = 453
        Top = 49
        Width = 92
        Height = 31
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'BitBtn4'
        DoubleBuffered = True
        Enabled = False
        ParentDoubleBuffered = False
        TabOrder = 0
        Visible = False
        OnClick = BitBtn4Click
      end
      object asg1: TStringGrid
        Left = 10
        Top = 10
        Width = 986
        Height = 474
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        RowCount = 4
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -18
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
        ParentFont = False
        TabOrder = 1
      end
    end
    object TabSheet4: TTabSheet
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Normalized Matrix'
      ImageIndex = 3
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Button1: TButton
        Left = 502
        Top = 138
        Width = 92
        Height = 31
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'Button1'
        Enabled = False
        TabOrder = 1
        Visible = False
        OnClick = Button1Click
      end
      object Button2: TButton
        Left = 502
        Top = 59
        Width = 92
        Height = 31
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'max'
        Enabled = False
        TabOrder = 2
        Visible = False
        OnClick = Button2Click
      end
      object Button3: TButton
        Left = 502
        Top = 98
        Width = 92
        Height = 31
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'min'
        Enabled = False
        TabOrder = 3
        Visible = False
        OnClick = Button3Click
      end
      object sg3: TStringGrid
        Left = 10
        Top = 10
        Width = 986
        Height = 474
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -18
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
        ParentFont = False
        TabOrder = 0
      end
    end
    object TabSheet5: TTabSheet
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Determine Alternative'
      ImageIndex = 4
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object sg4: TStringGrid
        Left = 10
        Top = 10
        Width = 986
        Height = 474
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        RowCount = 3
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -18
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
        ParentFont = False
        TabOrder = 0
      end
    end
    object TabSheet6: TTabSheet
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Distance'
      ImageIndex = 5
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object ListBox1: TListBox
        Left = 384
        Top = 59
        Width = 149
        Height = 119
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        ImeName = 'US'
        ItemHeight = 19
        Items.Strings = (
          '3'
          '4'
          '5'
          '6'
          '8'
          '9')
        Sorted = True
        TabOrder = 2
        Visible = False
      end
      object Button4: TButton
        Left = 453
        Top = 39
        Width = 92
        Height = 41
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'Button4'
        TabOrder = 1
        Visible = False
        OnClick = Button4Click
      end
      object sg5: TStringGrid
        Left = 10
        Top = 10
        Width = 986
        Height = 474
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        ColCount = 4
        RowCount = 4
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -18
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
        ParentFont = False
        TabOrder = 0
      end
    end
    object TabSheet7: TTabSheet
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Result'
      ImageIndex = 6
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Memo1: TMemo
        Left = 10
        Top = 10
        Width = 986
        Height = 474
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -35
        Font.Name = 'Tahoma'
        Font.Style = []
        ImeName = 'US'
        ParentFont = False
        ScrollBars = ssBoth
        TabOrder = 0
      end
    end
  end
  object BitBtn1: TBitBtn
    Left = 30
    Top = 10
    Width = 172
    Height = 61
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Caption = 'Calculate'
    DoubleBuffered = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Century Gothic'
    Font.Style = [fsBold]
    Kind = bkOK
    ParentDoubleBuffered = False
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 862
    Top = 9
    Width = 187
    Height = 61
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Caption = 'SAMPLE DATA'
    DoubleBuffered = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Century Gothic'
    Font.Style = [fsBold]
    Kind = bkOK
    ParentDoubleBuffered = False
    ParentFont = False
    TabOrder = 2
    OnClick = BitBtn2Click
  end
  object BitBtn3: TBitBtn
    Left = 632
    Top = 10
    Width = 202
    Height = 61
    Caption = 'Clear Input Data'
    DoubleBuffered = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Century Gothic'
    Font.Style = [fsBold]
    Kind = bkCancel
    ParentDoubleBuffered = False
    ParentFont = False
    TabOrder = 3
    OnClick = BitBtn3Click
  end
  object XPManifest1: TXPManifest
    Left = 840
    Top = 8
  end
end
