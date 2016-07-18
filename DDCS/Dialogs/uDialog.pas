unit uDialog;

{
   Licensed under the Apache License, Version 2.0 (the "License");
   you may not use this file except in compliance with the License.
   You may obtain a copy of the License at

       http://www.apache.org/licenses/LICENSE-2.0

   Unless required by applicable law or agreed to in writing, software
   distributed under the License is distributed on an "AS IS" BASIS,
   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
   See the License for the specific language governing permissions and
   limitations under the License.

     Developer: Theodore Fontana
   VA Contract: TAC-13-06464
}

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Classes,
  System.Character, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  Vcl.ExtCtrls, Vcl.ComCtrls, uBase, uCommon, uReportItems, uExtndComBroker;

Type
  TConfigItem = class(TCollectionItem)
  private
    FData: TStringList;
    FID1,FID2,FID3: string;
    procedure SetValue(Index: Integer; Value: string);
    procedure SetPiece(Index: Integer; Value: string);
    function GetValue(Index: Integer): string;
    function GetPiece(Index: Integer): string;
  public
    constructor Create(Collection: TCollection); override;
    destructor Destroy; override;
    property ID[Index: Integer]: string read GetValue write SetValue;
    property Piece[Index: Integer]: string read GetPiece write SetPiece;
    property Data: TStringList read FData write FData;
  end;

  TConfigCollection = class(TOwnedCollection)
  private
    FDelimiter: Char;
    FPieces1,FPieces2,FPieces3: Integer;
    procedure SetValue(Index: Integer; Value: Integer);
    procedure SetItem(Index: Integer; Value: TConfigItem);
    function GetValue(Index: Integer): Integer;
    function GetCount: Integer;
    function GetItem(Index: Integer): TConfigItem; overload;
  public
    procedure GetCollectiveText(var oText: TStringList);
    function Add: TConfigItem; overload;
    function Insert(Index: Integer): TConfigItem;
    function LookUp(p1,p2,p3: string): TConfigItem;
    function ValidPieces(p1,p2,p3: string): Boolean;
    property Pieces[Index: Integer]: Integer read GetValue write SetValue;
    property TotalIDPieces: Integer read GetCount;
    property Delimiter: Char read FDelimiter write FDelimiter default '^';
    property Items[Index: Integer]: TConfigItem read GetItem write SetItem;
  end;

  TDDCSDialog = class(TForm)
  private
    FDDCSForm: TDDCSForm;
    FConfiguration: TConfigCollection;
    FReportCollection: TDDCSNoteCollection;
    FReturnList: TStringList;
    FDebugMode: Boolean;
    FIEN: string;
    procedure SetConfigCollection(const Value: TConfigCollection);
    procedure SetNoteCollection(const Value: TDDCSNoteCollection);
    procedure cbAutoWidth(Sender: TObject);
    procedure RadioGroupEnter(Sender: TObject);
    procedure ActiveControlChanged(Sender: TObject);
  protected
    procedure Notification(AComponent: TComponent; Operation: TOperation); override;
  public
    constructor Create; overload;
    constructor Create(AOwner: PDDCSForm; Broker: PCPRSComBroker; DebugMode: Boolean; iIEN: string); overload;
    destructor Destroy; override;
    procedure SayOnFocus(wControl: TWinControl; tSay: string);
    procedure Save;
    property DDCSForm: TDDCSForm read FDDCSForm;
    property TmpStrList: TStringList read FReturnList write FReturnList;
    property DebugMode: Boolean read FDebugMode write FDebugMode;
    property IEN: string read FIEN write FIEN;
    property Configuration: TConfigCollection read FConfiguration write SetConfigCollection;
  published
    property ReportCollection: TDDCSNoteCollection read FReportCollection write SetNoteCollection;
  end;

  TDialogClass = class of TDDCSDialog;

  procedure Register;

implementation

procedure Register;
begin
  RegisterClass(TDDCSDialog);
end;

{$REGION 'TConfigItem'}

// Private ---------------------------------------------------------------------

procedure TConfigItem.SetValue(Index: Integer; Value: string);
begin
  if (Index < 1) or (Index > 3) then
    Exit;

  if Index = 1 then
    FID1 := Value
  else if Index = 2 then
    FID2 := Value
  else if Index = 3 then
    FID3 := Value;
end;

procedure TConfigItem.SetPiece(Index: Integer; Value: string);
var
  sl: TStringList;
begin
  if FData.Count < 1 then
    Exit;

  sl := TStringList.Create;
  try
    sl.Delimiter := TConfigCollection(Collection).Delimiter;
    sl.StrictDelimiter := True;
    sl.DelimitedText := FData[0];

    if ((Index >= 1) and (Index <= sl.Count)) then
    begin
      sl[Index - 1] := Value;
      FData[0] := sl.DelimitedText;
    end;
  finally
    sl.Free;
  end;
