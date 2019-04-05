program Project1Tests;
{

  Delphi DUnit Test Project
  -------------------------
  This project contains the DUnit test framework and the GUI/Console test runners.
  Add "CONSOLE_TESTRUNNER" to the conditional defines entry in the project options
  to use the console test runner.  Otherwise the GUI test runner will be used by
  default.

}

{$IFDEF CONSOLE_TESTRUNNER}
{$APPTYPE CONSOLE}
{$ENDIF}

uses
  DUnitTestRunner,
  TestAccessAdapterUnit in 'TestAccessAdapterUnit.pas',
  AccessAdapterUnit in '..\AccessAdapterUnit.pas',
  TestMenuUnit in 'TestMenuUnit.pas',
  MenuUnit in '..\MenuUnit.pas',
  TestTest1Unit in 'TestTest1Unit.pas',
  Test1Unit in '..\Test1Unit.pas',
  TestPhisicsControllerUnit in 'TestPhisicsControllerUnit.pas',
  PhisicsControllerUnit in '..\PhisicsControllerUnit.pas',
  TestsUnit in '..\TestsUnit.pas',
  ControllersUnit in '..\ControllersUnit.pas',
  Test1LoggingUnit in '..\Test1LoggingUnit.pas',
  MenuLoggingUnit in '..\MenuLoggingUnit.pas',
  MainUnit in '..\MainUnit.pas',
  AdaptersUnit in '..\AdaptersUnit.pas',
  AccessAdapterLoggingUnit in '..\AccessAdapterLoggingUnit.pas',
  AccessAdapterExceptionUnit in '..\AccessAdapterExceptionUnit.pas',
  Test1ExceptionUnit in '..\Test1ExceptionUnit.pas',
  MenuExceptionUnit in '..\MenuExceptionUnit.pas',
  PhisicsControllerLoggingUnit in '..\PhisicsControllerLoggingUnit.pas',
  PhisicsControllerExceptionUnit in '..\PhisicsControllerExceptionUnit.pas',
  Unit1 in '..\Unit1.pas' {Form1};

{R *.RES}

begin
  DUnitTestRunner.RunRegisteredTests;
end.

