program WK_Teste;

uses
  Vcl.Forms,
  DadosGeraisPedidoController in 'controller\DadosGeraisPedidoController.pas',
  ProdutoController in 'controller\ProdutoController.pas',
  UsuarioController in 'controller\UsuarioController.pas',
  uDmPrincipal in 'data\uDmPrincipal.pas' {dmPrincipal: TDataModule},
  DadosGeraisPedido in 'model\DadosGeraisPedido.pas',
  Produto in 'model\Produto.pas',
  ProdutosPedido in 'model\ProdutosPedido.pas',
  Usuario in 'model\Usuario.pas',
  DadosGeraisPedidoService in 'service\DadosGeraisPedidoService.pas',
  ProdutoService in 'service\ProdutoService.pas',
  ProdutosPedidoService in 'service\ProdutosPedidoService.pas',
  UsuarioService in 'service\UsuarioService.pas',
  uFrmPrincipal in 'view\uFrmPrincipal.pas' {frmPrincipal};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TdmPrincipal, dmPrincipal);
  Application.CreateForm(TdmPrincipal, dmPrincipal);
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
