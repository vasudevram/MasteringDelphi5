unit DateF;

interface

uses
  SysUtils, Windows, Messages, Classes, Graphics, Controls,
  Forms, Dialogs, Dates, StdCtrls;

type
  TDateForm = class(TForm)
    LabelDate: TLabel;
    BtnIncrease: TButton;
    BtnDecrease: TButton;
    BtnAdd10: TButton;
    BtnSubtract10: TButton;
    BtnLeap: TButton;
    BtnToday: TButton;
    EditYear: TEdit;
    EditMonth: TEdit;
    EditDay: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    BtnRead: TButton;
    BtnWrite: TButton;
    procedure BtnIncreaseClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BtnDecreaseClick(Sender: TObject);
    procedure BtnAdd10Click(Sender: TObject);
    procedure BtnSubtract10Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure BtnLeapClick(Sender: TObject);
    procedure BtnTodayClick(Sender: TObject);
    procedure BtnReadClick(Sender: TObject);
    procedure BtnWriteClick(Sender: TObject);
  private
    TheDay: TNewDate;
  public
    { Public declarations }
  end;

var
  DateForm: TDateForm;

implementation

{$R *.DFM}

procedure TDateForm.FormCreate(Sender: TObject);
begin
  TheDay := TNewDate.Create (2000, 12, 25);
  LabelDate.Caption := TheDay.GetText;
end;

procedure TDateForm.BtnIncreaseClick(Sender: TObject);
begin
  TheDay.Increase;
  LabelDate.Caption := TheDay.GetText;
end;

procedure TDateForm.BtnDecreaseClick(Sender: TObject);
begin
  TheDay.Decrease;
  LabelDate.Caption := TheDay.GetText;
end;

procedure TDateForm.BtnAdd10Click(Sender: TObject);
begin
  TheDay.Increase (10);
  LabelDate.Caption := TheDay.GetText;
end;

procedure TDateForm.BtnSubtract10Click(Sender: TObject);
begin
  TheDay.Decrease (10);
  LabelDate.Caption := TheDay.GetText;
end;

procedure TDateForm.FormDestroy(Sender: TObject);
begin
  TheDay.Free;
end;

procedure TDateForm.BtnLeapClick(Sender: TObject);
begin
  if TheDay.LeapYear then
    ShowMessage ('Leap year')
  else
    ShowMessage ('NON Leap year');
end;

procedure TDateForm.BtnTodayClick(Sender: TObject);
begin
  TheDay.SetValue (Date);
  LabelDate.Caption := TheDay.GetText;
end;

procedure TDateForm.BtnReadClick(Sender: TObject);
begin
  EditYear.Text := IntToStr (TheDay.Year);
  EditMonth.Text := IntToStr (TheDay.Month);
  EditDay.Text := IntToStr (TheDay.Day);
end;

procedure TDateForm.BtnWriteClick(Sender: TObject);
begin
  // might cause problems
  {TheDay.Year := StrToInt (EditYear.Text);
  TheDay.Month := StrToInt (EditMonth.Text);
  TheDay.Day := StrToInt (EditDay.Text);}

  // better solution
  TheDay.SetValue (StrToInt (EditYear.Text),
    StrToInt (EditMonth.Text), StrToInt (EditDay.Text));

  // update the label
  LabelDate.Caption := TheDay.Text;
end;

end.

