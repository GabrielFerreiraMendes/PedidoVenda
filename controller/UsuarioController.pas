unit UsuarioController;

interface

uses UsuarioService, Usuario, SysUtils, System.Generics.Collections,
  System.Classes;

type
  TUsuarioController = class
  private
    listaUsuario: TObjectList<TUsuario>;
  public
    function getByCodigo(codigo: String): TUsuario;
    function getListaCodigo(): TStrings;
    constructor Create(); overload;
    destructor Destroy(); overload;
  end;

implementation

{ TUsuarioController }

constructor TUsuarioController.Create;
begin
  inherited;
  listaUsuario := TUsuarioService.getListaUsuario();
end;

destructor TUsuarioController.Destroy;
begin
  inherited;
  FreeAndNil(listaUsuario);
end;

function TUsuarioController.getListaCodigo: TStrings;
var
  listaCodigos: TStringList;
  Usuario: TUsuario;
begin
  listaCodigos := TStringList.Create;

  for Usuario in listaUsuario do
    listaCodigos.Add(Usuario.codigo.ToString);

  Result := listaCodigos;
end;

function TUsuarioController.getByCodigo(codigo: String): TUsuario;
var
  Usuario: TUsuario;
  I: Integer;
begin
  Result := nil;

  for I := 0 to Length(listaUsuario.ToArray) - 1 do
  begin
    if listaUsuario.ToArray[I].codigo = StrToInt(codigo) then
    begin
      Result := listaUsuario.ToArray[I];

      Break;
    end;
  end;
end;

end.
