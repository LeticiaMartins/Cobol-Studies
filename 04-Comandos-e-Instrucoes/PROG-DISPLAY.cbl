      ******************************************************************
      * Author: LETICIA MARTINS
      * Date: 21/06/2024
      * Purpose: Mostrar comando DISPLAY
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROG-DISPLAY.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       77 WS-MOSTRA              PIC X(10) VALUE ' MENSAGEM'.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

            DISPLAY "Hello world " 45 WS-MOSTRA

            STOP RUN.
       END PROGRAM PROG-DISPLAY.
