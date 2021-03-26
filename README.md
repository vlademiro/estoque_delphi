# Introdução

## Descrição

Notas do curso de "Delphi Criando Sistema de Controle de estoque passo a passo" disponível na Udemy

## Dados do curso

URL : https://www.udemy.com/course/delphi-criando-sistema-de-controle-de-estoque-passo-a-passo/

Ferramentas usadas :
1. Firebird 3.0 - 32 bits
1. Flamerobin - 32 bits
1. Delphi Community 10.3.3 - 32 bits
1. Fastreports

# Notas de aula

## Aula 08 - Iniciando o sistema e tela principal

Vídeo-aula : https://www.udemy.com/course/delphi-criando-sistema-de-controle-de-estoque-passo-a-passo/learn/lecture/19421546#notes

Commit : https://github.com/vlademiro/estoque_delphi/commit/042e2fa6ac421cdabda807718c5c9c3fa4265f9c

### Sub-pastas do projeto

1. DCU
1. Executavel
1. Banco
1. Forms
1. Projeto

### Alterar o local de salvamento do formulário

### Formulário (U_Principal.pas)

1. Name : Frm_Principal
1. Caption : Controle de Estoque
1. Width : 1200
1. WindowState : wsMaximized


#### TPanel (Standard)

1. Align : alTop
1. Caption : sem caption
1. Color : clSkyBlue
1. Height : 90

#### TSpeedButton (Aditional)

1. Height : 90
1. Width : 100
1. Layout : blGlyphTop (Figura em cima, texto embaixo)
1. Font : Tahoma, Bold, 10px
1. Flat : True (Para ficar transparente mostrando apenas as figuras)

Alinhe os botões na horizontal para que fiquem centralizados horizontalmente:

* Selecione todos os botões (Shift+Clique)
* Botão direito
* Position >
* Align...
* Horizontal / Space Equally

#### TStatusBar (Win32)

* Botão direito : Panels editor...
* Insira 3 TStatusPanel
* Nos dois primeiros atribua Width = 150

## Aula 09 - Criando a conexão com o banco de dados e Form padrão

Vídeo-aula : https://www.udemy.com/course/delphi-criando-sistema-de-controle-de-estoque-passo-a-passo/learn/lecture/19467968#notes


### Formulário (U_DM.pas)

1. Name : DM 
1. Login prompt = False

Dois cliques na conexao

* Driver ID = FB
* Database = o path para o arquivo C:\Projetos\...\estoque.fdb
* Username = seu usuário
* Password = sua senha
* Conection = TCP/IP
* Port = 3050
* Charset = WIN1252

#### TFDConnection (FireDAC)

1. Name : conexao

#### TFDTransaction (FireDAC)

1. Name : transacao

#### TFDPhysFBDriverLink (FireDAC Links)

Apenas insira o controle

### Formulário (U_Padrao.pas)

1. Name : Frm_Padrao
1. Caption : Formulário padrão
1. KeyPreview : True
1. Adicione o evento KeyPress para o ENTER passar para o outro campo
1. BorderStyle : bsDialog (Sem maximizar, apenas o fechar)

#### TPanel (Standard)

1. Align = alTop
1. Caption = Em branco
2. Color = clActiveCaption

#### TPanel (Standard)

1. Align = alBottom
1. Caption = Em branco
2. Color = clActiveCaption

#### TBitBtn (Additional)

1. Height = 45
1. Width = 90

Inclua os seguintes

* btnNovo = Novo
* btnExcluir = Excluir
* btnAlterar = Alterar 
* btnGravar = Gravar (Enabled=False)
* btnCancelar = Cancelar
* btnAtualizar = Atualizar (Enabled=False)

#### TDBNavigator

1. VisibleButtons = Deixa apenas as 4 primeiras (as setas de navegação, o resto desmarca)

#### TFDQuery

1. Name : Q_Padrao
1. Connection : conexao (Não esqueça de inserir o cabeçalho antes, com Alt+F11)


#### TDataSource

1. Name : ds_Padrao
1. Dataset : Q_Padrao

# Apêndices

## Links interessantes


* Ícones grátis : https://icon-icons.com/pt/ : Para botões 32bits, para Tela principal 64bits. Converta para BMP depois.








