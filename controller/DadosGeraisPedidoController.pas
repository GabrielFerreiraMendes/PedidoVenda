unit DadosGeraisPedidoController;

interface

uses DadosGeraisPedido, DadosGeraisPedidoService, System.JSON, System.SysUtils,
  ProdutosPedido;

type
  TDadosGeraisPedidoController = class
  public
    procedure save(JSONObject: TJSONObject);
    function getByNumeroPedido(NumeroPedido: String): TJSONObject;
  end;

implementation

{ TDadosGeraisPedidoController }

function TDadosGeraisPedidoController.getByNumeroPedido(NumeroPedido: String): TJSONObject;
var
  pedidoInfo: TJSONObject;
  produtoInfo: TJSONObject;
  index: Integer;
  Pedido: TDadosGeraisPedido;
begin
  Pedido := TDadosGeraisPedidoService.getByNumeroPedido(NumeroPedido);

  pedidoInfo := TJSONObject.Create;

  pedidoInfo.AddPair('DataEmissao', Pedido.DataEmissao);
  pedidoInfo.AddPair('CodigoUsuario', Pedido.CodigoUsuario);
  pedidoInfo.AddPair('ValorTotal', Pedido.ValorTotal);

  produtoInfo := TJSONObject.Create;

  for index := 0 to Length(Pedido.ProdutosPedidos.ToArray) - 1 do
  begin
    produtoInfo.AddPair('CodigoProduto', Pedido.ProdutosPedidos.ToArray[index].CodigoProduto);
    produtoInfo.AddPair('Quantidade', Pedido.ProdutosPedidos.ToArray[index].Quantidade);
    produtoInfo.AddPair('ValorUnitario', Pedido.ProdutosPedidos.ToArray[index].ValorUnitario);
    produtoInfo.AddPair('ValorTotal', Pedido.ProdutosPedidos.ToArray[index].ValorTotal);
  end;

  pedidoInfo.AddPair('ProdutosPedidos', TJSONArray.Create.Add(produtoInfo));

  Result := pedidoInfo;
end;

procedure TDadosGeraisPedidoController.save(JSONObject: TJSONObject);
var
  DadosGeraisPedido: TDadosGeraisPedido;
  JSONPair: TJSONPair;
begin
  DadosGeraisPedido := TDadosGeraisPedido.Create
    (StrToDateTime(JSONObject.GetValue<String>('DataEmissao')),
    JSONObject.GetValue<Integer>('CodigoUsuario'),
    JSONObject.GetValue<Currency>('ValorTotal'));

  for JSONPair in TJSONObject(JSONObject.GetValue('ProdutosPedidos')) do
  begin
    DadosGeraisPedido.ProdutosPedidos.Add(TProdutosPedido.Create(0,
      TJSONObject(JSONPair).GetValue<Integer>('CodigoProduto'),
      TJSONObject(JSONPair).GetValue<Integer>('Quantidade'),
      TJSONObject(JSONPair).GetValue<Currency>('ValorUnitario'),
      TJSONObject(JSONPair).GetValue<Currency>('ValorTotal')));
  end;

  TDadosGeraisPedidoService.save(DadosGeraisPedido);
end;

end.
