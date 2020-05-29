unit main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
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
  shouldToggle: integer;
begin
  shouldToggle := Random(6);
  if shouldToggle = 5 then begin
    Label1.Caption := 'BATMAN!';
  end
  else begin
   Label1.Caption := 'Na';
  end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  Randomize;
end;

end.
