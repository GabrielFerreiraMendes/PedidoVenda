unit uDmPrincipal;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait, Data.DB, FireDAC.Comp.Client,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet;

type
  TdmPrincipal = class(TDataModule)
    FDConnection1: TFDConnection;
    FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure StartTransaction;
    procedure Commit;
    procedure RollBack;

    procedure setDBConfig(conn: TFDConnection; Phys: TFDPhysMySQLDriverLink);
  end;

var
  dmPrincipal: TdmPrincipal;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}
{$R *.dfm}
{ TdmPrincipal }

procedure TdmPrincipal.Commit;
begin
  if not Self.FDConnection1.InTransaction then
    raise Exception.Create('N�o h� transa��o ativa.');

  Self.FDConnection1.Commit;
end;

procedure TdmPrincipal.RollBack;
begin
  if not Self.FDConnection1.InTransaction then
    raise Exception.Create('N�o h� transa��o ativa.');

  Self.FDConnection1.RollBack;
end;

procedure TdmPrincipal.setDBConfig(conn: TFDConnection;
  Phys: TFDPhysMySQLDriverLink);
begin
  Self.FDPhysMySQLDriverLink1 := Phys;
  Self.FDConnection1 := conn;
end;

procedure TdmPrincipal.StartTransaction;
begin
  { Permite transa��es aninhadas }
  Self.FDConnection1.TxOptions.EnableNested := True;
  Self.FDConnection1.TxOptions.AutoCommit := True;

  Self.FDConnection1.StartTransaction;
end;

end.
