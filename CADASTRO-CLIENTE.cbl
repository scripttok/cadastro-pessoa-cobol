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
           05 WS-STATUS.
               88 WS-ATIVO VALUE 1.
               88 WS-INATIVO VALUE 0.
           05 WS-ENDERECO.
               10 WS-RUA PIC X(20).
               10 WS-BAIRRO PIC X(20).
               10 WS-CIDADE PIC X(20).
               10 WS-ESTADO PIC X(20).
               10 WS-CEP PIC 9(8).
               10 WS-NUMERO PIC 9(8).
       01 WS-OPCOES PIC 9(3).
       01 WS-CONTINUAR PIC X.
       01 WS-VALIDO.
           88 WS-VALIDACAO-OK VALUE 1.
           88 WS-VALIDACAO-ERRO VALUE 0.
       
       PROCEDURE DIVISION.
       INICIO.
           PERFORM MENU-PRINCIPAL
           STOP RUN.
    
       MENU-PRINCIPAL.
           