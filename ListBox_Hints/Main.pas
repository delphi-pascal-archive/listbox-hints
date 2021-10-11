{—————————————————————————————————————————————————————————————————————————}
{ Project : Demo.dpr                                                      }
{ Comment :                                                               }
{                                                                         }
{    Date : 23/03/2009 11:00:13                                           }
{  Author : Cirec                                                         }
{—————————————————————————————————————————————————————————————————————————}
{ Last modified                                                           }
{    Date : 24/03/2009 22:38:59                                           }
{  Author : Cirec                                                         }
{—————————————————————————————————————————————————————————————————————————}

{$I crDIRECTIVES.INC}

unit Main;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, lbExtHints, XPMan;

type
  TForm1 = class(TForm)
    lbx_Demo: TListBox;
    cbx_HintActive: TCheckBox;
    GroupBox1: TGroupBox;
    rbtn_Big: TRadioButton;
    rbtn_Medium: TRadioButton;
    rbtn_Normal: TRadioButton;
    cbx_HScrollBar: TCheckBox;
    procedure cbx_HintActiveClick(Sender: TObject);
    procedure rbtn_BigClick(Sender: TObject);
    procedure cbx_HScrollBarClick(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

function lbxGetMaxItemsLen(const aListBox: TListBox): Integer;
var I: Integer;
    aRect: TRect;
begin
  Result := 0;
  with aListBox do
  begin
    Canvas.Font := Font;
    SetRectEmpty(aRect);
    for I := 0 to Count -1 do
      DrawText(Canvas.Handle, PChar(Items[I]), -1, aRect,
        DT_LEFT or DT_SINGLELINE or DT_NOPREFIX or DT_CALCRECT);
    if aRect.Right > Result then
      Result := aRect.Right;
  end;
end;

procedure TForm1.cbx_HintActiveClick(Sender: TObject);
begin
  lbx_Demo.ShowHint := cbx_HintActive.Checked;
end;

procedure TForm1.rbtn_BigClick(Sender: TObject);
begin
  lbx_Demo.Canvas.FillRect(lbx_Demo.ClientRect);
  case TComponent(Sender).Tag of
    0: begin
         lbx_Demo.Font.Name := 'Times New Roman';
         lbx_Demo.Font.Size := 16;
       end;
    1: begin
         lbx_Demo.Font.Name := 'Comic Sans MS';
         lbx_Demo.Font.Size := 12;
       end;
    2: begin
         lbx_Demo.Font.Name := 'MS Sans Serif';
         lbx_Demo.Font.Size := 8;
       end;
  end;
 cbx_HScrollBarClick(Self);
end;     

{ Si la propriété "ScrollWidth" n'existe pas dans votre version de Delphi
  il suffit d'utiliser les deux lignes en commentaires à la place}
procedure TForm1.cbx_HScrollBarClick(Sender: TObject);
begin
  if cbx_HScrollBar.Checked then
  {$IFDEF D7OrHigher}
    lbx_Demo.ScrollWidth := lbxGetMaxItemsLen(lbx_Demo)+8
  {$ELSE}
    lbx_Demo.Perform(LB_SETHORIZONTALEXTENT, lbxGetMaxItemsLen(lbx_Demo)+8,0)
  {$ENDIF}
  else
  {$IFDEF D7OrHigher}
    lbx_Demo.ScrollWidth := 0
  {$ELSE}
    lbx_Demo.Perform(LB_SETHORIZONTALEXTENT, 0,0);
  {$ENDIF}
end;

end.
