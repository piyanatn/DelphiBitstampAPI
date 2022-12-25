unit RootUnit;

interface

uses
  Pkg.Json.DTO, System.Generics.Collections, REST.Json.Types;

{$M+}

type
  TRoot = class(TJsonDTO)
  private
    FAsk: string;
    FBId: string;
    FHigh: string;
    FLast: string;
    FLow: string;
    FOpen: string;
    [JSONName('open_24')]
    FOpen24: string;
    [JSONName('percent_change_24')]
    FPercentChange24: string;
    FTimestamp: string;
    FVolume: string;
    FVwap: string;
  published
    property Ask: string read FAsk write FAsk;
    property BId: string read FBId write FBId;
    property High: string read FHigh write FHigh;
    property Last: string read FLast write FLast;
    property Low: string read FLow write FLow;
    property Open: string read FOpen write FOpen;
    property Open24: string read FOpen24 write FOpen24;
    property PercentChange24: string read FPercentChange24 write FPercentChange24;
    property Timestamp: string read FTimestamp write FTimestamp;
    property Volume: string read FVolume write FVolume;
    property Vwap: string read FVwap write FVwap;
  end;
  
implementation

end.
