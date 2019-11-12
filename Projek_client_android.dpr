program Projek_client_android;

uses
  System.StartUpCopy,
  FMX.Forms,
  U_client_android in 'U_client_android.pas' {Form2},
  U_module in 'U_module.pas' {DataModule1: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.Run;
end.
