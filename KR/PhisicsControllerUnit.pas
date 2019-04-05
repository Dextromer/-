unit PhisicsControllerUnit;

interface

uses SysUtils, Dialogs,System.Generics.Collections, stdCtrls,
  Test1LoggingUnit, TestsUnit, MenuLoggingUnit, MainUnit, ControllersUnit;

type

  PhisicsController = class(TInterfacedObject, Controllers)
  private
    /// <link>aggregation</link>
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
begin
  result := TList<string>.create;
  result := Test.getAnswer;
end;

function PhisicsController.getCorrect: TDictionary<integer, integer>;
begin
    result := TDictionary<integer, integer>.create;
    result := Test.getCorrect;
end;

function PhisicsController.getQuest: TList<string>;
begin
    result := TList<string>.create;
    result := Test.getQuest;
end;

function PhisicsController.getMenu: TList<string>;
begin
    result := TList<string>.create;
    Menu1 := MenuLogging.create;
    result := Menu1.getMenu;
end;

procedure PhisicsController.setTest(caption: string);
begin
    Test := Test1Logging.create;
    Test.setTest(caption);
end;

end.
