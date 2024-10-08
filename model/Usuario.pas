unit Usuario;

interface

uses System.Generics.Collections;

type
  TUsuario = class(TObject)
  private
    FCodigo: Integer;
    FNome: String;
    FCidade: String;
    FUf: String;
  public
    property Codigo: Integer read FCodigo;
    property Nome: String read FNome write FNome;
    property Cidade: String read FCidade write FCidade;
    property Uf: String read FUf write FUf;

    constructor Create(Codigo: Integer; Nome: string; Cidade: String;
      Uf: String);
  end;

implementation

{ TUsuario }

constructor TUsuario.Create(Codigo: Integer; Nome, Cidade, Uf: String);
begin
  Self.FCodigo := Codigo;
  Self.FNome := Nome;
  Self.FCidade := Cidade;
  Self.FUf := Uf;
end;

end.
