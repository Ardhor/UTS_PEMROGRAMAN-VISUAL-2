program fiture_satuan;

uses
  Forms,
  Unit1 in 'Unit1.pas' {Formsatuan};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFormsatuan, Formsatuan);
  Application.Run;
end.
