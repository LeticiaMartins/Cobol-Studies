      ******************************************************************
      * Author: LETICIA MARTINS
      * Date: 21/06/2024
      * Purpose: Mostrar comando ACCEPT
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROG-ACCEPT.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       77 WS-MOSTRA             PIC X(20) VALUE SPACES.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.



            DISPLAY "DIGITE ALGO: "
            ACCEPT WS-MOSTRA
            DISPLAY "WS-MOSTRA: " WS-MOSTRA " " 45 " Texto...."

            ACCEPT WS-MOSTRA FROM DATE YYYYMMDD
            ACCEPT WS-MOSTRA FROM DAY-OF-WEEK

            DISPLAY WS-MOSTRA

            STOP RUN.
       END PROGRAM PROG-ACCEPT.
