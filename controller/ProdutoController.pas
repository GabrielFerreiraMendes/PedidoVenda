unit ProdutoController;

interface

uses ProdutoService, Produto, SysUtils, System.Generics.Collections,
  System.Classes;

type
  TProdutoController = class
  private
    listaProduto: TObjectList<TProduto>;
  public
    function getByCodigo(codigo: String): TProduto;
    function getListaCodigo(): TStrings;
    constructor Create(); overload;
    destructor Destroy(); overload;
  end;

implementation

{ TProdutoController }

constructor TProdutoController.Create;
begin
  inherited;
  listaProduto := TProdutoService.getListaProduto();
end;

destructor TProdutoController.Destroy;
begin
  inherited;
  FreeAndNil(listaProduto);
end;

function TProdutoController.getByCodigo(codigo: String): TProduto;
var
  Produto: TProduto;
  I: Integer;
begin
  Result := nil;

  for I := 0 to Length(listaProduto.ToArray) - 1 do
  begin
    if listaProduto.ToArray[I].codigo = StrToInt(codigo) then
    begin
      Result := listaProduto.ToArray[I];

      Break;
    end;
  end;
end;

function TProdutoController.getListaCodigo: TStrings;
var
  listaCodigos: TStringList;
  Produto: TProduto;
begin
  listaCodigos := TStringList.Create;

  for Produto in listaProduto do
    listaCodigos.Add(Produto.codigo.ToString);

  Result := listaCodigos;
end;

end.
