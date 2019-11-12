unit Unit2;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Effects, FMX.Layouts,
  FMX.Objects, FMX.TabControl, FMX.Edit, FMX.WebBrowser, FMX.Ani, FMX.ListBox;

type
  TForm2 = class(TForm)
    TabControl1: TTabControl;
    tb_menu: TTabItem;
    tb_login: TTabItem;
    tb_register: TTabItem;
    ShadowEffect1: TShadowEffect;
    Layout2: TLayout;
    Label1: TLabel;
    edt_Lpass: TEdit;
    RoundRect1: TRoundRect;
    edt_Lusername: TEdit;
    Button1: TButton;
    Layout3: TLayout;
    edt_Rktp: TEdit;
    edt_Rpass: TEdit;
    edt_Remail: TEdit;
    edt_Rrepeat: TEdit;
    edt_Rusername: TEdit;
    edt_foto: TEdit;
    btn_foto: TButton;
    btn_ktp: TButton;
    RoundRect3: TRoundRect;
    btn_Rregister: TButton;
    RoundRect2: TRoundRect;
    Button4: TButton;
    VertScrollBox1: TVertScrollBox;
    Rectangle1: TRectangle;
    Layout1: TLayout;

    Image1: TImage;
    Label2: TLabel;
    RoundRect4: TRoundRect;
    Label3: TLabel;
    Rectangle2: TRectangle;
    Rectangle3: TRectangle;
    Rectangle4: TRectangle;
    Rectangle5: TRectangle;
    Image2: TImage;
    ListBoxItem2: TListBoxItem;
    Image3: TImage;
    Label4: TLabel;
    ListBoxItem3: TListBoxItem;
    Image4: TImage;
    Label5: TLabel;
    ListBoxItem4: TListBoxItem;
    Image5: TImage;
    Label6: TLabel;
    ListBoxItem5: TListBoxItem;
    Image6: TImage;
    Label7: TLabel;
    ListBoxItem6: TListBoxItem;
    Image7: TImage;
    Label8: TLabel;
    ListBoxItem7: TListBoxItem;
    Image8: TImage;
    Label9: TLabel;
    ListBoxItem8: TListBoxItem;
    Image9: TImage;
    Label10: TLabel;
    ListBoxItem9: TListBoxItem;
    Image10: TImage;
    Label11: TLabel;
    tb_fb: TTabItem;
    tb_ig: TTabItem;
    tb_setting: TTabItem;
    tb_youtube: TTabItem;
    WebBrowser1: TWebBrowser;
    WebBrowser2: TWebBrowser;
    WebBrowser3: TWebBrowser;
    WebBrowser4: TWebBrowser;
    Rectangle6: TRectangle;
    Button2: TButton;
    Rectangle7: TRectangle;
    Button3: TButton;
    Rectangle8: TRectangle;
    Button5: TButton;
    Rectangle9: TRectangle;
    Button6: TButton;
    Lb_name: TLabel;
    Lb_error: TLabel;
    hejooo: TBrushObject;
    procedure ListBoxItem8Click(Sender: TObject);
    procedure ListBoxItem2Click(Sender: TObject);
    procedure ListBoxItem5Click(Sender: TObject);
    procedure ListBoxItem6Click(Sender: TObject);
    procedure ListBoxItem9Click(Sender: TObject);
    procedure Image9Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure Image6Click(Sender: TObject);
    procedure Image7Click(Sender: TObject);
    procedure Image10Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.fmx}

uses Unit1;
{$R *.LgXhdpiPh.fmx ANDROID}
{$R *.SmXhdpiPh.fmx ANDROID}
{$R *.NmXhdpiPh.fmx ANDROID}

procedure TForm2.Button1Click(Sender: TObject);
var username,password : string;
begin
with module do
begin
    try
      RESTRequest1.ClearBody;
      RESTClient1.BaseURL := 'http://nusaputra.somantri.id/ti17/samsul/api/index.php';
      RESTRequest1.Execute;
     username := FDMemTable1.FieldByName('username').Text;
         password := FDMemTable1.FieldByName('password').Text;
      while not FDMemTable1.Eof do
        begin


           if edt_Lusername.Text = username then
           begin
           if  edt_Lpass.Text = password then
             begin
              TabControl1.ActiveTab := tb_menu;
              Lb_name.Text := edt_Lusername.Text;

             end
           end
           else
           begin
           TabControl1.ActiveTab := tb_login;
           Lb_error.Visible := true;
           end;
          FDMemTable1.Next;


        end;

    except
      on E: exception do
      ShowMessage('login gagal' + e.Message);
    end;
end;

end;

procedure TForm2.Button2Click(Sender: TObject);
begin
  tabControl1.activetab := tb_menu;
end;

procedure TForm2.Button4Click(Sender: TObject);
begin
   tabControl1.activetab := tb_register;
end;

procedure TForm2.Image10Click(Sender: TObject);
begin
  tabControl1.activetab := tb_setting;
end;

procedure TForm2.Image3Click(Sender: TObject);
begin
   tabControl1.activetab := tb_menu;
   edt_Lpass.Text :='';
   edt_Lusername.Text := '';
   edt_Lusername.SetFocus;
end;

procedure TForm2.Image6Click(Sender: TObject);
begin
   tabControl1.activetab := tb_youtube;
end;

procedure TForm2.Image7Click(Sender: TObject);
begin
   tabControl1.activetab := tb_ig;
end;

procedure TForm2.Image9Click(Sender: TObject);
begin
   tabControl1.activetab := tb_fb;
end;

procedure TForm2.ListBoxItem2Click(Sender: TObject);
begin
    tabControl1.activetab := tb_menu;
end;

procedure TForm2.ListBoxItem5Click(Sender: TObject);
begin
    tabControl1.activetab := tb_youtube;
end;

procedure TForm2.ListBoxItem6Click(Sender: TObject);
begin
tabControl1.activetab := tb_ig;
end;

procedure TForm2.ListBoxItem8Click(Sender: TObject);
begin
  tabControl1.activetab := tb_fb;
end;

procedure TForm2.ListBoxItem9Click(Sender: TObject);
begin
tabControl1.activetab := tb_setting;
end;

end.
