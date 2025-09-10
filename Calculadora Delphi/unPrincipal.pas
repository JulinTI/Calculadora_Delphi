unit unPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    txtNum1: TEdit;
    Label2: TLabel;
    txtNum2: TEdit;
    btSomar: TButton;
    btSubtrair: TButton;
    btMultiplicar: TButton;
    btDividir: TButton;
    Label3: TLabel;
    txtResultado: TEdit;
    procedure btSomarClick(Sender: TObject);
  private
    { Private declarations }
    function calcularResultado(num1, num2: Real; operacao: String): Real;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}


{ TForm1 }


procedure TForm1.btSomarClick(Sender: TObject);
begin
  calcularResultado(StrToFloat(txtNum1.Text), (StrToFloat(txtNum1.Text))
end;

function TForm1.calcularResultado(num1, num2: Real; operacao: String): Real;
var
  resultado: Real;
begin

  if operacao = 'somar' then
    resultado := num1 + num2

  else if operacao = 'subtrair' then
    resultado := num1 - num2

  else if operacao = 'multiplicar' then
    resultado := num1 * num2

  else
    resultado := num1 / num2;

  Result := resultado;

end;

end.
