program Project2;

uses
  System.StartUpCopy,
  FMX.Forms,
  Unit2 in 'Unit2.pas' {Form2},
  Unit1 in 'Unit1.pas' {module: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(Tmodule, module);
  Application.Run;
end.
