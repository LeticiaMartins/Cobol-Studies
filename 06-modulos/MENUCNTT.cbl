      ******************************************************************
      * Author: LETICIA MARTINS BANDEIRA PASCALE
      * Date: 01/07/2024
      * Purpose: MENU PARA CADASTRO CONTATOS
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. MENUCNTT.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 WS-COM-AREA.
           03 WS-MENSAGEM                  PIC X(40).
       77 WS-OPCAO                         PIC X.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

           PERFORM P300-PROCESSA   THRU P300-FIM UNTIL WS-OPCAO = 'F'
           PERFORM P900-FIM
           .

       P300-PROCESSA.
            MOVE SPACES                    TO WS-OPCAO
            DISPLAY '*************************************************'
            DISPLAY '**           SISTEMA DE CONTATOS               **'
            DISPLAY '*************************************************'
            DISPLAY '|                                               |'
            DISPLAY '| Escolha uma opcao:                            |'
            DISPLAY '|                                               |'
            DISPLAY '|   1 - Incluir Contato                         |'
            DISPLAY '|   2 - Listar Contatos                         |'
            DISPLAY '|   3 - Consultar Contato                       |'
            DISPLAY '|   4 - Alteraar Contato                        |'
            DISPLAY '|   5 - Excluir Contato                         |'
            DISPLAY '|                                               |'
            DISPLAY '|             (ou tecle <S> para sair)          |'
            DISPLAY '*************************************************'
            ACCEPT WS-OPCAO


            EVALUATE WS-OPCAO
               WHEN '1'
                   MOVE ' *** INCLUSAO DE CONTATO *** ' TO WS-MENSAGEM
                   CALL 'CADCONTT' USING WS-COM-AREA

               WHEN '2'
                   MOVE ' *** LISTAGEM DE CONTATO *** ' TO WS-MENSAGEM
                   CALL 'LISCNTT'  USING WS-COM-AREA

               WHEN '3'
                   MOVE ' *** CONSULTA DE CONTATO *** ' TO WS-MENSAGEM
                   CALL 'CONSCTT'  USING WS-COM-AREA

               WHEN '4'
                   MOVE ' *** ALTERACAO DE CONTATO *** ' TO WS-MENSAGEM
                   CALL 'ALTCONTT' USING WS-COM-AREA

               WHEN '5'
                   MOVE ' *** EXCLUSAO DE CONTATO *** ' TO WS-MENSAGEM
                   CALL 'DELCONTT' USING WS-COM-AREA
               WHEN 'S'
                   DISPLAY 'Obrigado, volte sempre!'
                   MOVE 'F'                             TO WS-OPCAO
               WHEN 's'
                   DISPLAY 'Obrigado, volte sempre!'
                   MOVE 'F'                             TO WS-OPCAO
               WHEN OTHER
                   DISPLAY 'OPCAO INVALIDA!'
            END-EVALUATE
            .
       P300-FIM.
       P900-FIM.
            STOP RUN.
       END PROGRAM MENUCNTT.
