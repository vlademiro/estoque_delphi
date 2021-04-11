inherited Frm_Fornecedor: TFrm_Fornecedor
  Caption = 'Cadastro de Fornecedores'
  ClientHeight = 538
  ExplicitHeight = 566
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 56
    Top = 104
    Width = 33
    Height = 13
    Caption = 'C'#243'digo'
    FocusControl = DB_ID_Fornecedor
  end
  object Label2: TLabel [1]
    Left = 56
    Top = 144
    Width = 27
    Height = 13
    Caption = 'Nome'
    FocusControl = DB_Nome
  end
  object Label3: TLabel [2]
    Left = 56
    Top = 184
    Width = 45
    Height = 13
    Caption = 'Endere'#231'o'
    FocusControl = DB_Endereco
  end
  object Label4: TLabel [3]
    Left = 56
    Top = 224
    Width = 37
    Height = 13
    Caption = 'N'#250'mero'
    FocusControl = DB_Numero
  end
  object Label5: TLabel [4]
    Left = 56
    Top = 264
    Width = 28
    Height = 13
    Caption = 'Bairro'
    FocusControl = DB_Bairro
  end
  object Label6: TLabel [5]
    Left = 56
    Top = 304
    Width = 33
    Height = 13
    Caption = 'Cidade'
    FocusControl = DB_Cidade
  end
  object Label7: TLabel [6]
    Left = 56
    Top = 344
    Width = 13
    Height = 13
    Caption = 'UF'
    FocusControl = DB_UF
  end
  object Label8: TLabel [7]
    Left = 504
    Top = 344
    Width = 31
    Height = 13
    Caption = 'C.E.P.'
    FocusControl = DB_CEP
  end
  object Label9: TLabel [8]
    Left = 56
    Top = 384
    Width = 42
    Height = 13
    Caption = 'Telefone'
    FocusControl = DB_Telefone
  end
  object Label10: TLabel [9]
    Left = 504
    Top = 384
    Width = 41
    Height = 13
    Caption = 'C.N.P.J.'
    FocusControl = DB_CNPJ
  end
  object Label11: TLabel [10]
    Left = 58
    Top = 427
    Width = 28
    Height = 13
    Caption = 'E-mail'
    FocusControl = DB_Email
  end
  object Label12: TLabel [11]
    Left = 304
    Top = 104
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
    Top = 480
    ExplicitTop = 480
    inherited DBNavigator1: TDBNavigator
      Hints.Strings = ()
    end
  end
  object DB_ID_Fornecedor: TDBEdit [15]
    Left = 56
    Top = 120
    Width = 134
    Height = 21
    DataField = 'ID_FORNECEDOR'
    DataSource = ds_padrao
    TabOrder = 3
  end
  object DB_Nome: TDBEdit [16]
    Left = 56
    Top = 163
    Width = 654
    Height = 21
    CharCase = ecUpperCase
    DataField = 'NOME'
    DataSource = ds_padrao
    TabOrder = 5
  end
  object DB_Endereco: TDBEdit [17]
    Left = 56
    Top = 200
    Width = 654
    Height = 21
    CharCase = ecUpperCase
    DataField = 'ENDERECO'
    DataSource = ds_padrao
    TabOrder = 6
  end
  object DB_Numero: TDBEdit [18]
    Left = 56
    Top = 240
    Width = 134
    Height = 21
    CharCase = ecUpperCase
    DataField = 'NUMERO'
    DataSource = ds_padrao
    TabOrder = 7
  end
  object DB_Bairro: TDBEdit [19]
    Left = 56
    Top = 280
    Width = 654
    Height = 21
    CharCase = ecUpperCase
    DataField = 'BAIRRO'
    DataSource = ds_padrao
    TabOrder = 8
  end
  object DB_Cidade: TDBEdit [20]
    Left = 56
    Top = 320
    Width = 654
    Height = 21
    CharCase = ecUpperCase
    DataField = 'CIDADE'
    DataSource = ds_padrao
    TabOrder = 9
  end
  object DB_UF: TDBEdit [21]
    Left = 56
    Top = 360
    Width = 30
    Height = 21
    CharCase = ecUpperCase
    DataField = 'UF'
    DataSource = ds_padrao
    TabOrder = 10
  end
  object DB_CEP: TDBEdit [22]
    Left = 504
    Top = 360
    Width = 206
    Height = 21
    DataField = 'CEP'
    DataSource = ds_padrao
    MaxLength = 9
    TabOrder = 11
  end
  object DB_Telefone: TDBEdit [23]
    Left = 56
    Top = 400
    Width = 212
    Height = 21
    DataField = 'TELEFONE'
    DataSource = ds_padrao
    MaxLength = 13
    TabOrder = 12
  end
  object DB_CNPJ: TDBEdit [24]
    Left = 504
    Top = 400
    Width = 206
    Height = 21
    DataField = 'CNPJ'
    DataSource = ds_padrao
    MaxLength = 18
    TabOrder = 13
  end
  object DB_Email: TDBEdit [25]
    Left = 58
    Top = 443
    Width = 654
    Height = 21
    CharCase = ecLowerCase
    DataField = 'EMAIL'
    DataSource = ds_padrao
    TabOrder = 14
  end
  object DB_Cadastro: TDBEdit [26]
    Left = 304
    Top = 120
    Width = 134
    Height = 21
    DataField = 'CADASTRO'
    DataSource = ds_padrao
    Enabled = False
    TabOrder = 4
  end
  inherited Q_Padrao: TFDQuery
    Active = True
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'GEN_ID_FORNECEDOR'
    UpdateOptions.AutoIncFields = 'ID_FORNECEDOR'
    SQL.Strings = (
      
        'SELECT ID_FORNECEDOR, NOME, ENDERECO, NUMERO, BAIRRO, CIDADE, UF' +
        ','
      '    CEP, TELEFONE, CNPJ, EMAIL, CADASTRO'
      'FROM FORNECEDOR'
      'ORDER BY ID_FORNECEDOR ')
    Left = 704
    Top = 72
    object Q_PadraoID_FORNECEDOR: TFDAutoIncField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'ID_FORNECEDOR'
      Origin = 'ID_FORNECEDOR'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object Q_PadraoNOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 50
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
      EditMask = '00000\-999;0;_'
      Size = 16
    end
    object Q_PadraoTELEFONE: TStringField
      DisplayLabel = 'Telefone'
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      Required = True
      EditMask = '!\(99\)0000-0000;0;_'
      Size = 16
    end
    object Q_PadraoCNPJ: TStringField
      DisplayLabel = 'C.N.P.J.'
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
      Required = True
      EditMask = '00\.000\.000\/0000\-00;0;_'
    end
    object Q_PadraoEMAIL: TStringField
      DisplayLabel = 'E-mail'
      DisplayWidth = 50
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
    Left = 784
    Top = 80
  end
end