end;

function TConfigItem.GetValue(Index: Integer): string;
begin
  Result := '';

  if Index = 1 then
    Result :=  FID1
  else if Index = 2 then
    Result := FID2
  else if Index = 3 then
    Result := FID3;
end;

function TConfigItem.GetPiece(Index: Integer): string;
begin
  Result := '';

  if FData.Count > 0 then
    Result := uCommon.Piece(FData[0], TConfigCollection(Collection).Delimiter, Index);
end;

// Public ----------------------------------------------------------------------

constructor TConfigItem.Create(Collection: TCollection);
begin
  inherited;

  FData := TStringList.Create;
end;

destructor TConfigItem.Destroy;
begin
  FData.Free;

  inherited;
end;

{$ENDREGION}

{$REGION 'TConfigCollection'}

// Private ---------------------------------------------------------------------

procedure TConfigCollection.SetValue(Index: Integer; Value: Integer);
begin
  if (Index < 1) or (Index > 3) then
    Exit;

  if Index = 1 then
    FPieces1 := Value
  else if Index = 2 then
    FPieces2 := Value
  else if Index = 3 then
    FPieces3 := Value;
end;

procedure TConfigCollection.SetItem(Index: Integer; Value: TConfigItem);
begin
  inherited SetItem(Index, Value);
end;

function TConfigCollection.GetValue(Index: Integer): Integer;
begin
  Result := 0;

  if Index = 1 then
    Result := FPieces1
  else if Index = 2 then
    Result := FPieces2
  else if Index = 3 then
    Result := FPieces3;
end;

function TConfigCollection.GetCount: Integer;
var
  I: Integer;
begin
  Result := 0;

  for I := 1 to 3 do
    if Pieces[I] <> 0 then
      Inc(Result);
end;

function TConfigCollection.GetItem(Index: Integer): TConfigItem;
begin
  Result := TConfigItem(inherited Items[Index]);
end;

// Public ----------------------------------------------------------------------

procedure TConfigCollection.GetCollectiveText(var oText: TStringList);
var
  I: Integer;
begin
  oText.Clear;

  for I := 0 to Count - 1 do
    oText.AddStrings(Items[I].Data);
end;

function TConfigCollection.Add: TConfigItem;
begin
  Result := TConfigItem(inherited Add);
end;

function TConfigCollection.Insert(Index: Integer): TConfigItem;
begin
  Result := TConfigItem(inherited Insert(Index));
end;

function TConfigCollection.LookUp(p1,p2,p3: string): TConfigItem;
var
  I: Integer;
begin
  Result := nil;

  for I := 0 to Count - 1 do
    if ((Items[I].ID[1] = p1) and (Items[I].ID[2] = p2) and (Items[I].ID[3] = p3)) then
    begin
      Result := Items[I];
      Break;
    end;
end;

function TConfigCollection.ValidPieces(p1,p2,p3: string): Boolean;

  function CheckPiece(p: string): Boolean;
  var
    c: Char;
  begin
    Result := False;

    if p = '' then
      Exit;

    if StrToIntDef(p, 0) > 0 then
      Result := True
    else begin
      c := p[1];
      if c.IsLetter then
        Result := True;
    end;
  end;

begin
  Result := True;
  if GetCount < 1 then
    Exit;

  Result := CheckPiece(p1);
  if not Result then
    Exit;

  if GetCount < 2 then
    Exit;

  Result := CheckPiece(p2);
  if not Result then
    Exit;

  if GetCount < 3 then
    Exit;

  Result := CheckPiece(p3);
end;

{$ENDREGION}

{$REGION 'TDDCSDialog'}

// Private ---------------------------------------------------------------------

procedure TDDCSDialog.SetConfigCollection(const Value: TConfigCollection);
begin
  FConfiguration.Assign(Value);
end;

procedure TDDCSDialog.SetNoteCollection(const Value: TDDCSNoteCollection);
begin
  FReportCollection.Assign(Value);
end;

procedure TDDCSDialog.cbAutoWidth(Sender: TObject);
var
  cb: TCustomComboBox;
  cbLength,I: Integer;
begin
  if not Sender.InheritsFrom(TCustomComboBox) then
    Exit;

  cb := TCustomComboBox(Sender);

  cbLength := cb.Width;
  for I := 0 to cb.Items.Count - 1 do
    if cb.Canvas.TextWidth(cb.Items[I]) > cbLength then
      cbLength := cb.Canvas.TextWidth(cb.Items[I]) + GetSystemMetrics(SM_CXVSCROLL);

  SendMessage(cb.Handle, CB_SETDROPPEDWIDTH, (cblength + 7), 0);
