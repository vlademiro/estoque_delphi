inherited Frm_Empresa: TFrm_Empresa
  Caption = 'Cadastro da Empresa'
  ClientHeight = 558
  ExplicitHeight = 586
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 32
    Top = 72
    Width = 33
    Height = 13
    Caption = 'C'#243'digo'
    FocusControl = DB_ID_Empresa
  end
  object Label2: TLabel [1]
    Left = 32
    Top = 112
    Width = 60
    Height = 13
    Caption = 'Raz'#227'o Social'
    FocusControl = DB_RazaoSocial
  end
  object Label3: TLabel [2]
    Left = 368
    Top = 109
    Width = 41
    Height = 13
    Caption = 'Fantasia'
    FocusControl = DB_Fantasia
  end
  object Label4: TLabel [3]
    Left = 32
    Top = 160
    Width = 45
    Height = 13
    Caption = 'Endere'#231'o'
    FocusControl = DB_Endereco
  end
  object Label5: TLabel [4]
    Left = 552
    Top = 163
    Width = 37
    Height = 13
    Caption = 'N'#250'mero'
    FocusControl = DB_Numero
  end
  object Label6: TLabel [5]
    Left = 35
    Top = 216
    Width = 28
    Height = 13
    Caption = 'Bairro'
    FocusControl = DB_Bairro
  end
  object Label7: TLabel [6]
    Left = 35
    Top = 272
    Width = 33
    Height = 13
    Caption = 'Cidade'
    FocusControl = DB_Cidade
  end
  object Label8: TLabel [7]
    Left = 496
    Top = 269
    Width = 21
    Height = 13
    Caption = 'U.F.'
    FocusControl = DB_UF
  end
  object Label9: TLabel [8]
    Left = 552
    Top = 269
    Width = 31
    Height = 13
    Caption = 'C.E.P.'
    FocusControl = DB_CEP
  end
  object Label10: TLabel [9]
    Left = 32
    Top = 328
    Width = 42
    Height = 13
    Caption = 'Telefone'
    FocusControl = DB_Telefone
  end
  object Label11: TLabel [10]
    Left = 496
    Top = 328
    Width = 41
    Height = 13
    Caption = 'C.N.P.J.'
    FocusControl = DB_CNPJ
  end
  object Label12: TLabel [11]
    Left = 32
    Top = 384
    Width = 28
    Height = 13
    Caption = 'E-mail'
    FocusControl = DB_Email
  end
  object Label13: TLabel [12]
    Left = 216
    Top = 72
    Width = 44
    Height = 13
    Caption = 'Cadastro'
    FocusControl = DB_Cadastro
  end
  object Label14: TLabel [13]
    Left = 729
    Top = 108
    Width = 52
    Height = 13
    Caption = 'Logomarca'
    FocusControl = DB_Logomarca
  end
  inherited pnlBottom: TPanel
    Top = 500
    ExplicitLeft = -2
    ExplicitTop = 561
    inherited DBNavigator1: TDBNavigator
      Hints.Strings = ()
    end
  end
  object DB_ID_Empresa: TDBEdit [17]
    Left = 32
    Top = 88
    Width = 134
    Height = 21
    DataField = 'ID_EMPRESA'
    DataSource = ds_padrao
    TabOrder = 3
  end
  object DB_RazaoSocial: TDBEdit [18]
    Left = 32
    Top = 128
    Width = 321
    Height = 21
    DataField = 'RAZAO_SOCIAL'
    DataSource = ds_padrao
    TabOrder = 5
  end
  object DB_Fantasia: TDBEdit [19]
    Left = 368
    Top = 128
    Width = 321
    Height = 21
    DataField = 'N_FANTASIA'
    DataSource = ds_padrao
    TabOrder = 6
  end
  object DB_Endereco: TDBEdit [20]
    Left = 32
    Top = 176
    Width = 425
    Height = 21
    DataField = 'ENDERECO'
    DataSource = ds_padrao
    TabOrder = 8
  end
  object DB_Numero: TDBEdit [21]
    Left = 552
    Top = 179
    Width = 134
    Height = 21
    DataField = 'NUMERO'
    DataSource = ds_padrao
    TabOrder = 9
  end
  object DB_Bairro: TDBEdit [22]
    Left = 35
    Top = 232
    Width = 654
    Height = 21
    DataField = 'BAIRRO'
    DataSource = ds_padrao
    TabOrder = 10
  end
  object DB_Cidade: TDBEdit [23]
    Left = 35
    Top = 285
    Width = 425
    Height = 21
    DataField = 'CIDADE'
    DataSource = ds_padrao
    TabOrder = 11
  end
  object DB_UF: TDBEdit [24]
    Left = 496
    Top = 285
    Width = 30
    Height = 21
    DataField = 'UF'
    DataSource = ds_padrao
    TabOrder = 12
  end
  object DB_CEP: TDBEdit [25]
    Left = 552
    Top = 285
    Width = 137
    Height = 21
    DataField = 'CEP'
    DataSource = ds_padrao
    TabOrder = 13
  end
  object DB_Telefone: TDBEdit [26]
    Left = 32
    Top = 344
    Width = 199
    Height = 21
    DataField = 'TELEFONE'
    DataSource = ds_padrao
    TabOrder = 14
  end
  object DB_CNPJ: TDBEdit [27]
    Left = 496
    Top = 344
    Width = 190
    Height = 21
    DataField = 'CNPJ'
    DataSource = ds_padrao
    TabOrder = 15
  end
  object DB_Email: TDBEdit [28]
    Left = 32
    Top = 400
    Width = 654
    Height = 21
    DataField = 'EMAIL'
    DataSource = ds_padrao
    TabOrder = 16
  end
  object DB_Cadastro: TDBEdit [29]
    Left = 216
    Top = 88
    Width = 134
    Height = 21
    DataField = 'CADASTRO'
    DataSource = ds_padrao
    TabOrder = 4
  end
  object DB_Logomarca: TDBImage [30]
    Left = 729
    Top = 124
    Width = 105
    Height = 105
    DataField = 'LOGO'
    DataSource = ds_padrao
    TabOrder = 7
  end
  object BitBtn1: TBitBtn [31]
    Left = 728
    Top = 248
    Width = 75
    Height = 25
    Caption = 'BitBtn1'
    TabOrder = 17
  end
  object BitBtn2: TBitBtn [32]
    Left = 729
    Top = 279
    Width = 75
    Height = 25
    Caption = 'BitBtn1'
    TabOrder = 18
  end
  inherited Q_Padrao: TFDQuery
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'GEN_ID_EMPRESA'
    UpdateOptions.AutoIncFields = 'ID_EMPRESA'
    SQL.Strings = (
      'select '
      'id_empresa,'
      'razao_social,'
      'n_fantasia,'
      'endereco,'
      'numero,'
      'bairro,'
      'cidade,'
      'uf,'
      'cep,'
      'telefone, '
      'cnpj,'
      'email,'
      'cadastro,'
      'logo'
      'from empresa')
    object Q_PadraoID_EMPRESA: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'ID_EMPRESA'
      Origin = 'ID_EMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Q_PadraoRAZAO_SOCIAL: TStringField
      DisplayLabel = 'Raz'#227'o Social'
      DisplayWidth = 50
      FieldName = 'RAZAO_SOCIAL'
      Origin = 'RAZAO_SOCIAL'
      Required = True
      Size = 100
    end
    object Q_PadraoN_FANTASIA: TStringField
      DisplayLabel = 'Fantasia'
      DisplayWidth = 50
      FieldName = 'N_FANTASIA'
      Origin = 'N_FANTASIA'
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
      EditMask = '00000\-999;0;_'
      Size = 16
    end
    object Q_PadraoTELEFONE: TStringField
      DisplayLabel = 'Telefone'
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      Required = True
      EditMask = '!\(99\)00000-0000;0;_'
      Size = 15
    end
    object Q_PadraoCNPJ: TStringField
      DisplayLabel = 'C.N.P.J.'
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
      Required = True
      EditMask = '00.000.000/0000-00;0;_'
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
    object Q_PadraoLOGO: TBlobField
      DisplayLabel = 'Logomarca'
      FieldName = 'LOGO'
      Origin = 'LOGO'
    end
  end
end
