object dmPrincipal: TdmPrincipal
  Height = 480
  Width = 640
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=teste'
      'User_Name=root'
      'Password=masterkey'
      'Server=localhost'
      'DriverID=MySQL')
    Left = 128
    Top = 152
  end
  object FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink
    VendorLib = 'C:\Users\Gabriel\OneDrive\Documentos\LIBMYSQL.DLL'
    Left = 128
    Top = 80
  end
end
