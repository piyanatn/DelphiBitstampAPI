object MainForm: TMainForm
  Left = 0
  Top = 0
  Caption = 'Main'
  ClientHeight = 387
  ClientWidth = 459
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 32
    Top = 8
    Width = 68
    Height = 28
    Caption = 'btcusd'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -23
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object TxtLastValue: TLabeledEdit
    Left = 32
    Top = 64
    Width = 121
    Height = 21
    EditLabel.Width = 17
    EditLabel.Height = 13
    EditLabel.Caption = 'last'
    TabOrder = 0
  end
  object TxtHightValue: TLabeledEdit
    Left = 32
    Top = 104
    Width = 121
    Height = 21
    EditLabel.Width = 24
    EditLabel.Height = 13
    EditLabel.Caption = 'hight'
    TabOrder = 1
  end
  object TxtLowValue: TLabeledEdit
    Left = 32
    Top = 144
    Width = 121
    Height = 21
    EditLabel.Width = 16
    EditLabel.Height = 13
    EditLabel.Caption = 'low'
    TabOrder = 2
  end
  object TxtVwapValue: TLabeledEdit
    Left = 32
    Top = 184
    Width = 121
    Height = 21
    EditLabel.Width = 26
    EditLabel.Height = 13
    EditLabel.Caption = 'vwap'
    TabOrder = 3
  end
  object TxtValumeValue: TLabeledEdit
    Left = 32
    Top = 224
    Width = 121
    Height = 21
    EditLabel.Width = 34
    EditLabel.Height = 13
    EditLabel.Caption = 'volume'
    TabOrder = 4
  end
  object TxtBidValue: TLabeledEdit
    Left = 32
    Top = 264
    Width = 121
    Height = 21
    EditLabel.Width = 14
    EditLabel.Height = 13
    EditLabel.Caption = 'bid'
    TabOrder = 5
  end
  object TxtAskValue: TLabeledEdit
    Left = 232
    Top = 64
    Width = 121
    Height = 21
    EditLabel.Width = 16
    EditLabel.Height = 13
    EditLabel.Caption = 'ask'
    TabOrder = 6
  end
  object TxtTimeStampValue: TLabeledEdit
    Left = 232
    Top = 104
    Width = 121
    Height = 21
    EditLabel.Width = 49
    EditLabel.Height = 13
    EditLabel.Caption = 'timestamp'
    TabOrder = 7
  end
  object TxtOpenValue: TLabeledEdit
    Left = 232
    Top = 144
    Width = 121
    Height = 21
    EditLabel.Width = 24
    EditLabel.Height = 13
    EditLabel.Caption = 'open'
    TabOrder = 8
  end
  object TxtOpen24Value: TLabeledEdit
    Left = 232
    Top = 184
    Width = 121
    Height = 21
    EditLabel.Width = 42
    EditLabel.Height = 13
    EditLabel.Caption = 'open_24'
    TabOrder = 9
  end
  object TxtPercentValue: TLabeledEdit
    Left = 232
    Top = 224
    Width = 121
    Height = 21
    EditLabel.Width = 96
    EditLabel.Height = 13
    EditLabel.Caption = 'percent_change_24'
    TabOrder = 10
  end
  object Button1: TButton
    Left = 232
    Top = 262
    Width = 75
    Height = 25
    Caption = 'Load'
    TabOrder = 11
    OnClick = Button1Click
  end
  object NetHTTPClient1: TNetHTTPClient
    Asynchronous = False
    ConnectionTimeout = 60000
    ResponseTimeout = 60000
    HandleRedirects = True
    AllowCookies = True
    ContentType = 'application/json'
    UserAgent = 'Embarcadero URI Client/1.0'
    Left = 272
    Top = 328
  end
  object NetHTTPRequest1: TNetHTTPRequest
    Asynchronous = False
    ConnectionTimeout = 60000
    ResponseTimeout = 60000
    Client = NetHTTPClient1
    Left = 344
    Top = 328
  end
end
