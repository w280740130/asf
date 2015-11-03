unit UBAboutForm;
//���ڱ�ϵͳ
interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UTPubBelowDlg, StdCtrls, Buttons, ExtCtrls, U_PubFuncs,
  ADODB, DB, auHTTP, auAutoUpgrader, RzStatus, jpeg, RzPanel;

type
  TBAboutForm = class(TTPubBelowDlg)
    LabelSysMsg: TLabel;
    ImageIcon: TImage;
    LabelFileDesc: TLabel;
    LabelComment: TLabel;
    Image1: TImage;
    RzVersionInfo1: TRzVersionInfo;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BAboutForm: TBAboutForm;

implementation

uses UBPubProc;

{$R *.DFM}

procedure TBAboutForm.BitBtn1Click(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TBAboutForm.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  //inherited;
end;

procedure TBAboutForm.FormShow(Sender: TObject);
begin
  inherited;
  RzVersionInfo1.FilePath := Application.ExeName;
  Caption := '���� '+ Application.Title;
  LabelFileDesc.Caption := Application.Title;
  ImageIcon.Picture.Icon := Application.Icon;
  LabelComment.Caption := RzVersionInfo1.Comments;
  LabelSysMsg.Caption := '��ϵͳ�й���Ϣ'+#13
      + '      �汾��: '+RzVersionInfo1.ProductVersion+#13
      + '    �ļ���С: '+Format('%d�ֽ�',[GetFileLength(Application.ExeName)])+#13
      + '    ��������: '+FormatDateTime('yyyy-mm-dd hh:nn:ss',
      FileDateToDateTime(FileAge(Application.ExeName)));
end;

end.
