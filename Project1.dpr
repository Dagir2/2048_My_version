program Project1;

uses
  Vcl.Forms,
  Pmap in 'Pmap.pas' {Form1},
  Menu in 'Menu.pas' {Form2};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
