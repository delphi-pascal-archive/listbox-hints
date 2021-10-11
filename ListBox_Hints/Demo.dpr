{—————————————————————————————————————————————————————————————————————————}
{ Project : Demo.dpr                                                      }
{ Comment :                                                               }
{                                                                         }
{    Date : 23/03/2009 11:00:13                                           }
{  Author : Cirec                                                         }
{—————————————————————————————————————————————————————————————————————————}
{ Last modified                                                           }
{    Date : %MDAT%                                                        }
{  Author : %MAUT%                                                        }
{—————————————————————————————————————————————————————————————————————————}
program Demo;

uses
  Forms,
  Main in 'Main.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
