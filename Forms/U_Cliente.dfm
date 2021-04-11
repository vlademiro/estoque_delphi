inherited Frm_Cliente: TFrm_Cliente
  Caption = 'Cadastro de Cliente'
  ClientHeight = 469
  KeyPreview = False
  ExplicitHeight = 497
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 40
    Top = 80
    Width = 33
    Height = 13
    Caption = 'C'#243'digo'
    FocusControl = DB_ID_Cliente
  end
  object Label2: TLabel [1]
    Left = 40
    Top = 128
    Width = 27
    Height = 13
    Caption = 'Nome'
    FocusControl = DB_Nome
  end
  object Label3: TLabel [2]
    Left = 40
    Top = 176
    Width = 45
    Height = 13
    Caption = 'Endere'#231'o'
    FocusControl = DB_Endereco
  end
  object Label4: TLabel [3]
    Left = 40
    Top = 219
    Width = 37
    Height = 13
    Caption = 'N'#250'mero'
    FocusControl = DB_Numero
  end
  object Label5: TLabel [4]
    Left = 232
    Top = 222
    Width = 28
    Height = 13
    Caption = 'Bairro'
    FocusControl = DB_Bairro
  end
  object Label6: TLabel [5]
    Left = 40
    Top = 267
    Width = 33
    Height = 13
    Caption = 'Cidade'
    FocusControl = DB_Cidade
  end
  object Label7: TLabel [6]
    Left = 664
    Top = 267
    Width = 21
    Height = 13
    Caption = 'U.F.'
    FocusControl = DB_UF
  end
  object Label8: TLabel [7]
    Left = 42
    Top = 310
    Width = 31
    Height = 13
    Caption = 'C.E.P.'
    FocusControl = DB_CEP
  end
  object Label9: TLabel [8]
    Left = 302
    Top = 310
    Width = 42
    Height = 13
    Caption = 'Telefone'
    FocusControl = DB_Telefone
  end
  object Label10: TLabel [9]
    Left = 560
    Top = 310
    Width = 31
    Height = 13
    Caption = 'C.P.F.'
    FocusControl = DB_CPF
  end
  object Label11: TLabel [10]
    Left = 42
    Top = 353
    Width = 28
    Height = 13
    Caption = 'E-mail'
    FocusControl = DB_Email
  end
  object Label12: TLabel [11]
    Left = 302
    Top = 80
    Width = 44
    Height = 13
    Caption = 'Cadastro'
    FocusControl = DB_Cadastro
  end
  inherited pnlTop: TPanel
    inherited btnPesquisar: TBitBtn
      OnClick = btnPesquisarClick
    end
  end
  inherited pnlBottom: TPanel
    Top = 411
    ExplicitTop = 411
    inherited DBNavigator1: TDBNavigator
      Hints.Strings = ()
    end
  end
  object DB_ID_Cliente: TDBEdit [15]
    Left = 40
    Top = 96
    Width = 134
    Height = 21
    DataField = 'ID_CLIENTE'
    DataSource = ds_padrao
    TabOrder = 3
  end
  object DB_Nome: TDBEdit [16]
    Left = 40
    Top = 144
    Width = 654
    Height = 21
    DataField = 'NOME'
    DataSource = ds_padrao
    TabOrder = 5
  end
  object DB_Endereco: TDBEdit [17]
    Left = 40
    Top = 192
    Width = 654
    Height = 21
    DataField = 'ENDERECO'
    DataSource = ds_padrao
    TabOrder = 6
  end
  object DB_Numero: TDBEdit [18]
    Left = 40
    Top = 235
    Width = 134
    Height = 21
    DataField = 'NUMERO'
    DataSource = ds_padrao
    TabOrder = 7
  end
  object DB_Bairro: TDBEdit [19]
    Left = 232
    Top = 235
    Width = 462
    Height = 21
    DataField = 'BAIRRO'
    DataSource = ds_padrao
    TabOrder = 8
  end
  object DB_Cidade: TDBEdit [20]
    Left = 40
    Top = 283
    Width = 466
    Height = 21
    DataField = 'CIDADE'
    DataSource = ds_padrao
    TabOrder = 9
  end
  object DB_UF: TDBEdit [21]
    Left = 664
    Top = 283
    Width = 30
    Height = 21
    DataField = 'UF'
    DataSource = ds_padrao
    TabOrder = 10
  end
  object DB_CEP: TDBEdit [22]
    Left = 42
    Top = 326
    Width = 212
    Height = 21
    DataField = 'CEP'
    DataSource = ds_padrao
    TabOrder = 11
  end
  object DB_Telefone: TDBEdit [23]
    Left = 302
    Top = 326
    Width = 212
    Height = 21
    DataField = 'TELEFONE'
    DataSource = ds_padrao
    TabOrder = 12
  end
  object DB_CPF: TDBEdit [24]
    Left = 560
    Top = 329
    Width = 134
    Height = 21
    DataField = 'CPF'
    DataSource = ds_padrao
    TabOrder = 13
  end
  object DB_Email: TDBEdit [25]
    Left = 40
    Top = 372
    Width = 394
    Height = 21
    DataField = 'EMAIL'
    DataSource = ds_padrao
    TabOrder = 14
  end
  object DB_Cadastro: TDBEdit [26]
    Left = 300
    Top = 96
    Width = 134
    Height = 21
    DataField = 'CADASTRO'
    DataSource = ds_padrao
    TabOrder = 4
  end
  inherited Q_Padrao: TFDQuery
    Active = True
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'GEN_ID_CLIENTE'
    UpdateOptions.AutoIncFields = 'ID_CLIENTE'
    SQL.Strings = (
      'SELECT ID_CLIENTE, NOME, ENDERECO, NUMERO, BAIRRO, CIDADE, UF,'
      '    CEP, TELEFONE, CPF, EMAIL, CADASTRO'
      'FROM CLIENTE ;')
    Top = 112
    object Q_PadraoID_CLIENTE: TFDAutoIncField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'ID_CLIENTE'
      Origin = 'ID_CLIENTE'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object Q_PadraoNOME: TStringField
      DisplayLabel = 'Nome'
      DisplayWidth = 50
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 100
    end
    object Q_PadraoENDERECO: TStringField
      DisplayLabel = 'Endere'#231'o'
      DisplayWidth = 50
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Required = True
      Size = 100
    end
    object Q_PadraoNUMERO: TIntegerField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Required = True
    end
    object Q_PadraoBAIRRO: TStringField
      DisplayLabel = 'Bairro'
      DisplayWidth = 50
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Required = True
      Size = 100
    end
    object Q_PadraoCIDADE: TStringField
      DisplayLabel = 'Cidade'
      DisplayWidth = 50
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
      Required = True
      Size = 100
    end
    object Q_PadraoUF: TStringField
      DisplayLabel = 'U.F.'
      FieldName = 'UF'
      Origin = 'UF'
      Required = True
      FixedChar = True
      Size = 2
    end
    object Q_PadraoCEP: TStringField
      DisplayLabel = 'C.E.P.'
      FieldName = 'CEP'
      Origin = 'CEP'
      Required = True
      Size = 16
    end
    object Q_PadraoTELEFONE: TStringField
      DisplayLabel = 'Telefone'
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      Required = True
      Size = 16
    end
    object Q_PadraoCPF: TStringField
      DisplayLabel = 'C.P.F.'
      FieldName = 'CPF'
      Origin = 'CPF'
      Required = True
      Size = 16
    end
    object Q_PadraoEMAIL: TStringField
      DisplayLabel = 'E-mail'
      DisplayWidth = 30
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Required = True
      Size = 100
    end
    object Q_PadraoCADASTRO: TDateField
      DisplayLabel = 'Cadastro'
      FieldName = 'CADASTRO'
      Origin = 'CADASTRO'
      Required = True
    end
  end
  inherited ds_padrao: TDataSource
    Top = 112
  end
end
