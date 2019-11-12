unit U_client_android;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Layouts,
  FMX.StdCtrls, FMX.Objects, FMX.Controls.Presentation, FMX.Edit, FMX.TabControl;

type
  TForm2 = class(TForm)
    Layout1: TLayout;
    Layout2: TLayout;
    edt_username: TEdit;
    edt_password: TEdit;
    btn_login: TButton;
    btn_singup: TButton;
    Image1: TImage;
    Layout3: TLayout;
    Label1: TLabel;
    VertScrollBox1: TVertScrollBox;
    TabControl1: TTabControl;
    Layout4: TLayout;
    TabItem1: TTabItem;
    TabItem2: TTabItem;
    Layout5: TLayout;
    Layout6: TLayout;
    edt_username_sign: TEdit;
    edt_email: TEdit;
    edt_repeat_pass: TEdit;
    edt_pass_sign: TEdit;
    edt_phone: TEdit;
    edt_address: TEdit;
    btn_input_signup: TButton;
    Label2: TLabel;
    VertScrollBox2: TVertScrollBox;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.fmx}

end.
