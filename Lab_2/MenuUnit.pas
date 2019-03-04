unit MenuUnit;

interface

uses AccessAdapterUnit, AdaptersUnit, MainUnit, System.Generics.Collections;

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
  Adapter1:= AccessAdapter.Create;
  result:=Adapter1.getMenu;
end;

end.
