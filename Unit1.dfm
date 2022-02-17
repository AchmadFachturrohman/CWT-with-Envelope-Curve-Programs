object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'CWT Program'
  ClientHeight = 327
  ClientWidth = 832
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 8
    Top = 8
    Width = 817
    Height = 320
    ActivePage = TabSheet1
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Sinyal Input'
      object Label3: TLabel
        Left = 3
        Top = 276
        Width = 3
        Height = 13
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Button1: TButton
        Left = 3
        Top = 3
        Width = 129
        Height = 38
        Caption = 'Baca Data'
        TabOrder = 0
        OnClick = Button1Click
      end
      object Chart1: TChart
        Left = 138
        Top = 3
        Width = 668
        Height = 286
        BackWall.Brush.Gradient.Direction = gdBottomTop
        BackWall.Brush.Gradient.EndColor = clWhite
        BackWall.Brush.Gradient.StartColor = 15395562
        BackWall.Brush.Gradient.Visible = True
        BackWall.Transparent = False
        Foot.Font.Color = clBlue
        Foot.Font.Name = 'Verdana'
        Gradient.Direction = gdBottomTop
        Gradient.EndColor = clWhite
        Gradient.MidColor = 15395562
        Gradient.StartColor = 15395562
        Gradient.Visible = True
        LeftWall.Color = 14745599
        Legend.CheckBoxes = True
        Legend.Font.Name = 'Verdana'
        Legend.Shadow.Transparency = 0
        RightWall.Color = 14745599
        Title.Font.Name = 'Verdana'
        Title.Text.Strings = (
          'Sinyal Input')
        Title.Visible = False
        BottomAxis.Axis.Color = 4210752
        BottomAxis.Grid.Color = 11119017
        BottomAxis.LabelsFormat.Font.Name = 'Verdana'
        BottomAxis.TicksInner.Color = 11119017
        BottomAxis.Title.Caption = 'Waktu [detik]'
        BottomAxis.Title.Font.Name = 'Verdana'
        DepthAxis.Axis.Color = 4210752
        DepthAxis.Grid.Color = 11119017
        DepthAxis.LabelsFormat.Font.Name = 'Verdana'
        DepthAxis.TicksInner.Color = 11119017
        DepthAxis.Title.Font.Name = 'Verdana'
        DepthTopAxis.Axis.Color = 4210752
        DepthTopAxis.Grid.Color = 11119017
        DepthTopAxis.LabelsFormat.Font.Name = 'Verdana'
        DepthTopAxis.TicksInner.Color = 11119017
        DepthTopAxis.Title.Font.Name = 'Verdana'
        LeftAxis.Axis.Color = 4210752
        LeftAxis.Grid.Color = 11119017
        LeftAxis.LabelsFormat.Font.Name = 'Verdana'
        LeftAxis.TicksInner.Color = 11119017
        LeftAxis.Title.Caption = 'Amplitudo'
        LeftAxis.Title.Font.Name = 'Verdana'
        RightAxis.Axis.Color = 4210752
        RightAxis.Grid.Color = 11119017
        RightAxis.LabelsFormat.Font.Name = 'Verdana'
        RightAxis.TicksInner.Color = 11119017
        RightAxis.Title.Font.Name = 'Verdana'
        TopAxis.Axis.Color = 4210752
        TopAxis.Grid.Color = 11119017
        TopAxis.LabelsFormat.Font.Name = 'Verdana'
        TopAxis.TicksInner.Color = 11119017
        TopAxis.Title.Font.Name = 'Verdana'
        View3D = False
        TabOrder = 1
        DefaultCanvas = 'TGDIPlusCanvas'
        ColorPaletteIndex = 0
        object Series1: TLineSeries
          HoverElement = [heCurrent]
          Legend.Text = 'Input'
          LegendTitle = 'Input'
          SeriesColor = clBlue
          Brush.BackColor = clDefault
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          XValues.Name = 'X'
          XValues.Order = loAscending
          YValues.Name = 'Y'
          YValues.Order = loNone
        end
        object Series6: TLineSeries
          HoverElement = [heCurrent]
          Legend.Text = 'Envelope'
          LegendTitle = 'Envelope'
          Brush.BackColor = clDefault
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          XValues.Name = 'X'
          XValues.Order = loAscending
          YValues.Name = 'Y'
          YValues.Order = loNone
        end
      end
      object Button5: TButton
        Left = 3
        Top = 235
        Width = 129
        Height = 35
        Caption = 'Hapus Semua'
        TabOrder = 2
        OnClick = Button5Click
      end
      object Button8: TButton
        Left = 3
        Top = 191
        Width = 129
        Height = 38
        Caption = 'Envelope'
        TabOrder = 3
        OnClick = Button8Click
      end
      object GroupBox1: TGroupBox
        Left = 3
        Top = 47
        Width = 129
        Height = 81
        Caption = 'Fc Input'
        TabOrder = 4
        object Label5: TLabel
          Left = 17
          Top = 23
          Width = 31
          Height = 13
          Caption = 'fc Low'
        end
        object Label6: TLabel
          Left = 15
          Top = 47
          Width = 33
          Height = 13
          Caption = 'fc High'
        end
        object Edit4: TEdit
          Left = 54
          Top = 20
          Width = 60
          Height = 21
          TabOrder = 0
          Text = '26'
        end
        object Edit5: TEdit
          Left = 54
          Top = 47
          Width = 60
          Height = 21
          TabOrder = 1
          Text = '90'
        end
      end
      object GroupBox2: TGroupBox
        Left = 3
        Top = 134
        Width = 129
        Height = 51
        Caption = 'Fc Envelope'
        TabOrder = 5
        object Label7: TLabel
          Left = 17
          Top = 20
          Width = 31
          Height = 13
          Caption = 'fc Low'
        end
        object Edit6: TEdit
          Left = 54
          Top = 20
          Width = 60
          Height = 21
          TabOrder = 0
          Text = '90'
        end
      end
    end
    object TabSheet7: TTabSheet
      Caption = 'CWT'
      ImageIndex = 1
      object Label1: TLabel
        Left = 3
        Top = 6
        Width = 25
        Height = 13
        Caption = 'Skala'
      end
      object Label2: TLabel
        Left = 3
        Top = 33
        Width = 53
        Height = 13
        Caption = 'Delta Skala'
      end
      object Label4: TLabel
        Left = 3
        Top = 60
        Width = 55
        Height = 13
        Caption = 'F. Sampling'
      end
      object Label8: TLabel
        Left = 3
        Top = 134
        Width = 3
        Height = 13
      end
      object Button2: TButton
        Left = 3
        Top = 224
        Width = 110
        Height = 65
        Caption = 'CWT'
        TabOrder = 0
        OnClick = Button2Click
      end
      object Edit1: TEdit
        Left = 62
        Top = 3
        Width = 51
        Height = 21
        TabOrder = 1
        Text = '0.01'
      end
      object Edit2: TEdit
        Left = 62
        Top = 30
        Width = 51
        Height = 21
        TabOrder = 2
        Text = '0.0009'
      end
      object ListBox1: TListBox
        Left = 467
        Top = 3
        Width = 339
        Height = 286
        ItemHeight = 13
        TabOrder = 3
      end
      object ListBox2: TListBox
        Left = 119
        Top = 3
        Width = 342
        Height = 286
        ItemHeight = 13
        TabOrder = 4
      end
      object Edit3: TEdit
        Left = 62
        Top = 57
        Width = 51
        Height = 21
        TabOrder = 5
        Text = '1000'
      end
      object RadioButton1: TRadioButton
        Left = 3
        Top = 84
        Width = 113
        Height = 17
        Caption = 'S1'
        TabOrder = 6
      end
      object RadioButton2: TRadioButton
        Left = 3
        Top = 107
        Width = 113
        Height = 17
        Caption = 'S2'
        TabOrder = 7
      end
      object Button9: TButton
        Left = 3
        Top = 153
        Width = 110
        Height = 65
        Caption = 'Segmentasi'
        TabOrder = 8
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Plot Contour'
      ImageIndex = 2
      object Button3: TButton
        Left = 3
        Top = 3
        Width = 75
        Height = 286
        Caption = 'Plot Contour'
        TabOrder = 0
        OnClick = Button3Click
      end
      object Chart2: TChart
        Left = 84
        Top = 3
        Width = 722
        Height = 286
        BackWall.Brush.Gradient.Direction = gdBottomTop
        BackWall.Brush.Gradient.EndColor = clWhite
        BackWall.Brush.Gradient.StartColor = 15395562
        BackWall.Brush.Gradient.Visible = True
        BackWall.Transparent = False
        Foot.Font.Color = clBlue
        Foot.Font.Name = 'Verdana'
        Gradient.Direction = gdBottomTop
        Gradient.EndColor = clWhite
        Gradient.MidColor = 15395562
        Gradient.StartColor = 15395562
        Gradient.Visible = True
        LeftWall.Color = 14745599
        Legend.Font.Name = 'Verdana'
        Legend.Shadow.Transparency = 0
        RightWall.Color = 14745599
        Title.Font.Name = 'Verdana'
        Title.Text.Strings = (
          'Contour CWT')
        BottomAxis.Axis.Color = 4210752
        BottomAxis.Grid.Color = 11119017
        BottomAxis.LabelsFormat.Font.Name = 'Verdana'
        BottomAxis.TicksInner.Color = 11119017
        BottomAxis.Title.Font.Name = 'Verdana'
        Chart3DPercent = 48
        DepthAxis.Axis.Color = 4210752
        DepthAxis.Grid.Color = 11119017
        DepthAxis.LabelsFormat.Font.Name = 'Verdana'
        DepthAxis.TicksInner.Color = 11119017
        DepthAxis.Title.Angle = 90
        DepthAxis.Title.Caption = 'skala [Hz]'
        DepthAxis.Title.Font.Name = 'Verdana'
        DepthAxis.Visible = True
        DepthTopAxis.Axis.Color = 4210752
        DepthTopAxis.Grid.Color = 11119017
        DepthTopAxis.LabelsFormat.Font.Name = 'Verdana'
        DepthTopAxis.TicksInner.Color = 11119017
        DepthTopAxis.Title.Font.Name = 'Verdana'
        LeftAxis.Axis.Color = 4210752
        LeftAxis.Grid.Color = 11119017
        LeftAxis.LabelsFormat.Font.Name = 'Verdana'
        LeftAxis.TicksInner.Color = 11119017
        LeftAxis.Title.Font.Name = 'Verdana'
        LeftAxis.Visible = False
        RightAxis.Axis.Color = 4210752
        RightAxis.Grid.Color = 11119017
        RightAxis.LabelsFormat.Font.Name = 'Verdana'
        RightAxis.TicksInner.Color = 11119017
        RightAxis.Title.Font.Name = 'Verdana'
        TopAxis.Axis.Color = 4210752
        TopAxis.Grid.Color = 11119017
        TopAxis.LabelsFormat.Font.Name = 'Verdana'
        TopAxis.TicksInner.Color = 11119017
        TopAxis.Title.Font.Name = 'Verdana'
        View3DOptions.Elevation = 270
        View3DOptions.Orthogonal = False
        View3DOptions.Rotation = 0
        View3DOptions.Zoom = 102
        TabOrder = 1
        DefaultCanvas = 'TTeeCanvas3D'
        PrintMargins = (
          15
          19
          15
          19)
        ColorPaletteIndex = 0
        object Series2: TSurfaceSeries
          HoverElement = []
          Selected.Hover.Visible = False
          Marks.Transparent = True
          Pen.Visible = False
          PaletteStyle = psRainbow
          SideBrush.Style = bsClear
          UseColorRange = False
          UsePalette = True
          XValues.Name = 'X'
          XValues.Order = loNone
          YValues.Name = 'Y'
          YValues.Order = loNone
          ZValues.Name = 'Z'
          ZValues.Order = loNone
        end
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Plot 3D'
      ImageIndex = 3
      object Button4: TButton
        Left = 3
        Top = 3
        Width = 75
        Height = 286
        Caption = 'Plot 3D'
        TabOrder = 0
        OnClick = Button4Click
      end
      object Chart3: TChart
        Left = 84
        Top = 3
        Width = 722
        Height = 286
        BackWall.Brush.Gradient.Direction = gdBottomTop
        BackWall.Brush.Gradient.EndColor = clWhite
        BackWall.Brush.Gradient.StartColor = 15395562
        BackWall.Brush.Gradient.Visible = True
        BackWall.Transparent = False
        Foot.Font.Color = clBlue
        Foot.Font.Name = 'Verdana'
        Gradient.Direction = gdBottomTop
        Gradient.EndColor = clWhite
        Gradient.MidColor = 15395562
        Gradient.StartColor = 15395562
        Gradient.Visible = True
        LeftWall.Color = 14745599
        Legend.Font.Name = 'Verdana'
        Legend.Shadow.Transparency = 0
        RightWall.Color = 14745599
        Title.Font.Name = 'Verdana'
        Title.Text.Strings = (
          'CWT 3D Surface')
        Title.Visible = False
        BottomAxis.Axis.Color = 4210752
        BottomAxis.Grid.Color = 11119017
        BottomAxis.LabelsFormat.Font.Name = 'Verdana'
        BottomAxis.TicksInner.Color = 11119017
        BottomAxis.Title.Caption = 'waktu [detik]'
        BottomAxis.Title.Font.Name = 'Verdana'
        Chart3DPercent = 47
        DepthAxis.Axis.Color = 4210752
        DepthAxis.Grid.Color = 11119017
        DepthAxis.LabelsFormat.Font.Name = 'Verdana'
        DepthAxis.TicksInner.Color = 11119017
        DepthAxis.Title.Angle = 360
        DepthAxis.Title.Caption = 'skala [Hz]'
        DepthAxis.Title.Font.Name = 'Verdana'
        DepthAxis.Visible = True
        DepthTopAxis.Axis.Color = 4210752
        DepthTopAxis.Grid.Color = 11119017
        DepthTopAxis.LabelsFormat.Font.Name = 'Verdana'
        DepthTopAxis.TicksInner.Color = 11119017
        DepthTopAxis.Title.Font.Name = 'Verdana'
        LeftAxis.Axis.Color = 4210752
        LeftAxis.Grid.Color = 11119017
        LeftAxis.LabelsFormat.Font.Name = 'Verdana'
        LeftAxis.TicksInner.Color = 11119017
        LeftAxis.Title.Caption = 'Magnitudo'
        LeftAxis.Title.Font.Name = 'Verdana'
        RightAxis.Axis.Color = 4210752
        RightAxis.Grid.Color = 11119017
        RightAxis.LabelsFormat.Font.Name = 'Verdana'
        RightAxis.TicksInner.Color = 11119017
        RightAxis.Title.Font.Name = 'Verdana'
        TopAxis.Axis.Color = 4210752
        TopAxis.Grid.Color = 11119017
        TopAxis.LabelsFormat.Font.Name = 'Verdana'
        TopAxis.TicksInner.Color = 11119017
        TopAxis.Title.Font.Name = 'Verdana'
        View3DOptions.Zoom = 102
        TabOrder = 1
        DefaultCanvas = 'TGDIPlusCanvas'
        ColorPaletteIndex = 13
        object Series3: TSurfaceSeries
          HoverElement = []
          Selected.Hover.Visible = False
          MidColor = clLime
          Pen.Visible = False
          PaletteStyle = psRainbow
          SideBrush.Style = bsClear
          UseColorRange = False
          UsePalette = True
          XValues.Name = 'X'
          XValues.Order = loNone
          YValues.Name = 'Y'
          YValues.Order = loNone
          ZValues.Name = 'Z'
          ZValues.Order = loNone
        end
        object ChartTool2: TRotateTool
          Pen.Color = clWhite
          Pen.Mode = pmXor
        end
      end
    end
    object TabSheet5: TTabSheet
      Caption = 'Uji Sinyal Sinus'
      ImageIndex = 4
      object Button6: TButton
        Left = 3
        Top = 3
        Width = 75
        Height = 286
        Caption = 'Proses'
        TabOrder = 0
        OnClick = Button6Click
      end
      object Chart4: TChart
        Left = 84
        Top = 3
        Width = 722
        Height = 286
        BackWall.Brush.Gradient.Direction = gdBottomTop
        BackWall.Brush.Gradient.EndColor = clWhite
        BackWall.Brush.Gradient.StartColor = 15395562
        BackWall.Brush.Gradient.Visible = True
        BackWall.Transparent = False
        Foot.Font.Color = clBlue
        Foot.Font.Name = 'Verdana'
        Gradient.Direction = gdBottomTop
        Gradient.EndColor = clWhite
        Gradient.MidColor = 15395562
        Gradient.StartColor = 15395562
        Gradient.Visible = True
        LeftWall.Color = 14745599
        Legend.Font.Name = 'Verdana'
        Legend.Shadow.Transparency = 0
        Legend.Visible = False
        RightWall.Color = 14745599
        Title.Font.Name = 'Verdana'
        Title.Text.Strings = (
          'TChart')
        Title.Visible = False
        BottomAxis.Axis.Color = 4210752
        BottomAxis.Grid.Color = 11119017
        BottomAxis.LabelsFormat.Font.Name = 'Verdana'
        BottomAxis.TicksInner.Color = 11119017
        BottomAxis.Title.Font.Name = 'Verdana'
        DepthAxis.Axis.Color = 4210752
        DepthAxis.Grid.Color = 11119017
        DepthAxis.LabelsFormat.Font.Name = 'Verdana'
        DepthAxis.TicksInner.Color = 11119017
        DepthAxis.Title.Font.Name = 'Verdana'
        DepthTopAxis.Axis.Color = 4210752
        DepthTopAxis.Grid.Color = 11119017
        DepthTopAxis.LabelsFormat.Font.Name = 'Verdana'
        DepthTopAxis.TicksInner.Color = 11119017
        DepthTopAxis.Title.Font.Name = 'Verdana'
        LeftAxis.Axis.Color = 4210752
        LeftAxis.Grid.Color = 11119017
        LeftAxis.LabelsFormat.Font.Name = 'Verdana'
        LeftAxis.TicksInner.Color = 11119017
        LeftAxis.Title.Font.Name = 'Verdana'
        RightAxis.Axis.Color = 4210752
        RightAxis.Grid.Color = 11119017
        RightAxis.LabelsFormat.Font.Name = 'Verdana'
        RightAxis.TicksInner.Color = 11119017
        RightAxis.Title.Font.Name = 'Verdana'
        TopAxis.Axis.Color = 4210752
        TopAxis.Grid.Color = 11119017
        TopAxis.LabelsFormat.Font.Name = 'Verdana'
        TopAxis.TicksInner.Color = 11119017
        TopAxis.Title.Font.Name = 'Verdana'
        View3D = False
        TabOrder = 1
        DefaultCanvas = 'TGDIPlusCanvas'
        ColorPaletteIndex = 0
        object Series4: TLineSeries
          HoverElement = [heCurrent]
          Brush.BackColor = clDefault
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          XValues.Name = 'X'
          XValues.Order = loAscending
          YValues.Name = 'Y'
          YValues.Order = loNone
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'DFT'
      ImageIndex = 5
      object Button7: TButton
        Left = 3
        Top = 3
        Width = 75
        Height = 286
        Caption = 'Proses'
        TabOrder = 0
        OnClick = Button7Click
      end
      object Chart5: TChart
        Left = 84
        Top = 3
        Width = 722
        Height = 286
        BackWall.Brush.Gradient.Direction = gdBottomTop
        BackWall.Brush.Gradient.EndColor = clWhite
        BackWall.Brush.Gradient.StartColor = 15395562
        BackWall.Brush.Gradient.Visible = True
        BackWall.Transparent = False
        Foot.Font.Color = clBlue
        Foot.Font.Name = 'Verdana'
        Gradient.Direction = gdBottomTop
        Gradient.EndColor = clWhite
        Gradient.MidColor = 15395562
        Gradient.StartColor = 15395562
        Gradient.Visible = True
        LeftWall.Color = 14745599
        Legend.Font.Name = 'Verdana'
        Legend.Shadow.Transparency = 0
        Legend.Visible = False
        RightWall.Color = 14745599
        Title.Font.Name = 'Verdana'
        Title.Text.Strings = (
          'Spektrum DFT')
        BottomAxis.Axis.Color = 4210752
        BottomAxis.Grid.Color = 11119017
        BottomAxis.LabelsFormat.Font.Name = 'Verdana'
        BottomAxis.TicksInner.Color = 11119017
        BottomAxis.Title.Caption = 'Frekuensi [Hz]'
        BottomAxis.Title.Font.Name = 'Verdana'
        DepthAxis.Axis.Color = 4210752
        DepthAxis.Grid.Color = 11119017
        DepthAxis.LabelsFormat.Font.Name = 'Verdana'
        DepthAxis.TicksInner.Color = 11119017
        DepthAxis.Title.Font.Name = 'Verdana'
        DepthTopAxis.Axis.Color = 4210752
        DepthTopAxis.Grid.Color = 11119017
        DepthTopAxis.LabelsFormat.Font.Name = 'Verdana'
        DepthTopAxis.TicksInner.Color = 11119017
        DepthTopAxis.Title.Font.Name = 'Verdana'
        LeftAxis.Axis.Color = 4210752
        LeftAxis.Grid.Color = 11119017
        LeftAxis.LabelsFormat.Font.Name = 'Verdana'
        LeftAxis.TicksInner.Color = 11119017
        LeftAxis.Title.Caption = 'Amplitudo Spektrum'
        LeftAxis.Title.Font.Name = 'Verdana'
        RightAxis.Axis.Color = 4210752
        RightAxis.Grid.Color = 11119017
        RightAxis.LabelsFormat.Font.Name = 'Verdana'
        RightAxis.TicksInner.Color = 11119017
        RightAxis.Title.Font.Name = 'Verdana'
        TopAxis.Axis.Color = 4210752
        TopAxis.Grid.Color = 11119017
        TopAxis.LabelsFormat.Font.Name = 'Verdana'
        TopAxis.TicksInner.Color = 11119017
        TopAxis.Title.Font.Name = 'Verdana'
        View3D = False
        TabOrder = 1
        DefaultCanvas = 'TGDIPlusCanvas'
        ColorPaletteIndex = 13
        object Series5: TBarSeries
          HoverElement = []
          Marks.Visible = False
          SeriesColor = clBlue
          XValues.Name = 'X'
          XValues.Order = loAscending
          YValues.Name = 'Bar'
          YValues.Order = loNone
        end
      end
    end
  end
  object OpenDialog1: TOpenDialog
    Left = 456
  end
  object TeeGDIPlus1: TTeeGDIPlus
    Active = True
    TeePanel = Chart3
    Left = 488
  end
  object TeeGDIPlus2: TTeeGDIPlus
    TeePanel = Chart2
    Left = 520
  end
end
