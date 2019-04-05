unit MenuLoggingUnit;

interface

uses
  MainUnit,MenuExceptionUnit,
  System.Generics.Collections,dialogs,sysUtils,CodeSiteLogging;

type
  MenuLogging = class(TInterfacedObject, Main)
  private
    /// <link>aggregation</link>
    MenuExcept: MenuException;
  public
    function getMenu:TList<string>;
  end;

implementation

{ MenuException }

function MenuLogging.getMenu: TList<string>;
begin
  CodeSite.Send('Menu.getMenu');
  result:=TList<String>.create;
  MenuExcept:=MenuException.Create;
  Result:=MenuExcept.getMenu;
end;

end.
