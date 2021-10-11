{
  Unit Name : lbExtHints;
  Autor     : Cirec [www.Delphifr.com] 18/10/2008

  Utilisation/license : - libre de droit pour un usage privé et pour des
                          applications gratuites (Ne pas oublier de citer l'auteur
                          dans ce cas).
                        - utilisation et reproduction même partielle
                          INTERDITE sans la permission écrite de l'auteur
                          dans le cadre de logiciels commerciaux.

  veillez toujours à ce que cette unité soit déclaré après StdCtrls  (Voir Démo)
}

unit lbExtHints;
interface
uses Windows, {For :DrawText}
  Classes, {For :TRect}
  SysUtils, {For :Format}
  Controls, {For :CM_HINTSHOW}
  Forms, {For :TCMHintShow}
  Messages, {For :TMessage}
  StdCtrls; {For :TStringGrid, TCustomGrid}

type
  TListBox = class(StdCtrls.TListBox)
  private
    FOldHintShortPause: Integer;
    FOldHintHidePause: Integer;
    {Déclaration de notre procedure pour l'interception des Hints}
    procedure CMHintShow(var Message: TMessage); message CM_HINTSHOW;
  protected
    procedure CMMouseEnter(var Message: TMessage); message CM_MOUSEENTER;
    procedure CMMouseLeave(var Message: TMessage); message CM_MOUSELEAVE;
  end;

implementation

{ TListBox }

{ Tout se passe dans cette procédure}
procedure TListBox.CMHintShow(var Message: TMessage);
var Idx: Integer;
  aRect: TRect;
begin
  {
    Ne pas executer le message
  }
  message.Result := 1;
  {
    si des Items existent
  }
  if Items.Count > 0 then
  begin
    with TCMHintShow(message).HintInfo^ do
    begin
      Idx := ItemAtPos(CursorPos, True);
      if Idx <> -1 then
        HintStr := Items[Idx];
      CursorRect := ItemRect(Idx);
      aRect := ItemRect(0);
      Canvas.Font := Font;
      DrawText(Canvas.Handle, PChar(HintStr), -1, aRect,
        DT_LEFT or DT_SINGLELINE or DT_NOPREFIX or DT_CALCRECT);
      if aRect.Right >= ClientWidth then
        message.Result := 0;
    end;
  end;
end;

procedure TListBox.CMMouseEnter(var Message: TMessage);
begin
  with Application do
  begin
    {
      On laisse le temps pour lire ^^
    }
    FOldHintHidePause := HintHidePause;
    HintHidePause := 5000;
    {
      Sur une idée de Japee:
      Permet de définir le même delai avant affichage
      pour toutes les cellules
    }
    FOldHintShortPause := HintShortPause;
    HintShortPause := HintPause;
  end;
  inherited;
end;

procedure TListBox.CMMouseLeave(var Message: TMessage);
begin
  {
    et on restitue les valeurs d'origine en sortant
  }
  Application.HintHidePause := FOldHintHidePause;
  Application.HintShortPause := FOldHintShortPause;
  inherited;
end;

end.

