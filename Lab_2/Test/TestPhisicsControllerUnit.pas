unit TestPhisicsControllerUnit;
{

  Delphi DUnit Test Case
  ----------------------
  This unit contains a skeleton test case class generated by the Test Case Wizard.
  Modify the generated code to correctly setup and call the methods from the unit 
  being tested.

}

interface

uses
  TestFramework, PhisicsControllerUnit, ControllersUnit, System.Generics.Collections;

type
  // Test methods for class PhisicsController

  TestPhisicsController = class(TTestCase)
  strict private
    FPhisicsController: Controllers;
  public
    procedure SetUp; override;
    procedure TearDown; override;
  published
    procedure TestGetListAnswer;
    procedure TestGetQuestCaption;
    procedure TestSetTest;
    procedure TestGetMenu;
    procedure TestGetCorrect;
  end;

implementation

procedure TestPhisicsController.SetUp;
begin
  FPhisicsController := PhisicsController.Create;
  //FPhisicsController.setTest('Test2');
end;

procedure TestPhisicsController.TearDown;
begin
  //FPhisicsController.Free;
  FPhisicsController := nil;
end;

procedure TestPhisicsController.TestGetCorrect;
var
  ReturnValue1: TDictionary<integer, integer>;
begin
  FPhisicsController.setTest('Test2');
  ReturnValue1:=FPhisicsController.getCorrect;
  CheckEquals(ReturnValue1.Items[1], 1);
  CheckEquals(ReturnValue1.Items[2], 2);
  CheckNotEquals(ReturnValue1.Items[2], 1);

end;

procedure TestPhisicsController.TestGetListAnswer;
var
  ReturnValue1: TList<string>;
begin
  FPhisicsController.setTest('Test2');
  ReturnValue1:=FPhisicsController.getAnswer;
  CheckEquals(ReturnValue1.Items[0],
    '����������� ������ (������), �� ������� ��������, �� ���������� ������� ����������������');
  CheckNotEquals(ReturnValue1.Items[0], '�����');
  //CheckEquals(ReturnValue1.Items[1], '1');
  CheckNotEquals(ReturnValue1.Items[1], 'nnnnnnnn');
  CheckEquals(ReturnValue1.Count, 10);
  CheckNotEquals(ReturnValue1.Count, 3);
end;

procedure TestPhisicsController.TestGetQuestCaption;
var
  ReturnValue:TList<string>;
begin
  FPhisicsController.setTest('Test2');
  ReturnValue:=FPhisicsController.getQuest;
  CheckEquals(ReturnValue.Items[0], '����� ����������� ������������ �����.');
  CheckNotEquals(ReturnValue.Items[0], '');
end;

procedure TestPhisicsController.TestSetTest;
var
  caption:string;
  ReturnValue1: TList<string>;
  ReturnValue2: TList<string>;
begin
  FPhisicsController.setTest('Test2');
  caption:='Test2';
  FPhisicsController.setTest(caption);
  CheckEquals(caption, 'Test2');
  ReturnValue1:=FPhisicsController.getQuest;
  CheckEquals(ReturnValue1.Items[0], '����� ����������� ������������ �����.');
  CheckNotEquals(ReturnValue1.Items[0], '��� ������������ ��������� ������������ �����?');
  ReturnValue2:=FPhisicsController.getQuest;
  CheckEquals(ReturnValue2.Items[1], '��� ������������ ��������� ������������ �����?');
  CheckNotEquals(ReturnValue2.Items[1], '����� ����������� ������������ �����.');
  CheckNotEquals(ReturnValue1.Items[0], ReturnValue2.Items[1]);
end;

procedure TestPhisicsController.TestGetMenu;
var
  ReturnValue:TList<string>;
begin
  ReturnValue:=FPhisicsController.getMenu;
  CheckEquals(ReturnValue.Items[0],'�������� � ���������� ����������');
  CheckEquals(ReturnValue.Count,1);
end;

initialization
  // Register any test cases with the test runner
  RegisterTest(TestPhisicsController.Suite);

end.

