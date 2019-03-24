unit PhisicsControllerUnit;

interface

uses SysUtils, Dialogs,
  Test1Unit, TestsUnit, MenuUnit, MainUnit, ControllersUnit,
  System.Generics.Collections, stdCtrls,
    CodeSiteLogging;

type
  EPhisicsControllerError = class(Exception);

  PhisicsController = class(TInterfacedObject, Controllers)
  private
    Test: Tests;
    /// <link>aggregation</link>
    Menu1: Main;
  public
    Button1:TButton;
    procedure setTest(caption: string);

    function getMenu: TList<string>;
    function getQuest: TList<string>;
    function getAnswer: TList<string>;
    function getCorrect: TDictionary<integer, integer>;

  end;

implementation

function PhisicsController.getAnswer: TList<string>;
var a,b:integer;
begin
  a:=5; b:=4;
  CodeSite.Send('a', Button1);//отправили сообщение с числом
  CodeSite.Send(csmError, 'Сообщение типа "Ошибка"');
  CodeSite.Assert(a<b, 'Высота окна больше его ширины');


  try
    result := TList<string>.create;
    result := Test.getAnswer;
    raise EPhisicsControllerError.create('PhisicsController.getAnswer');
  except
    on E: EPhisicsControllerError do
      ShowMessage(E.Message);
  end;

end;

function PhisicsController.getCorrect: TDictionary<integer, integer>;
begin
  try
    result := TDictionary<integer, integer>.create;
    result := Test.getCorrect;
    raise EPhisicsControllerError.create('PhisicsController.getCorrect');
  except
    on E: EPhisicsControllerError do
      ShowMessage(E.Message);
  end;
end;

function PhisicsController.getQuest: TList<string>;
begin
  try
    result := TList<string>.create;
    result := Test.getQuest;

    raise EPhisicsControllerError.create('PhisicsController.getQuest');
  except
    on E: EPhisicsControllerError do
      ShowMessage(E.Message);
  end;

end;

function PhisicsController.getMenu: TList<string>;
begin
  try
    result := TList<string>.create;
    Menu1 := Menu.create;
    result := Menu1.getMenu;
    raise EPhisicsControllerError.create('PhisicsController.getMenu');
  except
    on E: EPhisicsControllerError do
      ShowMessage(E.Message);
  end;
end;

procedure PhisicsController.setTest(caption: string);
begin
  try
    Test := Test1.create;
    Test.setTest(caption);
  raise EPhisicsControllerError.Create('PhisicsController.setTest');
  except
    on E:EPhisicsControllerError do ShowMessage(E.Message);
  end;

end;

end.
