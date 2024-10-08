unit UsuarioService;

interface

uses Usuario, System.Generics.Collections,
  FireDAC.Comp.Client, uDmPrincipal, System.Classes,
  System.SysUtils;

type
 TUsuarioService = Class
   public
    class function getListaUsuario(): TObjectList<TUsuario>;
 End;

implementation

{ TUsuarioService }

class function TUsuarioService.getListaUsuario: TObjectList<TUsuario>;
var
 qry: TFDQuery;
 usuarioLista: TObjectList<TUsuario>;
begin
  qry := TFDQuery.Create(nil);
  usuarioLista := TObjectList<TUsuario>.Create;

  try
    qry.Connection := dmPrincipal.FDConnection1;

    qry.SQL.Clear;
    qry.SQL.Add('SELECT * FROM USUARIO');
    qry.Open;

    qry.First;
    while not qry.Eof do
    begin
      usuarioLista.Add(TUsuario.Create(qry.FieldByName('CODIGO').AsInteger,
                                       qry.FieldByName('NOME').AsString,
                                       qry.FieldByName('CIDADE').AsString,
                                       qry.FieldByName('UF').AsString));

     qry.Next;
    end;

   Result := usuarioLista;
  finally
   qry.Close;
   FreeAndNil(qry);
  end;
end;

end.
