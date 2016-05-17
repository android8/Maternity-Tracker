unit udlgWheezing;

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
       Company: Document Storage Systems Inc.
   VA Contract: TAC-13-06464

   v2.0.0.0
}

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Buttons, ORCtrls, uDialog, uCommon, uExtndComBroker;

type
  TdlgWheezing = class(TDDCSDialog)
    bbtnOK: TBitBtn;
    bbtnCancel: TBitBtn;
    leOnset: TCaptionEdit;
    leAssocSym: TCaptionEdit;
    leDur: TCaptionEdit;
    Label3: TStaticText;
    cbSOBY: TCheckBox;
    cbSOBN: TCheckBox;
    lbDur: TStaticText;
    lbAssociatedSymp: TStaticText;
    StaticText3: TStaticText;
    pnlfooter: TPanel;
    procedure bbtnOKClick(Sender: TObject);
    procedure checkboxClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
  public
  end;

var
  dlgWheezing: TdlgWheezing;

implementation

{$R *.dfm}

var
  hdiff: Integer;

procedure TdlgWheezing.bbtnOKClick(Sender: TObject);
var
  I : Integer;
begin
  if (leOnset.Text <> '') or (cbSOBY.Checked) or (cbSOBN.Checked) or
     (leDur.Text <> '') or (leAssocSym.Text <> '') then
  begin
    TmpStrList.Add('Wheezing:');
    if leOnset.Text  <> '' then
      TmpStrList.Add('  Onset: ' + leOnset.Text);
    if cbSOBY.Checked then
      TmpStrList.Add('  Shortness of breath?: Yes');
    if cbSOBN.Checked then
      TmpStrList.Add('  Shortness of breath?: No');
    if leDur.Text  <> '' then
      TmpStrList.Add('  Duration: ' + leDur.Text);
    if leAssocSym.Text  <> '' then
      TmpStrList.Add('  Associated Symptoms: ' + leAssocSym.Text);
  end;
end;

procedure TdlgWheezing.checkboxClick(Sender: TObject);
begin
  if (Sender as TCheckBox).Tag = 1 then
  begin {Yes}
    if (Sender as TCheckBox).Checked then
    begin
      cbSOBN.OnClick := nil;
      cbSOBN.Checked := False;
      cbSOBN.OnClick := checkboxClick;

      Height := Height + hdiff;

      lbDur.Visible := True;
      leDur.Visible := True;
    end else
    begin
      if lbDur.Visible then
      begin
        lbDur.Visible := False;
        leDur.Clear;
        leDur.Visible := False;

        Height := Height - hdiff;
      end;
    end;
  end else if (Sender as TCheckBox).Tag = 2 then
  begin
    cbSOBY.OnClick := nil;
    cbSOBY.Checked := False;
    cbSOBY.OnClick := checkboxClick;

    if lbDur.Visible then
    begin
      lbDur.Visible := False;
      leDur.Clear;
      leDur.Visible := False;

      Height := Height - hdiff;
    end;
  end;
end;

procedure TdlgWheezing.FormCreate(Sender: TObject);
begin
  hdiff := leDur.Height + 10;
  Height := Height - hdiff;
end;

end.