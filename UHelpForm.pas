unit UHelpForm;



interface

uses
 Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, UInfo;

type
  TfrmHelp = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    edtName: TEdit;
    edtDirector: TEdit;
    edtActors: TEdit;
    mmoDescription: TMemo;
    btnOK: TButton;
    btnCancel: TButton;
    procedure btnOKClick(Sender: TObject);
  private
    { Private declarations }
  public
    info: TInfo;
    IsView : boolean;
    procedure SetParams(AInfo : TInfo; AIsView : Boolean);

  end;

implementation

{$R *.dfm}

{ TfrmHelp }

procedure TfrmHelp.btnOKClick(Sender: TObject);
begin
  if IsView then
    ModalResult := mrOk
  else
    begin
      if trim(edtName.Text) = '' then
        begin
          MessageDlg('Ќазвание фильма не может быть пустым', mtError, [mbOk], 0);
          edtName.SetFocus;
          exit
        end;
      /////
      if trim(edtDirector.Text) = '' then
        begin
          MessageDlg('” фильма не может отсутствовать режиссер', mtError, [mbOk], 0);
          edtDirector.SetFocus;
          exit
        end;
      if trim(edtActors.Text) = '' then
        begin
          MessageDlg('” фильма не могут отсутствовать актеры', mtError, [mbOk], 0);
          edtActors.SetFocus;
          exit
        end;
      info:=TInfo.Create(trim(edtName.Text),trim(edtDirector.Text),trim(edtActors.Text), trim(mmoDescription.Text));
      {info.FName := trim(edtName.Text);
      info.Direct := trim(edtDirector.Text);
      info.Act := trim(edtActors.Text);
      info.Descript := trim(mmoDescription.Text); }
      ModalResult := mrOk;
    end;
end;

procedure TfrmHelp.SetParams(AInfo : TInfo; AIsView: Boolean);
begin
  IsView := AIsView;
  if IsView then
    begin
      info := AInfo;
      edtName.Text := info.FName;
      edtDirector.Text := info.Direct;
      edtActors.Text := info.Act;
      mmoDescription.Text := info.Descript;
    end;
  edtName.ReadOnly := IsView;
  //!!!!!!!!!!!!!!!!!!!
  edtDirector.ReadOnly := IsView;
  edtActors.ReadOnly := IsView;
  mmoDescription.ReadOnly := IsView;
  btnCancel.Visible := not IsView;
  if IsView then
    btnOK.Left := 160
  else
    btnOK.Left := 96;
end;

end.

