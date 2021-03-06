unit DbAwForm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, StdCtrls, Mask, DBCtrls, ExtCtrls, Grids, DBGrids, ComCtrls,
  ADODB;

type
  TDbaForm = class(TForm)
    Table1: TADOTable;
    DataSource1: TDataSource;
    Panel1: TPanel;
    Button2: TButton;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    DBRadioGroup1: TDBRadioGroup;
    DBCheckBox1: TDBCheckBox;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBComboBox1: TDBComboBox;
    DBText1: TDBText;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    ADOConnection: TADOConnection;
    ADOCommand: TADOCommand;
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    procedure AddRandomData;
  end;

var
  DbaForm: TDbaForm;

implementation

{$R *.DFM}

procedure TDbaForm.FormCreate(Sender: TObject);
var
  TablesList: TStringList;
begin
  // read table names from database
  TablesList := TStringList.Create;
  try
    ADOConnection.GetTableNames (TablesList);
    // check if the table already exists
    if TablesList.IndexOf (Table1.TableName) < 0 then
      // create it
      ADOCommand.Execute;
    // open the new or existing table
    Table1.Open;
  finally
    TablesList.Free;
  end;
end;

procedure TDbaForm.Button2Click(Sender: TObject);
begin
  AddRandomData;
end;

const
  FirstNames : array [1..10] of string =
    ('John', 'Paul', 'Mark', 'Joseph', 'Bill',
    'Peter', 'Tim', 'Ralph', 'Bob', 'Gary');
  LastNames : array [1..10] of string =
    ('Ford', 'Osborse', 'White', 'MacDonald', 'Lee',
    'Young', 'Parker', 'Reed', 'Gates', 'Green');
  NoDept = 4;
  NoBranch = 30;
  NewRecords = 10;

procedure TDbaForm.AddRandomData;
var
  I: Integer;
begin
  Randomize;
  for I := 1 to NewRecords do
    Table1.InsertRecord ([
      LastNames [Random (High (LastNames)) + 1],
      FirstNames [Random (High (FirstNames)) + 1],
      Random (NoDept) + 1,
      DbComboBox1.Items [Random (NoBranch) + 1],
      Boolean (Random (2)),
      Date - Random (1000)]);
  ShowMessage (IntToStr (NewRecords) + ' added');
end;

end.
