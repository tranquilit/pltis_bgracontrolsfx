unit umain;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  FXContainer, FXMaterialDesignButton, FXButton;

type

  { TfrmMain }

  TfrmMain = class(TForm)
    FXContainer1: TFXContainer;
    FXMaterialDesignButton1: TFXMaterialDesignButton;
    FXMaterialDesignButton2: TFXMaterialDesignButton;
    FXMaterialDesignButton3: TFXMaterialDesignButton;
    FXMaterialDesignButton4: TFXMaterialDesignButton;
    FXMaterialDesignButton5: TFXMaterialDesignButton;
    FXMaterialDesignButton6: TFXMaterialDesignButton;
    FXMaterialDesignButton7: TFXMaterialDesignButton;
    FXMaterialDesignButton8: TFXMaterialDesignButton;
    Timer1: TTimer;
    procedure Timer1StartTimer(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private

  public

  end;

var
  frmMain: TfrmMain;

implementation

{$R *.lfm}

{ TfrmMain }

procedure TfrmMain.Timer1Timer(Sender: TObject);
begin
  { This is the only way to call DoOnPaint when using these settings.
  Note that is responsibility of the controls to follow this rule, is not related with any code in the container.
  This helps having a constant FPS and speed of drawing when controls has animations }
  FXContainer1.DoOnPaint;
end;

procedure TfrmMain.Timer1StartTimer(Sender: TObject);
begin
  { Tell other controls that only this can call DoOnPaint }
  FXContainer1.ReceivePaintFrom := Timer1;
  { Lock changing the ReceivePaintFrom control }
  FXContainer1.LockReceivePaint := true;
end;

end.
