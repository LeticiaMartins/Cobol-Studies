      ******************************************************************
      * Author: LETICIA MARTINS BANDEIRA PASCALE
      * Date: 24/06/2024
      * Purpose: MOSTRAR INSTRUCAO INSPECT
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. INSTRUCAO-INSPECT.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 WS-DATA                   PIC X(10) VALUE SPACES.
       77 WS-TOTAL                  PIC 9(02).
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

           MOVE "12"                TO WS-DATA(01:02).
           MOVE "/"                 TO WS-DATA(03:02).
           MOVE "03"                TO WS-DATA(04:02).
           MOVE "/"                 TO WS-DATA(06:01).
           MOVE "2021"              TO WS-DATA(07:04).

           DISPLAY WS-DATA.

      *     INSPECT WS-DATA TALLYING WS-TOTAL FOR ALL "/"
      *     BEFORE INITIAL "2021".

      *     DISPLAY "CONTAGEM TOTAL DO CARACTER: " WS-TOTAL.

           INSPECT WS-DATA REPLACING ALL "/" BY "-" AFTER "12".

           DISPLAY WS-DATA.

            STOP RUN.
       END PROGRAM INSTRUCAO-INSPECT.
