unit Produto;

interface

type
  TProduto = Class
  private
    FCodigo: Integer;
    FDescricao: String;
    FPreco: Currency;
  public
    property Codigo: Integer read FCodigo;
    property Descricao: String read FDescricao write FDescricao;
    property Preco: Currency read FPreco write FPreco;

    constructor Create(Codigo: Integer; Descricao: String;
      Preco: Currency); overload;
  End;

implementation

{ TProduto }

constructor TProduto.Create(Codigo: Integer; Descricao: String;
  Preco: Currency);
begin
  Self.FCodigo := Codigo;
  Self.FDescricao := Descricao;
  Self.Preco := Preco;
end;

end.
