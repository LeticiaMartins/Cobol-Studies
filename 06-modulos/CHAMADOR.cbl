      ******************************************************************
      * Author: LETICIA MARTINS BANDEIRA PASCALE
      * Date: 25/06/2024
      * Purpose: MOSTRAR USO DE MODULOS
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. CHAMADOR.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 WS-AREA.
           03 WS-RESULT          PIC 99.
           03 WS-N1              PIC 99.
           03 WS-N2              PIC 99.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            DISPLAY "PROGRAMA CHAMADOR"

            INITIALISE WS-AREA

            SET WS-N1           TO 5
            SET WS-N2           TO 3

            DISPLAY 'CHAMANDO PROGRAMA....'
            CALL 'CHAMADO'
                                              USING WS-AREA
            DISPLAY 'PROGRAMA CHAMADO EXECUTADO COM SUCESSO: '
                                                    WS-RESULT

            STOP RUN.
       END PROGRAM CHAMADOR.
