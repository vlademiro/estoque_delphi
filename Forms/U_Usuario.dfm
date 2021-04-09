inherited Frm_Usuario: TFrm_Usuario
  Caption = 'Cadastro de usu'#225'rios'
  ClientHeight = 312
  ExplicitHeight = 340
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 96
    Top = 104
    Width = 33
    Height = 13
    Caption = 'C'#243'digo'
    FocusControl = DB_ID_Usuario
  end
  object Label2: TLabel [1]
    Left = 96
    Top = 144
    Width = 27
    Height = 13
    Caption = 'Nome'
    FocusControl = DB_Nome
  end
  object Label3: TLabel [2]
    Left = 96
    Top = 184
    Width = 30
    Height = 13
    Caption = 'Senha'
    FocusControl = DB_Senha
  end
  object Label4: TLabel [3]
    Left = 272
    Top = 184
    Width = 20
    Height = 13
    Caption = 'Tipo'
  end
  object Label5: TLabel [4]
    Left = 464
    Top = 184
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
    Top = 254
    ExplicitTop = 254
    inherited DBNavigator1: TDBNavigator
      Hints.Strings = ()
    end
  end
  object DB_ID_Usuario: TDBEdit [7]
    Left = 96
    Top = 120
    Width = 134
    Height = 21
    DataField = 'ID_USUARIO'
    DataSource = ds_padrao
    Enabled = False
    ReadOnly = True
    TabOrder = 3
  end
  object DB_Nome: TDBEdit [8]
    Left = 96
    Top = 160
    Width = 500
    Height = 21
    CharCase = ecUpperCase
    DataField = 'NOME'
    DataSource = ds_padrao
    TabOrder = 4
  end
  object DB_Senha: TDBEdit [9]
    Left = 96
    Top = 200
    Width = 134
    Height = 21
    DataField = 'SENHA'
    DataSource = ds_padrao
    PasswordChar = '*'
    TabOrder = 5
  end
  object DB_Cadastro: TDBEdit [10]
    Left = 464
    Top = 200
    Width = 134
    Height = 21
    DataField = 'CADASTRO'
    DataSource = ds_padrao
    Enabled = False
    ReadOnly = True
    TabOrder = 7
  end
  object DB_Tipo: TDBComboBox [11]
    Left = 272
    Top = 200
    Width = 145
    Height = 21
    DataField = 'TIPO'
    DataSource = ds_padrao
    Items.Strings = (
      'ADMINISTRADOR'
      'APOIO')
    TabOrder = 6
  end
  inherited Q_Padrao: TFDQuery
    Active = True
    UpdateOptions.AssignedValues = [uvGeneratorName]
    UpdateOptions.GeneratorName = 'GEN_ID_USUARIO'
    UpdateOptions.AutoIncFields = 'ID_USUARIO'
    SQL.Strings = (
      'select '
      'ID_USUARIO,'
      'NOME,'
      'SENHA,'
      'TIPO,'
      'CADASTRO'
      'from usuario'
      'ORDER BY ID_USUARIO')
    object Q_PadraoID_USUARIO: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'C'#243'digo'
      FieldName = 'ID_USUARIO'
      Origin = 'ID_USUARIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object Q_PadraoNOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 100
    end
    object Q_PadraoSENHA: TStringField
      DisplayLabel = 'Senha'
      FieldName = 'SENHA'
      Origin = 'SENHA'
      Required = True
      Size = 30
    end
    object Q_PadraoTIPO: TStringField
      DisplayLabel = 'Tipo'
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Required = True
      Size = 30
    end
    object Q_PadraoCADASTRO: TDateField
      DisplayLabel = 'Cadastro'
      FieldName = 'CADASTRO'
      Origin = 'CADASTRO'
      Required = True
    end
  end
end
