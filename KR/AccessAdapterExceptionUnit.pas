unit AccessAdapterExceptionUnit;

interface

uses
  SysUtils, Dialogs, System.Generics.Collections,
    AdaptersUnit,AccessAdapterUnit;

type
  AccessAdapterException = class(TInterfacedObject, Adapters)
  private
    /// <link>aggregation</link>
    AccessAdapterSource: AccessAdapter;
  public
    function getAnswer:TList<String>;
    function getAnswerTableName:string;
    function getAnswerTable(answer:string):TList<string>;
    function getCorrect:TDictionary<integer,integer>;
    function getCorrectTableName:string;
    function getCorrectTable(correct:string):TDictionary<integer, integer>;
    function getQuest:TList<String>;
    function getQuestTableName:string;
    function getQuestTable(quest:string):TList<string>;
    function getMenu:TList<string>;
    procedure setTest(caption:string);
  published
    constructor create;
  end;

implementation

{ AccessAdapterException }

constructor AccessAdapterException.create;
begin
  try
    AccessAdapterSource:=AccessAdapter.create;
    AccessAdapterSource.create;
  except
    on E:Exception do
      showmessage('Error in AccessAdapter.create '+E.Message);
  end;
end;

function AccessAdapterException.getAnswer: TList<String>;
begin
  try
    result:=AccessAdapterSource.getAnswer;
  except
    on E:Exception do
      showmessage('Error in AccessAdapter.getAnswer '+E.Message);
  end;
end;

function AccessAdapterException.getAnswerTable(answer: string): TList<string>;
begin
  try
    result:=AccessAdapterSource.getAnswerTable(answer);
  except
    on E:Exception do
      showmessage('Error in AccessAdapter.getAnswerTable '+E.Message);
  end;
end;

function AccessAdapterException.getAnswerTableName: string;
begin
  try
    result:=AccessAdapterSource.getAnswerTableName;
  except
    on E:Exception do
      showmessage('Error in AccessAdapter.getAnswerTableName '+E.Message);
  end;
end;

function AccessAdapterException.getCorrect: TDictionary<integer, integer>;
begin
  try
    result:=AccessAdapterSource.getCorrect;
  except
    on E:Exception do
      showmessage('Error in AccessAdapter.getCorrect '+E.Message);
  end;
end;

function AccessAdapterException.getCorrectTable(correct: string): TDictionary<integer, integer>;
begin
  try
    result:=AccessAdapterSource.getCorrectTable(correct);
  except
    on E:Exception do
      showmessage('Error in AccessAdapter.getCorrectTable '+E.Message);
  end;
end;

function AccessAdapterException.getCorrectTableName: string;
begin
  try
    result:=AccessAdapterSource.getCorrectTableName;
  except
    on E:Exception do
      showmessage('Error in AccessAdapter.getCorrectTableName '+E.Message);
  end;
end;

function AccessAdapterException.getMenu: TList<string>;
begin
  try
    result:=AccessAdapterSource.getMenu;
  except
    on E:Exception do
      showmessage('Error in AccessAdapter.getMenu '+E.Message);
  end;
end;

function AccessAdapterException.getQuest: TList<String>;
begin
  try
    result:=AccessAdapterSource.getQuest;
  except
    on E:Exception do
      showmessage('Error in AccessAdapter.getQuest '+E.Message);
  end;
end;

function AccessAdapterException.getQuestTable(quest: string): TList<string>;
begin
  try
    result:=AccessAdapterSource.getQuestTable(quest);
  except
    on E:Exception do
      showmessage('Error in AccessAdapter.getQuestTable '+E.Message);
  end;
end;

function AccessAdapterException.getQuestTableName: string;
begin
  try
    result:=AccessAdapterSource.getQuestTableName;
  except
    on E:Exception do
      showmessage('Error in AccessAdapter.getQuestTableName '+E.Message);
  end;
end;

procedure AccessAdapterException.setTest(caption: string);
begin
  try
    AccessAdapterSource.setTest(caption);
  except
    on E:Exception do
      showmessage('Error in AccessAdapter.setTest '+E.Message);
  end;
end;

end.
