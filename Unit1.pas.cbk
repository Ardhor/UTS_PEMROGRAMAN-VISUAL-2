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
    procedure btn2Click(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure edt1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Formsatuan: TFormsatuan;
  a : string;

implementation

{$R *.dfm}

procedure TFormsatuan.btn1Click(Sender: TObject);
begin
  if edtnama.Text = '' then
    begin
      ShowMessage('Nama tidak boleh kosong!');
    end else
  if edtdeskripsi.Text = '' then
    begin
        ShowMessage('Deskripsi tidak boleh kosong!');
    end else
  if ZQuery1.Locate('nama',edtnama.Text,[]) then
  begin
    ShowMessage('Nama Satuan '+edtnama.Text+' Sudah tersedia');
  end else
  begin
    ZQuery1.SQL.Clear;
    ZQuery1.SQL.Add('insert into satuan values (null,"'+edtnama.Text+'", "'+edtdeskripsi.Text+'")');
    ZQuery1.ExecSQL;

    ZQuery1.SQL.Clear;
    ZQuery1.SQL.Add('select * from satuan');
    ZQuery1.Open;

ShowMessage('data berhasil disimpan');
end;
end;

procedure TFormsatuan.btn2Click(Sender: TObject);
begin
with ZQuery1 do
  if edtnama.Text = '' then
    begin
      ShowMessage('Nama tidak boleh kosong!');
    end else
  if edtdeskripsi.Text = '' then
    begin
        ShowMessage('Deskripsi tidak boleh kosong!');
    end else
  if edtnama.Text = ZQuery1.Fields[1].AsString then
  begin
    ShowMessage('Nama Satuan '+edtnama.Text+' Tidak ada perubahan');
  end else
  begin
    SQL.Clear;
    SQL.Add('update satuan SET nama="'+edtnama.Text+'", deskripsi="'+edtdeskripsi.Text+'" where id="'+a+'"');
    ExecSQL;

    SQL.Clear;
    SQL.Add('SELECT * FROM SATUAN');
    Open;
    ShowMessage('Data Berhasil DiEdit');
  end;
end;

procedure TFormsatuan.dbgrd1CellClick(Column: TColumn);
begin
edtnama.Text:= ZQuery1.Fields[1].AsString;
edtdeskripsi.Text := ZQuery1.Fields[2].AsString;
a:= ZQuery1.Fields[0].AsString;
end;

procedure TFormsatuan.btn3Click(Sender: TObject);
begin
with ZQuery1 do
begin
  SQL.Clear;
  SQL.Add('delete from satuan where id="'+a+'"');
  ExecSQL;

  SQL.Clear;
  SQL.Add('SELECT * FROM SATUAN');
  Open;
end;
ShowMessage('Data berhasil dihapus');
end;
procedure TFormsatuan.btn4Click(Sender: TObject);
begin
edtnama.Text := '';
edtdeskripsi.Text := '';
end;

procedure TFormsatuan.edt1Change(Sender: TObject);
begin
  with ZQuery1 do
  begin
    SQL.Clear;
    SQL.Add('SELECT * FROM SATUAN WHERE NAMA LIKE "%'+edt1.Text+'%"');
    Open;
  end;
end;

end.
