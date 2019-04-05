unit MenuUnit;

interface

uses  MainUnit, System.Generics.Collections,
        AccessAdapterLoggingUnit, AdaptersUnit;

type
  Menu = class(TInterfacedObject, Main)
  public
    /// <link>aggregation</link>
    Adapter1: Adapters;
    function getMenu: TList<string>;
  end;
implementation

{ Menu }

function Menu.getMenu: TList<string>;
begin
  result:=TList<string>.create;
  Adapter1:= AccessAdapterLogging.Create;
  result:=Adapter1.getMenu;
end;

end.
