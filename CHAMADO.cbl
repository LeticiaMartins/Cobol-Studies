      ******************************************************************
      * Author: LETICIA MARTINS BANDEIRA PASCALE
      * Date: 25/06/2024
      * Purpose: MOSTRAR USO DE MODULOS
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. CHAMADO.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       LINKAGE SECTION.
       01 PARAMETRES.
           02 WS-RETURN PIC 99 VALUE 0.
           02 WS-NUM-1  PIC 99 VALUE 0.
           02 WS-NUM-2  PIC 99 VALUE 0.

       PROCEDURE DIVISION USING PARAMETRES.
       MAIN-PROCEDURE.
           DISPLAY "PROGRAMA CHAMADO"

           DISPLAY 'RECEBEU WS-NUM-1: ' WS-NUM-1
           DISPLAY 'RECEBEU WS-NUM-2: ' WS-NUM-2

           COMPUTE WS-RETURN = WS-NUM-1 + WS-NUM-2


           GOBACK.
       END PROGRAM CHAMADO.
