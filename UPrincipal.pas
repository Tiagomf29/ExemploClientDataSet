unit UPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids,
  Data.DB, Datasnap.DBClient,ZDataSet, ZAbstractConnection, ZConnection;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBGrid1: TDBGrid;
    Button1: TButton;
    Button2: TButton;
    DS: TDataSource;
    CDS: TClientDataSet;
    CDSNome: TStringField;
    CDSSobrenome_meio: TStringField;
    CDSSobrenome_fim: TStringField;
    Edit4: TEdit;
    Label4: TLabel;
    ZConnection1: TZConnection;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
I : Integer;
begin

  CDS.Open;
  cds.EmptyDataSet;
  for I := 0 to StrToInt(Edit4.Text) do
  begin
    CDS.Append;
    CDS.FieldByName('nome').AsString:=Edit1.Text+IntToStr(I);
    CDS.FieldByName('sobrenome_meio').AsString:=Edit2.Text+IntToStr(I);
    CDS.FieldByName('sobrenome_fim').AsString:=Edit3.Text+IntToStr(I);
    cds.Post;
  end;
end;

procedure TForm1.Button2Click(Sender: TObject);
var
qry : TZQuery;
begin

  qry:= TZQuery.Create(nil);
  qry.Connection:=ZConnection1;
  CDS.First;
  try
  while not CDS.Eof do
  Begin
    qry.Close;
    qry.SQL.Clear;
    qry.SQL.Add('insert into pessoa (nome,sobrenome_meio,sobrenome_fim)');
    qry.SQL.Add('values');
    qry.SQL.Add('(');
    qry.SQL.Add(QuotedStr(cds.FieldByName('nome').AsString)+',');
    qry.SQL.Add(QuotedStr(cds.FieldByName('sobrenome_meio').AsString)+',');
    qry.SQL.Add(QuotedStr(cds.FieldByName('sobrenome_fim').AsString));
    qry.SQL.Add(')');
    qry.ExecSQL;
    CDS.Next;
  End;

      MessageDlg('Registros gravados no banco de dados com sucesso!',mtInformation,[mbOK],0);
      CDS.EmptyDataSet;

  finally
    FreeAndNil(qry);
  end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  CDS.CreateDataSet;
end;

end.
