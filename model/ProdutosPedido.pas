unit ProdutosPedido;

interface

type
  TProdutosPedido = class
  private
    FAutoIncrem: Integer;
    FNumeroPedido: Integer;
    FCodigoProduto: Integer;
    FValorUnitario: Currency;
    FValorTotal: Currency;
    FQuantidade: Integer;
  public
    property AutoIncrem: Integer read FAutoIncrem;
    property NumeroPedido: Integer read FNumeroPedido write FNumeroPedido;
    property CodigoProduto: Integer read FCodigoProduto write FCodigoProduto;
    property Quantidade: Integer read FQuantidade write FQuantidade;
    property ValorUnitario: Currency read FValorUnitario write FValorUnitario;
    property ValorTotal: Currency read FValorTotal write FValorTotal;

    constructor Create(NumeroPedido: Integer; CodigoProduto: Integer;
      Quantidade: Integer; ValorUnitario: Currency;
      ValorTotal: Currency); overload;
  end;

implementation

{ TProdutosPedido }

constructor TProdutosPedido.Create(NumeroPedido, CodigoProduto,
  Quantidade: Integer; ValorUnitario, ValorTotal: Currency);
begin
  Self.FNumeroPedido := NumeroPedido;
  Self.FCodigoProduto := CodigoProduto;
  Self.FQuantidade := Quantidade;
  Self.FValorUnitario := ValorUnitario;
  Self.FValorTotal := ValorTotal;
end;

end.
