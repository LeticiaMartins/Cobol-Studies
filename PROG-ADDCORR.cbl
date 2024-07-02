      ******************************************************************
      * Author: LETICIA MARTINS BANDERA PASCALE
      * Date: 01/07/2024
      * Purpose: MATRIZ BUSCA POR CHAVE
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROG-ADDCORR.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 WS-REG-1.
          03 WS-CODIGO                PIC 9(05).
          03 WS-NOME                  PIC X(15).
          03 WS-TEL                   PIC X(09).

       01 WS-REG-2.
          03 WS-CODIGO                PIC 9(05).
          03 WS-NOME                  PIC X(15).
          03 WS-TEL                   PIC X(09).
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

            MOVE '05CARLOS GOMES9 514-1234' TO WS-REG-1
            MOVE 02                         TO WS-CODIGO OF WS-REG-2

            DISPLAY WS-REG-1
            DISPLAY WS-REG-2

            MOVE CORR WS-REG-1                TO WS-REG-2

      *      ADD WS-CODIGO  OF WS-REG-1       TO WS-CODIGO OF WS-REG-2
      *      MOVE WS-NOME   OF WS-REG-1       TO WS-NOME   OF WS-REG-2
      *      MOVE WS-TEL    OF WS-REG-1       TO WS-TEL    OF WS-REG-2

            DISPLAY WS-REG-1
            DISPLAY WS-REG-2
            .

            STOP RUN.
       END PROGRAM PROG-ADDCORR.
