unit Test1LoggingUnit;

interface

uses

  System.Generics.Collections,sysUtils,
  TestsUnit,Test1ExceptionUnit,
    CodeSiteLogging;
type
  Test1Logging = class(TInterfacedObject, Tests)
  private
    /// <link>aggregation</link>
    TestExcept: Test1Exception;
  public
    procedure setTest(caption:string);
    function getQuest:TList<String>;
    function getAnswer:TList<String>;
    function getCorrect:TDictionary<integer,integer>;
  published
    constructor create;
  end;

implementation

{ Test1Logging }

constructor Test1Logging.create;
begin
  CodeSite.Send('Test1.create');
  TestExcept:=Test1Exception.create;
  TestExcept.create;
end;

function Test1Logging.getAnswer: TList<String>;
begin
  CodeSite.Send('Test1.getAnswer');
  result:=TestExcept.getAnswer;
end;

function Test1Logging.getCorrect: TDictionary<integer, integer>;
begin
  CodeSite.Send('Test1.getCorrect');
  result:=TestExcept.getCorrect;
end;

function Test1Logging.getQuest: TList<String>;
begin
  CodeSite.Send('Test1.getQuest');
  result:=TestExcept.getQuest;
end;

procedure Test1Logging.setTest(caption: string);
begin
  CodeSite.Send('Test1.setTest');
  TestExcept.setTest(caption);
end;

end.
