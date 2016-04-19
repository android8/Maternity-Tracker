unit fChildHist;

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

   v1.0.0.0
}

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Vcl.Mask, Vcl.Samples.Spin,
  uDialog, uExtndComBroker, JvExMask, JvSpin, VA508AccessibilityManager;

type
  TfrmChildHist = class(ToCNTDialog)
    Panel40: TPanel;
    Label305: TLabel;
    rgbxChildGender: TRadioGroup;
    cntcbxStillBorn: TCheckBox;
    lblg1: TLabel;
    spnBirthWeight: TJvSpinEdit;
    amgrMain: TVA508AccessibilityManager;
    procedure FormCreate(Sender: TObject);
    procedure cntcbxStillBornClick(Sender: TObject);
    procedure SpinMin(Sender: TObject);
  private
  public
    FBabyIEN: string;
    bNotViewed: boolean;
    procedure GetText(slText: TStringList);
  end;

var
  frmChildHist: TfrmChildHist;

implementation

uses
 udlgPregHist;

{$R *.dfm}

procedure TfrmChildHist.cntcbxStillBornClick(Sender: TObject);
begin
  if cntcbxStillBorn.Checked then
    TdlgPregHist(Owner.Owner).ModifyLiveBirthCount(-1)
  else
    TdlgPregHist(Owner.Owner).ModifyLiveBirthCount(1)
end;

procedure TfrmChildHist.FormCreate(Sender: TObject);
begin
  bNotViewed := True;
end;

procedure TfrmChildHist.GetText(slText: TStringList);
begin
  if rgbxChildGender.ItemIndex = 0 then
    slText.Add('      Sex: Male')
  else if rgbxChildGender.ItemIndex = 1 then
    slText.Add('      Sex: Female');
  if Trim(spnBirthWeight.Text) <> '' then
    slText.Add('      Birth Weight: ' + spnBirthWeight.Text + ' grams');
  if cntcbxStillBorn.Checked then
    slText.Add('      Stillborn: Yes');
end;

procedure TfrmChildHist.SpinMin(Sender: TObject);
begin
  if TJvSpinEdit(Sender).Value < 0 then
    TJvSpinEdit(Sender).Value := 0;
end;

end.