end;

procedure TDDCSDialog.RadioGroupEnter(Sender: TObject);
var
  rg: TRadioGroup;
  I: Integer;
begin
  if not Sender.InheritsFrom(TRadioGroup) then
    Exit;

  rg := TRadioGroup(Sender);
  if rg.ItemIndex = -1 then
    for I := 0 to rg.ControlCount - 1 do
      TWinControl(rg.Controls[0]).TabStop := True;
end;

procedure TDDCSDialog.ActiveControlChanged(Sender: TObject);
var
  nItem: TDDCSNoteItem;
begin
  nItem := FReportCollection.GetNoteItem(ActiveControl);
  if nItem <> nil then
    if nItem.SayOnFocus <> '' then
      if FDDCSForm <> nil then
        if FDDCSForm.ScreenReader <> nil then
          FDDCSForm.ScreenReader.Say(nItem.SayOnFocus, False);
end;

// Protected -------------------------------------------------------------------

procedure TDDCSDialog.Notification(AComponent: TComponent; Operation: TOperation);
begin
  inherited;

  if (FReportCollection = nil) or not (AComponent is TWinControl) or
    (AComponent = Self) then
    Exit;
  if AComponent is TStaticText then
    Exit;

  if ((csDesigning in ComponentState) and not (csLoading in ComponentState)) then
  begin
    if Operation = opInsert then
      FReportCollection.GetNoteItemAddifNil(TWinControl(AComponent))
    else if Operation = opRemove then
      FReportCollection.DeleteNoteItem(TWinControl(AComponent));
  end;
end;

// Public ----------------------------------------------------------------------

constructor TDDCSDialog.Create;
begin
  inherited Create(nil);

  FDDCSForm := nil;
  RPCBrokerV := nil;
  FDebugMode := True;
  FIEN := '';

  FReturnList := TStringList.Create;

  FConfiguration := TConfigCollection.Create(Self, TConfigItem);
  FReportCollection := TDDCSNoteCollection.Create(Self, TDDCSNoteItem);
end;

constructor TDDCSDialog.Create(AOwner: PDDCSForm; Broker: PCPRSComBroker;
                               DebugMode: Boolean; iIEN: string);
var
  sl,dl: TStringList;
  I,cI,cII,cIII: Integer;
  wControl: TWinControl;
  p1,p2,p3,tmp: string;
  cD: Char;
  cItem: TConfigItem;

  procedure SetUpControl(wControl: TWinControl);
  var
    I: Integer;
    wComboBox: TComboBox;
    wRadioGroup: TRadioGroup;
  begin
    if (((wControl.InheritsFrom(TCustomPanel)) or (wControl.InheritsFrom(TCustomGroupBox)) or
         (wControl.InheritsFrom(TCustomTabControl))) and (not wControl.InheritsFrom(TRadioGroup)) and
       (wControl.ControlCount > 0)) then
    begin
      for I := 0 to wControl.ControlCount - 1 do
        if wControl.Controls[I] is TWinControl then
          SetUpControl(TWinControl(wControl.Controls[I]));
    end else
    begin
      if wControl is TStaticText then
        Exit;

      if wControl.InheritsFrom(TComboBox) then
      begin
        wComboBox := TComboBox(wControl);
        if not Assigned(wComboBox.OnDropDown) then
          wComboBox.OnDropDown := cbAutoWidth;
      end;

      if wControl.InheritsFrom(TRadioGroup) then
      begin
        wRadioGroup := TRadioGroup(wControl);
        if not Assigned(wRadioGroup.OnEnter) then
          wRadioGroup.OnEnter :=  RadioGroupEnter;
      end;

      FReportCollection.GetNoteItemAddifNil(wControl);
    end;
  end;

