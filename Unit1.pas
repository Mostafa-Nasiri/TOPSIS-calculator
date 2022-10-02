unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, XPMan, Grids, Buttons, Spin,math, CheckLst,
  ExtCtrls, ImgList;

type
  TForm1 = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    XPManifest1: TXPManifest;
    sg1: TStringGrid;
    BitBtn1: TBitBtn;
    sg2: TStringGrid;
    BitBtn2: TBitBtn;
    TabSheet5: TTabSheet;
    TabSheet6: TTabSheet;
    TabSheet7: TTabSheet;
    BitBtn4: TBitBtn;
    asg1: TStringGrid;
    sg3: TStringGrid;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    sg4: TStringGrid;
    sg5: TStringGrid;
    Button4: TButton;
    Memo1: TMemo;
    ListBox1: TListBox;
    Label1: TLabel;
    BitBtn3: TBitBtn;
    ccount: TSpinEdit;
    rCount: TSpinEdit;
    Label2: TLabel;
    procedure BitBtn2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure sg1DblClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure Label2Click(Sender: TObject);
    procedure rcountChange(Sender: TObject);
    procedure ccountChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
   
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation
{$R *.dfm}

procedure TForm1.BitBtn2Click(Sender: TObject);
begin
sg1.Rows[0].Delimiter:=',';
sg1.Rows[0].DelimitedText:=' ,Price,Speed,Acceleration,Service';
sg1.Rows[1].Delimiter:=',';
sg1.Rows[1].DelimitedText:=' -OR+,-,+,+,+';
sg1.Rows[2].Delimiter:=',';
sg1.Rows[2].DelimitedText:='BMW,5,8,8,3';
sg1.Rows[3].Delimiter:=',';
sg1.Rows[3].DelimitedText:='Audi,6,10,9,2';
sg1.Rows[4].Delimiter:=',';
sg1.Rows[4].DelimitedText:='Benz,8,11,6,3';

rCount.Value:=5;
CCount.Value:=5;
sg1.ColCount:=5;
sg1.rowCount:=5;
end;

procedure TForm1.FormCreate(Sender: TObject);
var
i:integer;
begin
TabSheet1.Show;
application.Title:=form1.Caption;

rCount.Value:=sg1.RowCount;
CCount.Value:=sg1.colCount;

for i:=1 to 50 do
begin
sg1.Cells[i,0]:='C'+inttostr(i);
sg1.Cells[0,i+1]:='A'+inttostr(i);
sg2.Cells[i,0]:='C'+inttostr(i);
sg2.Cells[0,i]:='A'+inttostr(i);
sg3.Cells[i,0]:='C'+inttostr(i);
sg3.Cells[0,i+1]:='A'+inttostr(i);
sg4.Cells[i,0]:='C'+inttostr(i);
sg5.Cells[i,0]:=inttostr(i);
end;
sg1.Cells[0,1]:=' - OR +';
sg3.Cells[0,1]:=' - OR +';
sg4.Cells[0,1]:='V+';
sg4.Cells[0,2]:='V-';
sg5.Cells[0,1]:='d+';
sg5.Cells[0,2]:='d-';
sg5.Cells[0,3]:='CL';

end;

procedure TForm1.FormShow(Sender: TObject);
begin
BitBtn2.Click;
BitBtn2.Click;
end;

procedure TForm1.Label2Click(Sender: TObject);
begin
    Label2.Caption:=inttostr( sg1.colCount);
end;

procedure TForm1.sg1DblClick(Sender: TObject);
begin
  showmessage(inttostr(sg1.Selection.Left));;
end;

procedure TForm1.BitBtn1Click(Sender: TObject);
var
i,x:integer;
val:real;
begin

 sg1.RowCount:=rCount.Value;
sg2.RowCount:=rCount.Value;
sg3.RowCount:=rCount.Value;
asg1.RowCount:=rCount.Value;
 sg5.colCount:=rCount.Value-1;

 for x:=1 to sg1.colCount-1 do
 begin
 val:=0;
 for i:=2 to sg1.rowCount-1 do
 begin
 if sg1.Cells[x,i]='' then sg1.Cells[x,i]:='0';
 val:=val+(strtoint(sg1.Cells[x,i])*strtoint(sg1.Cells[x,i]));
 end;

 for i:=2 to sg2.rowCount-1 do
 begin

 sg2.Cells[x,i-1]:=FormatFloat('0.000' ,strtoint(sg1.Cells[x,i])/SQRT(val));
 end;

 end;
 sg2.RowCount:= sg1.RowCount-1;
  BitBtn4.Click;
 Button1.Click;
