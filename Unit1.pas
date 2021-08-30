unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, VclTee.TeeGDIPlus, VCLTee.TeeSurfa,
  VCLTee.TeEngine, VCLTee.Series, Vcl.ExtCtrls, VCLTee.TeeProcs, VCLTee.Chart,
  Vcl.StdCtrls, math, VCLTee.TeeTools, VCLTee.TeeMagnifyTool, Vcl.ComCtrls;

type
  myArray = array [0..10000] of real;
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Edit2: TEdit;
    ListBox1: TListBox;
    ListBox2: TListBox;
    Chart1: TChart;
    Series1: TLineSeries;
    Chart2: TChart;
    Chart3: TChart;
    OpenDialog1: TOpenDialog;
    TeeGDIPlus1: TTeeGDIPlus;
    TeeGDIPlus2: TTeeGDIPlus;
    Label3: TLabel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet7: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    Button5: TButton;
    Series2: TSurfaceSeries;
    ChartTool2: TRotateTool;
    Series3: TSurfaceSeries;
    Label4: TLabel;
    Edit3: TEdit;
    TabSheet5: TTabSheet;
    Button6: TButton;
    Chart4: TChart;
    Series4: TLineSeries;
    TabSheet2: TTabSheet;
    Button7: TButton;
    Chart5: TChart;
    Series5: TBarSeries;
    Button8: TButton;
    Label5: TLabel;
    Edit4: TEdit;
    Series6: TLineSeries;
    Label6: TLabel;
    Edit5: TEdit;
    Label7: TLabel;
    Edit6: TEdit;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    Label8: TLabel;
    Button9: TButton;
    procedure puncak(x: myArray);
    procedure segmentasi(v,w,x,y :extended);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  waktu : myArray;
  x, lpf, hpf, sha_en, env_curve, gained_env:  myArray;
  norm_in, norm_env :myArray;
  f : array [1..200] of real;
  tk : array [1..200] of extended;
  jmldata : integer;
  s, ds, dtau, w0, dt, t, tau : extended;
  cwt, cwt_im, cwt_re, norm_mag : array [0..1000,0..10000] of real;
  dft, dft_im, dft_re : myArray;
  re, im, std_sha_en, temp, upper, lower : extended;

const
  jml_baris =100;
  jml_kolom =200;
  fs = 1000;

implementation

{$R *.dfm}
//OPEN FILE
procedure TForm1.Button1Click(Sender: TObject);
var
  i :integer;
  namadata : textfile;
begin
  i:=1;
  if OpenDialog1.Execute = true then
  begin
    AssignFile(namadata,OpenDialog1.FileName);
    reset(namadata);
    while not EOF (namadata) do
    begin
      readln(namadata,waktu[i],x[i]);
      inc(i);
    end;
    jmldata := i;
    label3.Caption := 'Jumlah Sampel: ' + inttostr(jmldata-1);
    closefile(namadata);
  end;

  for i := 1 to jmldata do
  begin
    Series1.AddXY(waktu[i],x[i]);
  end;
end;

procedure TForm1.segmentasi(v,w,x,y: extended);
var
  i: Integer;
begin
  for i := 1 to jmldata do
  begin
    if (waktu[i] >= v) and (waktu[i] < w) then
    begin
      gained_env[i] := gained_env[i];
    end else
    if (waktu[i] >= x) and (waktu[i] < y) then
    begin
      gained_env[i] := gained_env[i];
    end
    else
    begin
      gained_env[i] := 0;
    end;
  end;
end;

//CWT
procedure TForm1.Button2Click(Sender: TObject);
var
  i,j,k : integer;
