unit PhisicsControllerLoggingUnit;

interface

uses SysUtils, Dialogs, System.Generics.Collections, stdCtrls,
      ControllersUnit, PhisicsControllerExceptionUnit,
        CodeSiteLogging;

type
  PhisicsControllerLogging = class(TInterfacedObject, Controllers)
  private
    /// <link>aggregation</link>
    PhisicsControllerExcept: PhisicsControllerException;
  public
    procedure setTest(caption: string);
    function getMenu: TList<string>;
    function getQuest: TList<string>;
    function getAnswer: TList<string>;
    function getCorrect: TDictionary<integer, integer>;
  end;

implementation

{ PhisicsControllerException }

function PhisicsControllerLogging.getAnswer: TList<string>;
begin
  result := TList<string>.create;
  result := PhisicsControllerExcept.getAnswer;
  CodeSite.Send('PhisicsControllerLogging.getAnswer');
end;

function PhisicsControllerLogging.getCorrect: TDictionary<integer, integer>;
begin
  result := TDictionary<integer, integer>.create;
  result := PhisicsControllerExcept.getCorrect;
  CodeSite.Send('PhisicsControllerLogging.getCorrect');
end;

function PhisicsControllerLogging.getMenu: TList<string>;
begin
  PhisicsControllerExcept:= PhisicsControllerException.Create;

  result := TList<string>.create;
  result := PhisicsControllerExcept.getMenu;
  CodeSite.Send('PhisicsControllerLogging.getMenu');
end;

function PhisicsControllerLogging.getQuest: TList<string>;
begin
 result := TList<string>.create;
 result := PhisicsControllerExcept.getQuest;
 CodeSite.Send('PhisicsControllerLogging.getQuest');
end;

procedure PhisicsControllerLogging.setTest(caption: string);
begin
  PhisicsControllerExcept.setTest(caption);
  CodeSite.Send('PhisicsControllerLogging.setTest');
end;

end.
