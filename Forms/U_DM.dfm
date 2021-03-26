object DM: TDM
  OldCreateOrder = False
  Height = 313
  Width = 365
  object conexao: TFDConnection
    Params.Strings = (
      'Database=C:\Projetos\estoque_delphi\Banco\Dados\ESTOQUE.FDB'
      'User_Name=sysdba'
      'Password=masterkey'
      'Protocol=TCPIP'
      'Server=localhost'
      'Port=3050'
      'CharacterSet=WIN1252'
      'DriverID=FB')
    LoginPrompt = False
    Left = 48
    Top = 32
  end
  object transacao: TFDTransaction
    Connection = conexao
    Left = 144
    Top = 32
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    Left = 56
    Top = 96
  end
end
