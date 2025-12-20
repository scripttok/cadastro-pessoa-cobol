      *****************************************************************
      * PROGRAMA: CADASTRO-CLIENTE.cbl
      * DESCRIÇÃO: Sistema completo de cadastro com validações
      *****************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. CADASTRP-CLIENTE.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WS-CLIENTE.
           05 WS-TIPO PIC X.
               88 WS-FISICA VALUE 'F'.
               88 WS-JURIDICA VALUE 'J'.
           05 WS-NOME PIC X(50).
           05 WS-CPF PIC 9(11).
           05 WS-CNPJ PIC 9(14).
           05 WS-EMAIL PIC X(50).
           05 WS-STATUS PIC 9.
               88 WS-ATIVO VALUE 1.
               88 WS-INATIVO VALUE 0.
           05 WS-ENDERECO.
               10 WS-RUA PIC X(20).
               10 WS-BAIRRO PIC X(20).
               10 WS-CIDADE PIC X(20).
               10 WS-ESTADO PIC X(20).
               10 WS-CEP PIC 9(8).
               10 WS-NUMERO PIC 9(8).
       01 WS-OPCAO PIC 9(3).
       01 WS-CONTINUAR PIC X.
       01 WS-VALIDO PIC 9.
           88 WS-VALIDACAO-OK VALUE 1.
           88 WS-VALIDACAO-ERRO VALUE 0.
       
       PROCEDURE DIVISION.
       PRINCIPAL.
           PERFORM MENU-PRINCIPAL
           STOP RUN.
           
       MENU-PRINCIPAL.
           PERFORM UNTIL WS-OPCAO = 9
               DISPLAY '================================'
               DISPLAY 'SISTEMA DE CADASTRO DE CLIENTES'
               DISPLAY '================================'
               DISPLAY '1 - Novo Cliente'
               DISPLAY '2 - Consultar Cliente'
               DISPLAY '9 - Sair'
               DISPLAY 'Escolha uma opção: ' WITH NO ADVANCING
               ACCEPT WS-OPCAO

       
               
               EVALUATE WS-OPCAO
                   WHEN 1
                       PERFORM CADASTRAR-CLIENTE
                   WHEN 2
                       PERFORM CONSULTAR-CLIENTE
                   WHEN 9
                       DISPLAY 'Encerrando sistema...'
                   WHEN OTHER
                       DISPLAY 'Opção inválida!'
               END-EVALUATE
           END-PERFORM.
    
       CADASTRAR-CLIENTE.
           DISPLAY '================================'
           DISPLAY 'Cadastrar'.
           DISPLAY '================================'
           DISPLAY 'Me diga seu Nome : ' WITH NO ADVANCING.
           ACCEPT WS-NOME.
           DISPLAY 'Me diga seu Cpf : 'WITH NO ADVANCING.
           ACCEPT WS-CPF.
           DISPLAY 'Me diga seu Email : 'WITH NO ADVANCING.
           ACCEPT WS-EMAIL.
           DISPLAY 'Me diga seu Endereco : 'WITH NO ADVANCING.
           ACCEPT WS-ENDERECO.
           DISPLAY 'Cadastro realizado'.
           PERFORM MENU-PRINCIPAL.

       CONSULTAR-CLIENTE.
           DISPLAY 'Consultar' WITH NO ADVANCING.
           PERFORM EXIBIR-CLIENTE.

       EXIBIR-CLIENTE.
           DISPLAY 'Nome : ' WS-NOME.
           DISPLAY 'Cpf : ' WS-CPF.
           DISPLAY 'Email : ' WS-EMAIL.
           DISPLAY 'Endereco : ' WS-ENDERECO.



       
