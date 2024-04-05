unit Gmain;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    btnHitung: TButton;
    edtNilai: TEdit;
    edtNama: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    lblStatus: TLabel;
    lblGrade: TLabel;
    Panel1: TPanel;
    procedure btnHitungClick(Sender: TObject);
    procedure lblStatusClick(Sender: TObject);
  private
    Nama: String;
    Nilai: Double;
    Hitung: Double;
    Status: String;
    Grade: String;
  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.btnHitungClick(Sender: TObject);
begin
    Nilai := StrToFloat(edtNilai.Text);

    if (Nilai > 100) or (Nilai < 0) then
       Status := 'Nilai tidak valid'
    else if (Nilai >= 70) then
       Status := 'Lulus'
    else
       Status := 'Tidak Lulus';

    case Status of
      'Lulus': lblStatus.Font.Color := clGreen;
    else
      lblStatus.Font.Color := clRed;
    end;

    if (Nilai > 100) or (Nilai < 0) then
       Grade := 'Nilai tidak valid'
    else if (Nilai >= 85) then
       Grade := 'A'
    else if (Nilai >= 75) then
         Grade := 'B'
    else if (Nilai >= 60) then
         Grade := 'C'
    else if (Nilai >= 45) then
         Grade := 'D'
    else
        Grade := 'E';

    case Grade of
      'A', 'B': lblGrade.Font.Color := clGreen;
      'C': lblGrade.Font.Color := clYellow;
    else
      lblGrade.Font.Color := clRed;
end;

    Label3.Caption := 'Status:';
    lblStatus.Caption := Status;
    Label4.Caption := 'Grade:';
    lblGrade.Caption := Grade;
end;

procedure TForm1.lblStatusClick(Sender: TObject);
begin

end;

end.