end;

procedure TForm1.BitBtn4Click(Sender: TObject);
var
i,x:integer;
val,E,k:real;
begin
asg1.rowCount:= sg1.rowCount-1 ;
asg1.colCount:= sg1.colCount ;
for i:=1 to  sg1.RowCount-2 do asg1.Cells[0,i]:='A'+inttostr(i);
for i:=1 to  sg1.colCount-1 do asg1.Cells[i,0]:='C'+inttostr(i);

for x:=1 to sg1.colCount-1 do
 begin
 val:=0;
 for i:=2 to sg1.rowCount-1 do
 begin
 val:=val+(strtoint(sg1.Cells[x,i]));
 end;

 for i:=2 to asg1.rowCount do
 begin

 asg1.Cells[x,i-1]:=FormatFloat('0.000' ,strtoint(sg1.Cells[x,i])/val);
 end;

 end;
 asg1.RowCount:= asg1.RowCount+2;
 asg1.Cells[0,asg1.rowCount-1]:='E';

 k:=(1/ln(asg1.rowCount-3));


 for x:=1 to asg1.colCount-1 do
 begin
 val:=0;
for i:=2 to asg1.rowCount-2 do
begin
val:=val+(StrToFloat(asg1.Cells[x,i-1]))*ln(StrToFloat(asg1.Cells[x,i-1]));

end;
E:=-1*k*val;
  asg1.Cells[x,asg1.rowCount-2]:='E'+inttostr(x);
  asg1.Cells[x,asg1.rowCount-1]:=FormatFloat('0.000' ,E);
end;
asg1.RowCount:= asg1.RowCount+1;
asg1.Cells[0,asg1.rowCount-1]:='1-Ej';
for x:=1 to asg1.colCount-1 do
asg1.Cells[x,asg1.rowCount-1]:=FormatFloat('0.000' ,1- StrToFloat( asg1.Cells[x,asg1.rowCount-2]) );

asg1.colCount:= asg1.colCount+1;
asg1.Cells[asg1.colCount-1,asg1.rowCount-2]:='1-Ej';
E:=0;
for x:=1 to asg1.colCount-2 do
E:=E+StrToFloat( asg1.Cells[x,asg1.rowCount-1]) ;

asg1.Cells[asg1.colCount-1,asg1.rowCount-1]:=FloatToStr(E);

asg1.RowCount:= asg1.RowCount+2;
asg1.Cells[0,asg1.rowCount-1]:='W';

for x:=1 to asg1.colCount-1 do
begin
asg1.Cells[x,asg1.rowCount-2]:='W'+inttostr(x);
asg1.Cells[x,asg1.rowCount-1]:=FormatFloat('0.000' ,StrToFloat( asg1.Cells[x,asg1.rowCount-3])/StrToFloat( asg1.Cells[asg1.colCount-1,asg1.rowCount-3]));
end;
asg1.Cells[asg1.colCount-1,asg1.rowCount-2]:='Wj';
end;

procedure TForm1.Button1Click(Sender: TObject);
var
i,x:integer;
begin
  for i:=1 to sg1.ColCount-1 do
  begin
  sg3.Cells[i,1]:=sg1.Cells[i,1];
  for x:=1 to sg1.rowCount-2 do
  begin
  sg3.Cells[i,x+1]:=FormatFloat('0.000' ,StrToFloat(asg1.Cells[i,asg1.RowCount-1])*StrToFloat(sg2.Cells[i,x]));
  end;
  end;

 Button2.Click;
 Button3.Click;
 Button4.Click;
end;

procedure TForm1.Button2Click(Sender: TObject);
var
i,x:integer;
ma:real;
begin

for x:=1 to sg3.colCount-1  do
begin
ma:=-1;
if sg3.Cells[x,1]='+' then
begin
for i:=1 to sg3.rowCount-2  do
begin

ma:=max(ma,StrToFloat(sg3.Cells[x,i+1]));
end;

end
else
begin
for i:=1 to sg3.rowCount-2  do
begin

ma:=max(ma,-1*StrToFloat(sg3.Cells[1,i+1]));
end;
ma:=ma*-1
end;

sg4.Cells[x,1]:= floattostr(ma);
end;

end ;

procedure TForm1.Button3Click(Sender: TObject);
var
i,x:integer;
mi:real;
begin

for x:=1 to sg3.colCount-1  do
begin
mi:=1;
if sg3.Cells[x,1]='+' then
begin
for i:=1 to sg3.rowCount-2  do
begin