begin
  inherited Create(AOwner^);

  FDDCSForm := AOwner^;

  Screen.OnActiveControlChange := ActiveControlChanged;

  RPCBrokerV := Broker^;
  FDebugMode := DebugMode;
  FIEN := iIEN;

  FReturnList := TStringList.Create;

  FConfiguration := TConfigCollection.Create(Self, TConfigItem);
  FReportCollection := TDDCSNoteCollection.Create(Self, TDDCSNoteItem);

  for I := 0 to ComponentCount - 1 do
    if Components[I] is TWinControl then
      SetUpControl(TWinControl(Components[I]));

  if RPCBrokerV = nil then
    Exit;

  sl := TStringList.Create;
  dl := TStringList.Create;
  try
    try
      if (FIEN = '') and UpdateContext(MENU_CONTEXT) then
        FIEN := sCallV('DSIO DDCS DIALOG LOOKUP', [ClassName]);

      if StrToIntDef(FIEN, 0) < 1 then
        Exit;

      dl.Add(IEN + ';DSIO(19641.49,');

      if UpdateContext(MENU_CONTEXT) then
      begin
        tCallV(sl, 'DSIO DDCS BUILD FORM', [dl, RPCBrokerV.ControlObject, RPCBrokerV.TIUNote.IEN]);

        for I := 0 to sl.Count - 1 do
        begin
          // Control Value --------------------------------------------------
          //               CV^NAME^F^(INDEXED^VALUE)
          if Piece(sl[I],U,1) = 'CV' then
          begin
            wControl := FReportCollection.GetAControl(Piece(sl[I],U,2));

            if ((wControl <> nil) and (Piece(sl[I],U,3) = 'F')) then
              Fill(wControl, Piece(sl[I],U,4), Pieces(sl[I],U,5,999));
          end;
        end;

        sl.Clear;

        tCallV(sl, 'DSIO DDCS BUILD FORM', [dl, RPCBrokerV.ControlObject, RPCBrokerV.TIUNote.IEN, '1']);

        if sl.Count > 1 then
        begin
          cI   := StrToIntDef(Piece(Piece(sl[0],':',1),',',1), 0);
          cII  := StrToIntDef(Piece(Piece(sl[0],':',1),',',2), 0);
          cIII := StrToIntDef(Piece(Piece(sl[0],':',1),',',3), 0);
          FConfiguration.Pieces[1] := cI;
          FConfiguration.Pieces[2] := cII;
          FConfiguration.Pieces[3] := cIII;

          tmp := Piece(sl[0],':',2);
          if tmp <> '' then
            cD := tmp[1]
          else cD := U;
          FConfiguration.FDelimiter := cD;

          for I := 1 to sl.Count - 1 do
          begin
            if CI > 0 then
              p1 := Piece(sl[I],cD,cI)
            else p1 := '';
            if CII > 0 then
              p2 := Piece(sl[I],cD,cII)
            else p2 := '';
            if CIII > 0 then
              p3 := Piece(sl[I],cD,cIII)
            else p3 := '';

            cItem := FConfiguration.LookUp(p1, p2, p3);
            if cItem = nil then
            begin
              cItem := TConfigItem.Create(FConfiguration);
              cItem.ID[1] := p1;
              cItem.ID[2] := p2;
              cItem.ID[3] := p3;
            end;
            cItem.Data.Add(sl[I]);
          end;
        end;
      end;
    except
      on E: Exception do
      ShowMsg(E.Message, smiError, smbOK);
    end;
  finally
    sl.Free;
    dl.Free;
  end;
end;

destructor TDDCSDialog.Destroy;
begin
  if ModalResult <> mrCancel then
    if not DebugMode then
      Save;

  Screen.OnActiveControlChange := nil;

  FReturnList.Free;

  FConfiguration.Free;
  FReportCollection.Free;

  inherited;
end;

procedure TDDCSDialog.SayOnFocus(wControl: TWinControl; tSay: string);
var
  nItem: TDDCSNoteItem;
begin
  nItem := FReportCollection.GetNoteItemAddifNil(wControl);
  if nItem <> nil then
    nItem.SayOnFocus := tSay;
end;

procedure TDDCSDialog.Save;
var
  sl,cl: TStringList;
  I: Integer;
  nItem: TDDCSNoteItem;
begin
  if (StrToIntDef(IEN, 0) < 1) or (RPCBrokerV = nil) then
    Exit;

  sl := TStringList.Create;
  cl := TStringList.Create;
  try
    for I := 0 to FReportCollection.Count - 1 do
    begin
      nItem := FReportCollection.Items[I];

      // Data format -----------------------------------------------------------
      //   CONTROL^(INDEXED^VALUE)

      if not nItem.DoNotSave then
      begin
        nItem.GetValueSave(cl);
        if cl.Count > 0 then
          sl.AddStrings(cl);
      end;
    end;
    cl.Clear;

    if sl.Count > 0 then
    try
      if UpdateContext(MENU_CONTEXT) then
      begin
        CallV('DSIO DDCS STORE', [RPCBrokerV.ControlObject, RPCBrokerV.TIUNote.IEN,
                                  FIEN + ';DSIO(19641.49,', sl]);

        if Configuration.Count > 0 then
        begin
          Configuration.GetCollectiveText(cl);
          if cl.Count > 0 then
            CallV('DSIO DDCS STORE', [RPCBrokerV.ControlObject, RPCBrokerV.TIUNote.IEN,
                                      FIEN + ';DSIO(19641.49,', cl, 'C']);
        end;
      end;
    except
      on E: Exception do
      ShowMsg(E.Message, smiError, smbOK);
    end;
  finally
    cl.Free;
    sl.Free;
  end;
end;

{$ENDREGION}

end.