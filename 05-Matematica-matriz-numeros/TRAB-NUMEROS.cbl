      ******************************************************************
      * Author: LETICIA MARTINS BANDEIRA PASCALE
      * Date: 25/06/2024
      * Purpose: TRABLHANDO COM NUMEROS
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. TRAB-NUMEROS.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 WS-VARIAVEIS.
           03 WS-INT                      PIC 9(09)       VALUE ZEROS.
           03 WS-DEC                      PIC 9(09)V99    VALUE ZEROS.
           03 WS-VLR                      PIC S9(09)V99   VALUE ZEROS.
       01 WS-MASCARAS.
           03 WS-MSK-INT-1                PIC 999B999B999.
           03 WS-MSK-INT-2                PIC 999,999,999.
           03 WS-MSK-INT-3                PIC ********9.
           03 WS-MSK-DEC-1                PIC ***,***,**9.99.
           03 WS-MSK-DEC-2                PIC ZZZ,ZZZ,ZZ9.99.
           03 WS-MSK-VLR-1                PIC ---,---,--9.99.
           03 WS-MSK-VLR-2                PIC $$$,$$$,$$9.99.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

           INITIALISE WS-VARIAVEIS


           MOVE 01                        TO WS-INT
                                             WS-DEC
                                             WS-VLR
           COMPUTE WS-INT = (WS-INT / 2) * -1
           COMPUTE WS-DEC = (WS-DEC / 2) * -1
           COMPUTE WS-VLR = (WS-VLR / 2) * -1


           DISPLAY 'FORMATO ORIGINAL: '
           DISPLAY 'WS-INT: ' WS-INT
           DISPLAY 'WS-DEC: ' WS-DEC
           DISPLAY 'WS-VLR: ' WS-VLR

           DISPLAY 'FORMATO COM MASCARAS: '

           MOVE WS-INT                     TO WS-MSK-INT-1
                                              WS-MSK-INT-2
                                              WS-MSK-INT-3

           MOVE WS-DEC                     TO WS-MSK-DEC-1
                                              WS-MSK-DEC-2

           MOVE WS-VLR                     TO WS-MSK-VLR-1
                                              WS-MSK-VLR-2

           DISPLAY 'WS-MSK-INT-1: ' WS-MSK-INT-1
           DISPLAY 'WS-MSK-INT-2: ' WS-MSK-INT-2
           DISPLAY 'WS-MSK-INT-3: ' WS-MSK-INT-3

           DISPLAY 'WS-MSK-DEC-1: ' WS-MSK-DEC-1
           DISPLAY 'WS-MSK-DEC-2: ' WS-MSK-DEC-2

           DISPLAY 'WS-MSK-VLR-1: ' WS-MSK-VLR-1
           DISPLAY 'WS-MSK-VLR-2: ' WS-MSK-VLR-2

            STOP RUN.
       END PROGRAM TRAB-NUMEROS.
