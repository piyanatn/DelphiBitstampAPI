unit MainU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.Net.URLClient,
  System.Net.HttpClient, System.Net.HttpClientComponent, Vcl.StdCtrls,
  Vcl.ExtCtrls;

type
  TMainForm = class(TForm)
    TxtLastValue: TLabeledEdit;
    TxtHightValue: TLabeledEdit;
    TxtLowValue: TLabeledEdit;
    TxtVwapValue: TLabeledEdit;
    TxtValumeValue: TLabeledEdit;
    TxtBidValue: TLabeledEdit;
    TxtAskValue: TLabeledEdit;
    TxtTimeStampValue: TLabeledEdit;
    TxtOpenValue: TLabeledEdit;
    TxtOpen24Value: TLabeledEdit;
    TxtPercentValue: TLabeledEdit;
    NetHTTPClient1: TNetHTTPClient;
    NetHTTPRequest1: TNetHTTPRequest;
    Button1: TButton;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;

implementation

{$R *.dfm}

uses Pkg.Json.DTO, RootUnit;


procedure TMainForm.Button1Click(Sender: TObject);
var
  Res : IHTTPResponse;
  BitCoin : TRoot;
begin

    BitCoin := TRoot.Create();
    Res:= NetHTTPRequest1.get('https://www.bitstamp.net/api/v2/ticker/btcusd');
    BitCoin.AsJson := Res.ContentAsString;

    TxtLastValue.Text := BitCoin.Last;
    TxtHightValue.Text := BitCoin.High;

    TxtLastValue.Text     := BitCoin.Last;
    TxtHightValue.Text    := BitCoin.High;
    TxtLowValue.Text      := BitCoin.Low;
    TxtVwapValue.Text     := BitCoin.Vwap;
    TxtValumeValue.Text   := BitCoin.Volume;
    TxtBidValue.Text      := BitCoin.BId;
    TxtAskValue.Text      := BitCoin.Ask;
    TxtTimeStampValue.Text:= BitCoin.Timestamp;
    TxtOpenValue.Text     := BitCoin.Open;
    TxtOpen24Value.Text   := BitCoin.Open24;
    TxtPercentValue.Text  := BitCoin.PercentChange24;

end;

end.