mi:=min(mi,StrToFloat(sg3.Cells[x,i+1]));
end;

end
else
begin

for i:=1 to sg3.rowCount-2  do
begin
mi:=min(mi,-1*StrToFloat(sg3.Cells[x,i+1]));
end;
mi:=-1*mi ;
end;
sg4.Cells[x,2]:= floattostr(mi);
end;

end;

procedure TForm1.Button4Click(Sender: TObject);
var
i,x:integer;
s:string;
begin
for x:=1 to sg5.colCount-1 do
for i:=1 to sg5.rowCount-1 do
sg5.Cells[x, i]:='0' ;
//d+
for x:=1 to  sg3.rowCount-2 do
begin
for i:=1 to sg3.ColCount-1 do
begin
sg5.Cells[x, 1]:=floattostr(StrToFloat(sg5.Cells[x, 1])+Power(StrToFloat(sg3.Cells[i,x+1])-StrToFloat(sg4.Cells[i,1]),2));
end;
sg5.Cells[x, 1]:=FormatFloat('0.000' ,sqrt(StrToFloat(sg5.Cells[x, 1])));
end;
//d-
for x:=1 to sg3.rowCount-2 do
begin
for i:=1 to sg3.ColCount-1 do
begin
sg5.Cells[x, 2]:=floattostr(StrToFloat(sg5.Cells[x, 2])+Power(StrToFloat(sg3.Cells[i,x+1])-StrToFloat(sg4.Cells[i,2]),2));
end;
sg5.Cells[x, 2]:=FormatFloat('0.000' ,sqrt(StrToFloat(sg5.Cells[x, 2])));
end;

Memo1.Lines.Text:='';
ListBox1.Clear;
//CL
for x:=1 to sg5.colCount-1 do
begin
sg5.Cells[x, 3]:=FormatFloat('0.000' ,StrToFloat(sg5.Cells[x, 2])/(StrToFloat(sg5.Cells[x, 2])+StrToFloat(sg5.Cells[x, 1])));
ListBox1.Items.Append(sg5.Cells[x, 3]+sg1.Cells[0,x+1]);
Memo1.Lines.Append('CL '+sg1.Cells[0,x+1]+'= '+sg5.Cells[x, 3]);

end;
for x:=1 to ListBox1.Items.Count do
begin

 if x =1 then Memo1.Lines.Append('----------------------------------------------');
  s:=ListBox1.Items.Strings[ListBox1.Items.Count-(x)];
   Delete(s,1,5);
   Memo1.Lines.Text:=  Memo1.Lines.Text+s  ;
   if x <> ListBox1.Items.Count then Memo1.Lines.Text:=  Memo1.Lines.Text+'>' ;
end;
TabSheet7.Show;
SendMessage(Memo1.Handle, EM_LINESCROLL, 0,Memo1.Lines.Count);
end;

procedure TForm1.ccountChange(Sender: TObject);
begin
sg1.colCount:=CCount.Value;
sg2.colCount:=CCount.Value;
sg3.colCount:=CCount.Value;
asg1.colCount:=CCount.Value+1;
sg4.colCount:=CCount.Value;
end;

procedure TForm1.rcountChange(Sender: TObject);
var
i:integer;
begin
sg1.RowCount:=rCount.Value;
sg2.RowCount:=rCount.Value;
sg3.RowCount:=rCount.Value;
asg1.RowCount:=rCount.Value;
 sg5.colCount:=rCount.Value-1;
for i:=1 to  sg1.RowCount-2 do asg1.Cells[0,i]:='A'+inttostr(i);
for i:=1 to  sg1.colCount-1 do asg1.Cells[i,0]:='C'+inttostr(i);

  form1.Repaint;
end;

procedure TForm1.BitBtn3Click(Sender: TObject);
begin
sg1.Rows[0].Delimiter:=',';
sg1.Rows[0].DelimitedText:=',,,,';
sg1.Rows[1].Delimiter:=',';
sg1.Rows[1].DelimitedText:=' -OR+,,,,';
sg1.Rows[2].Delimiter:=',';
sg1.Rows[2].DelimitedText:=',,,,';
sg1.Rows[3].Delimiter:=',';
sg1.Rows[3].DelimitedText:=',,,,';
sg1.Rows[4].Delimiter:=',';
sg1.Rows[4].DelimitedText:=',,,,';
sg1.ColCount:=5;
sg1.rowCount:=5;
end;

end.
