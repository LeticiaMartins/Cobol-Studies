      ******************************************************************
      * Author: LETICIA MARTINS BANDERA PASCALE
      * Date: 02/07/2024
      * Purpose: MAIS SOBRE LOOPINGS
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOMM.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       77 WS-CONTAR                     PIC 999 VALUE 1.
       77 WS-CONDICAO                   PIC 999.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

            DISPLAY "INFORME ATE QUANDO DESEJA CONTAR: "
            ACCEPT WS-CONDICAO

      *      PERFORM VARYING WS-CONTAR FROM 1 BY 1 UNTIL
            PERFORM WITH TEST AFTER UNTIL
                             WS-CONTAR EQUAL WS-CONDICAO
      *                       WS-CONTAR GREATER THAN WS-CONDICAO
                    ADD 1 TO WS-CONTAR
      *                      WS-CONTAR GREATER THAN WS-CONDICAO
                    DISPLAY WS-CONTAR
            END-PERFORM

            STOP RUN.
       END PROGRAM PROGCOMM.
