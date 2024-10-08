unit ProdutoService;

interface

uses uDmPrincipal, Produto, System.Generics.Collections,
  FireDAC.Comp.Client;

type
  TProdutoService = Class
  public
    class function getListaProduto(): TObjectList<TProduto>;
  End;

implementation

{ TProdutoService }

class function TProdutoService.getListaProduto: TObjectList<TProduto>;
var
  qry: TFDQuery;
  listaProduto: TObjectList<TProduto>;
begin
  qry := TFDQuery.Create(nil);
  listaProduto := TObjectList<TProduto>.Create;

  try
    qry.Connection := dmPrincipal.FDConnection1;

    qry.SQL.Clear;
    qry.SQL.Add('SELECT * FROM PRODUTO');
    qry.Open;

    qry.First;
    while not qry.Eof do
    begin
      listaProduto.Add(TProduto.Create(qry.FieldByName('CODIGO').AsInteger,
        qry.FieldByName('DESCRICAO').AsString, qry.FieldByName('PRECO')
        .AsCurrency));

      qry.Next;
    end;
  finally
    Result := listaProduto;
  end;
end;

end.
