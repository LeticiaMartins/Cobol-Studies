      ******************************************************************
      * Author: LETICIA MARTINS BANDEIRA PASCALE
      * Date: 27/06/2024
      * Purpose: LISTAR CONTATOS
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. LISCNTT.

       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.

           INPUT-OUTPUT SECTION.
           FILE-CONTROL.
               SELECT CONTATOS ASSIGN TO
               'CONTATOS.dat'
               ORGANIZATION IS INDEXED
               ACCESS  MODE IS SEQUENTIAL
               RECORD  KEY  IS ID-CONTATO
               FILE STATUS IS WS-FS.


       DATA DIVISION.
       FILE SECTION.
       FD CONTATOS.
          COPY FD_CONTT.

       WORKING-STORAGE SECTION.
       01 WS-REGISTRO                     PIC X(22) VALUE SPACES.
       01 FILLER REDEFINES WS-REGISTRO.
          03 WS-ID-CONTATO                PIC 9(02).
          03 WS-NM-CONTATO                PIC X(20).
       77 WS-FS                           PIC 99.
          88 FS-OK                        VALUE 0.
       77 WS-EOF                          PIC X.
          88 EOF-OK                       VALUE 'S' FALSE 'N'.
       77 WS-EXIT                         PIC X.
          88 EXIT-OK                      VALUE 'F' FALSE 'N'.
       77 WS-CONT                         PIC 9(003) VALUE ZEROS.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

           DISPLAY '*** LISTAGEM DE CONTATOS ***'
           SET EXIT-OK             TO FALSE
           PERFORM P300-LISTAR   THRU  P300-FIM
           PERFORM P900-FIM
           .
       P300-LISTAR.
           SET EOF-OK              TO FALSE
           SET FS-OK               TO TRUE
           SET WS-CONT             TO 0.

           OPEN INPUT CONTATOS



               IF FS-OK THEN
                   PERFORM UNTIL EOF-OK
                       READ CONTATOS INTO WS-REGISTRO
                            AT END
                               SET EOF-OK TO TRUE
                            NOT AT END
                               ADD 1      TO WS-CONT
                               DISPLAY 'REGISTRO '
                                       WS-CONT
                                       ': '
                                       WS-ID-CONTATO
                                       ' - '
                                       WS-NM-CONTATO
                        END-READ
                    END-PERFORM
               ELSE
                   DISPLAY 'ERRO AO ABRIR O ARQUIVO DE CONTATOS.'
                   DISPLAY 'FILE STATUS: ' WS-FS
               END-IF




           CLOSE CONTATOS
           .
       P300-FIM.

       P900-FIM.
            STOP RUN.
       END PROGRAM LISCNTT.
