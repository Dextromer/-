unit PhisicsControllerExceptionUnit;

interface

uses SysUtils, Dialogs, System.Generics.Collections, stdCtrls,
      ControllersUnit,PhisicsControllerUnit;

type
  PhisicsControllerException = class(TInterfacedObject, Controllers)
  private
    /// <link>aggregation</link>
    PhisicsControllerSource: PhisicsController;
  public
    procedure setTest(caption: string);
    function getMenu: TList<string>;
    function getQuest: TList<string>;
    function getAnswer: TList<string>;
    function getCorrect: TDictionary<integer, integer>;
  end;

implementation

{ PhisicsControllerException }

function PhisicsControllerException.getAnswer: TList<string>;
begin
  try
    result := TList<string>.create;
    result := PhisicsControllerSource.getAnswer;
  except
    on E: Exception do
      ShowMessage('Error in PhisicsController.GetAnswer '+E.Message);
  end;
end;

function PhisicsControllerException.getCorrect: TDictionary<integer, integer>;
begin
  try
    result := TDictionary<integer, integer>.create;
    result := PhisicsControllerSource.getCorrect;
  except
    on E: Exception do
      ShowMessage('Error in PhisicsController.GetCorrect '+E.Message);
  end;
end;

function PhisicsControllerException.getMenu: TList<string>;
begin
  try
    PhisicsControllerSource:=PhisicsController.Create;
    result := TList<string>.create;
    result := PhisicsControllerSource.getMenu;
  except
    on E: Exception do
      ShowMessage('Error in PhisicsController.GetMenu '+E.Message);
  end;
end;

function PhisicsControllerException.getQuest: TList<string>;
begin
  try
    result := TList<string>.create;
    result := PhisicsControllerSource.getQuest;
  except
    on E: Exception do
      ShowMessage('Error in PhisicsController.GetQuest '+E.Message);
  end;
end;

procedure PhisicsControllerException.setTest(caption: string);
begin
  try
    PhisicsControllerSource.setTest(caption);
  except
    on E: Exception do
      ShowMessage('Error in PhisicsController.setTest '+E.Message);
  end;
end;

end.