begin
  ListBox1.Clear; ListBox2.Clear;
  s  := strtofloat(Edit1.Text); //skala
  ds := strtofloat(Edit2.Text); //delta skala
  Edit3.Text := inttostr(fs);

  w0 := pi*sqrt(2/ln(2)); //f0 = 0.849 Hz
  dt := 1/fs;  // fs=1000
  dtau:=(jmldata-1)*dt/jml_kolom; //delta geser (time-shift)

  if RadioButton1.Checked = true then
  begin
    segmentasi(0.35,0.735,1.34,1.685);
    label8.Caption := 'Segmentasi S1 selesai';
  end;
  if RadioButton2.Checked = true then
  begin
    segmentasi(0.735,1.34,1.685,2);
    label8.Caption := 'Segmentasi S2 selesai';
  end;

  for i := 1 to jml_baris do     //scale
  begin
    tau:=0.0;
    for j := 1 to jml_kolom do  //translation
    begin
      t:=0.0;
      for k := 1 to jmldata do
      begin
        re := 1/sqrt(s)* exp(-(t-tau)/s*(t-tau)/s/2.0)*cos(w0*(t-tau)/s); //mother wavelet
        im := 1/sqrt(s)*-exp(-(t-tau)/s*(t-tau)/s/2.0)*sin(w0*(t-tau)/s); //mother wavelet;
        cwt_re[j,i] := cwt_re[j,i] + gained_env[k]*re;
        cwt_im[j,i] := cwt_im[j,i] + gained_env[k]*im;
        t := t + dt;
      end;
      cwt[j,i]:=sqrt(sqr(cwt_re[j,i]) + sqr(cwt_im[j,i]));
      tau := tau + dtau;
    end;
    f[i]:=(0.849/(s+(1*ds)));
    listbox1.Items.Add('Skala[' + inttostr(i) + ']= '+ floattostrf(f[i],ffnumber,5,5) + ' Hz');
    s:= s + ds;
  end;

  for j := 1 to jml_kolom do
  begin
    tk[j]:=(waktu[jmldata-1]/jml_kolom)*j;
    listbox2.Items.Add('Waktu[' + inttostr(j) + ']= ' + floattostrf(tk[j],ffnumber,5,5) + ' detik');
  end;
end;

//contour plot
procedure TForm1.Button3Click(Sender: TObject);
var
  j,i : integer;
begin
  Series2.Clear;
  upper := 0;
  for i := 1 to jml_baris do
  begin
    for j := 1 to jml_kolom do
    begin
      if cwt[j,i] > upper then
      begin
        upper := cwt[j,i];
      end;
    end;
  end;

  for i := 1 to jml_baris do
  begin
    for j := 1 to jml_kolom do
    begin
      norm_mag[j,i] := cwt[j,i]/upper;
    end;
  end;

  for i := 1 to jml_baris do
  begin
    for j := 1 to jml_kolom do
    begin
      series2.AddXYZ(j,norm_mag[j,i],i);
    end;
  end;
end;

//3D plot
procedure TForm1.Button4Click(Sender: TObject);
var
  i,j :integer;
begin
  Series3.Clear;
  for i := 1 to jml_baris do
  begin
    for j := 1 to jml_kolom do
    begin
      series3.AddXYZ(j,cwt[j,i],i);
    end;
  end;
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
  Series1.Clear; Series2.Clear; Series3.Clear;
  Series4.Clear; Series5.Clear; Series6.Clear;
  ListBox1.Clear; ListBox2.Clear;
  Label3.Caption := '';
end;

procedure TForm1.Button6Click(Sender: TObject);
var
  i :integer;
begin
  jmldata := 1000;
  for i := 1 to jmldata do
  begin
    x[i] := 1*sin(2*pi*50*i/jmldata);
    Series4.AddXY(i,x[i]);
  end;
end;

procedure TForm1.Button7Click(Sender: TObject);
var
  i,j :integer;
