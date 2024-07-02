      ******************************************************************
      * Author: LETICIA MARTINS BANDEIRA PASCALE
      * Date: 25/06/2024
      * Purpose: MOSTRAR ESTRUTURAS DE REPETEICAO
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. REPETICAO.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 WS-VARIAVEIS.
           03 WS-COUNT                    PIC 99.
           03 WS-TOT                      PIC 99.
           03 WS-IND                      PIC 99.
       PROCEDURE DIVISION.

       P100-INICIO.
           INITIALISE WS-VARIAVEIS
      *     PERFORM P300-PROCESSA-1        THRU P300-FIM 3 TIMES
      *     PERFORM P500-PROCESSA-2        THRU P500-FIM WITH TEST
      *                                         BEFORE UNTIL WS-COUNT = 5
           PERFORM P700-PROCESSA-3        THRU P700-FIM
           PERFORM P900-FINALIZA
           .
       P300-PROCESSA-1.
           ADD 1                          TO   WS-COUNT
           DISPLAY 'WS-COUNT: '                WS-COUNT

           MOVE ZEROS                     TO   WS-TOT
           PERFORM 3 TIMES
               ADD 1                      TO   WS-TOT
               DISPLAY 'WS-TOT: '              WS-TOT
           END-PERFORM
           .
       P300-FIM.

       P500-PROCESSA-2.
           ADD 1                          TO   WS-COUNT
           DISPLAY 'WS-COUNT: '                WS-COUNT

           MOVE ZEROS                     TO   WS-TOT
           PERFORM WITH TEST BEFORE UNTIL WS-TOT = 3
               ADD 1                      TO   WS-TOT
               DISPLAY 'WS-TOT: '              WS-TOT
           END-PERFORM
           .
       P500-FIM.

       P700-PROCESSA-3.

           PERFORM VARYING WS-IND FROM 1 BY 1 UNTIL WS-IND > 5
               DISPLAY 'WS-IND: '             WS-IND
           END-PERFORM
           .
       P700-FIM.

       P900-FINALIZA.
            STOP RUN.
       END PROGRAM REPETICAO.
