      ******************************************************************
      * Author: LETICIA MARTINS BANDEIRA PASCALE
      * Date: 24/06/2024
      * Purpose: MOSTRAR INSTRUCAO LENGTH
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. INST-LENGTH.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       77 WS-COMPRIMENTO                   PIC 99 VALUE 0.
       01 WS-ENDERECO.
           03 WS-RUA                       PIC X(20).
           03 WS-BAIRRO                    PIC X(20).
           03 WS-CIDADE                    PIC X(30).
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

            DISPLAY "O COMPRIMENTO DO GRUPO ENDERECO EH: "
                                            LENGTH OF WS-ENDERECO

            COMPUTE WS-COMPRIMENTO = FUNCTION LENGTH (WS-ENDERECO)

            DISPLAY 'OUTRA FORMA: ' WS-COMPRIMENTO
            .
            STOP RUN.
       END PROGRAM INST-LENGTH.