begin
  Series5.Clear;
  for i := 1 to jmldata do
  begin
    dft_re[i] := 0;
    dft_im[i] := 0;
    for j := 1 to jmldata do
    begin
      dft_re[i] := dft_re[i] + x[j]*cos(2*pi*i*j/jmldata);
      dft_im[i] := dft_im[i] + x[j]*sin(2*pi*i*j/jmldata);
    end;
    dft[i] := sqrt(sqr(dft_re[i]) + sqr(dft_im[i]))/jmldata;
  end;

  for i := 1 to round(jmldata/2) do
  begin
    Series5.AddXY(i,dft[i]);
  end;
end;

procedure TForm1.puncak(x: myArray);
var
  i :integer;
begin
  upper := 0; lower := 0;
  for i := 1 to jmldata do
  begin
    if x[i] > upper then
    begin
      upper := x[i];
    end else
    if x[i] < lower then
    begin
      lower := x[i];
    end;
  end;
end;

procedure TForm1.Button8Click(Sender: TObject);
var
  i: Integer;
  fcL, fcH, fcL2, jum, sigma, rata, k :extended;
begin
  Series1.Clear; Series6.Clear;

  //fc untuk filter sinyal input
  fcL := strtofloat(Edit4.Text);
  fcH := strtofloat(Edit5.Text);
  for i := 1 to jmldata do
  begin
    lpf[i] := ((((8*sqr(fs))-(2*sqr(fcL)))*lpf[i-1])-(((4*sqr(fs))-((2*sqrt(2)*fcL)*fs)+(sqr(fcL)))*lpf[i-2])+(sqr(fcL)*x[i])+(2*sqr(fcL)*x[i-1])+(sqr(fcL)*x[i-2]))/((4*sqr(fs))+((2*sqrt(2)*fcL)*fs)+(sqr(fcL)));
    hpf[i] := (4*lpf[i]-8*lpf[i-1]+4*lpf[i-2]-(2*sqr(1/fs)*sqr(fcH)-8)*hpf[i-1]-(sqr(fcH)*sqr(1/fs)-sqrt(2)*fcH*2*(1/fs)+4)*hpf[i-2])/(sqr(fcH)*sqr(1/fs)+sqrt(2)*fcH*2*(1/fs)+4);
  end;

  puncak(hpf);
  for i := 1 to jmldata do
  begin
    norm_in[i]:= hpf[i]/upper;
    sha_en[i] := -sqr(norm_in[i])*log10(sqr(norm_in[i]));
    sha_en[i] := sha_en[i] + sha_en[i]*(-1/jmldata);
    Series1.AddXY(i/fs,norm_in[i]);
  end;

  jum := 0;
  sigma := 0;
  for i := 1 to jmldata do
  begin
    jum := jum + sha_en[i];
  end;
  rata := jum/jmldata;

  for i := 1 to jmldata do
  begin
    k     := sha_en[i] - rata;
    sigma := sigma + sqr(k);
  end;
  std_sha_en := sqrt(sigma/(jmldata-1));

  for i := 1 to jmldata do
  begin
    env_curve[i] := (sha_en[i] - rata)/std_sha_en;
    lpf[i] := 0;
  end;

  fcL2 := strtofloat(Edit6.Text);  //fcL untuk filter kurva amplop
  for i := 1 to jmldata do
  begin
    lpf[i] := ((((8*sqr(fs))-(2*sqr(fcL2)))*lpf[i-1])-(((4*sqr(fs))-((2*sqrt(2)*fcL2)*fs)+(sqr(fcL2)))*lpf[i-2])+(sqr(fcL2)*env_curve[i])+(2*sqr(fcL2)*env_curve[i-1])+(sqr(fcL2)*env_curve[i-2]))/((4*sqr(fs))+((2*sqrt(2)*fcL2)*fs)+(sqr(fcL2)));
  end;

  puncak(lpf);
  for i := 1 to jmldata do
  begin
    norm_env[i] := (lpf[i]/upper);
  end;

  puncak(norm_env);
  for i := 1 to jmldata do
  begin
    gained_env[i] := abs(lower) + norm_env[i];
    Series6.AddXY(i/fs, gained_env[i]);
  end;
end;

end.
