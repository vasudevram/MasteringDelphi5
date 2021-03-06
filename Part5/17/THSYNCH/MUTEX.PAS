unit Mutex;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls;

type
  TListThread = class (TThread)
  private
    Str: String;
  protected
    procedure AddToList;
    procedure Execute; override;
  public
    LBox: TListBox;
  end;

  TForm4 = class(TForm)
    BtnStart: TButton;
    ListBox1: TListBox;
    ListBox2: TListBox;
    procedure BtnStartClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    Th1, Th2: TListThread;
  public
    { Public declarations }
  end;

var
  Form4: TForm4;
  Letters: string = 'AAAAAAAAAAAAAAAAAAAA';
  hMutex: THandle;

implementation

{$R *.DFM}

procedure TListThread.AddToList;
begin
  if Assigned (LBox) then
    LBox.Items.Add (Str);
end;

procedure TListThread.Execute;
var
  I, J, K: Integer;
begin
  for I := 0 to 50 do
  begin
    WaitForSingleObject (hMutex, INFINITE);
    for J := 1 to 20 do
      for K := 1 to 2601 do // useless repetition...
        if Letters [J] < 'Z' then
          Letters [J] := Succ (Letters [J])
        else
          Letters [J] := 'A';
    Str := Letters;
    ReleaseMutex (hMutex);
    Synchronize (AddToList);
  end;
end;

procedure TForm4.BtnStartClick(Sender: TObject);
begin
  ListBox1.Clear;
  ListBox2.Clear;
  Th1 := TListThread.Create (True);
  Th2 := TListThread.Create (True);
  Th1.FreeOnTerminate := True;
  Th2.FreeOnTerminate := True;
  Th1.LBox := Listbox1;
  Th2.LBox := Listbox2;
  Th1.Resume;
  Th2.Resume;
end;

procedure TForm4.FormCreate(Sender: TObject);
begin
  hMutex := CreateMutex (nil, false, nil);
end;

procedure TForm4.FormDestroy(Sender: TObject);
begin
  CloseHandle (hMutex);
end;


end.
