inherited Frm_Pesq_Usuario: TFrm_Pesq_Usuario
  Caption = 'Pesquisa usu'#225'rio'
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited bt_pesquisar: TBitBtn
      OnClick = bt_pesquisarClick
    end
  end
  inherited DBGrid1: TDBGrid
    DataSource = ds_pesq_padrao
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_USUARIO'
        Title.Caption = 'C'#243'digo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Title.Caption = 'Nome do usu'#225'rio'
        Width = 601
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TIPO'
        Title.Caption = 'Tipo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CADASTRO'
        Visible = True
      end>
  end
  inherited Q_pesq_padrao: TFDQuery
    Active = True
    SQL.Strings = (
      'SELECT ID_USUARIO, NOME, TIPO, CADASTRO'
      'FROM USUARIO')
  end
end
