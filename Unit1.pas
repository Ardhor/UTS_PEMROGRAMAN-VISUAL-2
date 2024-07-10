unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection, Grids, DBGrids, StdCtrls;

type
  TFormsatuan = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    edtnama: TEdit;
    edtdeskripsi: TEdit;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    lbl3: TLabel;
    edt1: TEdit;
    con1: TZConnection;
    dbgrd1: TDBGrid;
    ZQuery1: TZQuery;
    ds1: TDataSource;
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Formsatuan: TFormsatuan;

implementation

{$R *.dfm}

procedure TFormsatuan.btn1Click(Sender: TObject);
begin
ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('insert into satuan values (null,"'+edtnama.Text+', '+edtdeskripsi.Text+'")');
ZQuery1.ExecSQL;

ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('select * from satuan');
ZQuery1.Open;

ShowMessage('data berhasil disimpan');
end;

end.
