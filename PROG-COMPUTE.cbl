      ******************************************************************
      * Author: LETICIA MARTINS BANDEIRA PASCALE
      * Date: 24/06/2024
      * Purpose: MOSTRAR COMANDO COMPUTE
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROG-COMPUTE.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       77 WS-RESULT             PIC 9(05) VALUE ZEROS.
       77 WS-NUM-1              PIC 99    VALUE ZEROS.
       77 WS-NUM-2              PIC 99    VALUE ZEROS.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

           COMPUTE WS-RESULT = 5 + 5
           COMPUTE WS-RESULT = WS-RESULT * 3
           COMPUTE WS-RESULT = WS-RESULT - 15
           COMPUTE WS-RESULT = WS-RESULT / 3
           COMPUTE WS-RESULT = WS-RESULT ** 2

           DISPLAY "RESULTADO: " WS-RESULT

           DISPLAY "INFORME O PRIMEIRO NUMERO: "
           ACCEPT WS-NUM-1

           DISPLAY "INFORME O SEGUNDO NUMERO: "
           ACCEPT WS-NUM-2

           COMPUTE WS-RESULT = WS-NUM-1 + WS-NUM-2

           DISPLAY "RESULTADO: " WS-RESULT

            STOP RUN.
       END PROGRAM PROG-COMPUTE.
