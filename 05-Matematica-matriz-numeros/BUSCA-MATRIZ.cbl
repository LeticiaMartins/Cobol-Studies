      ******************************************************************
      * Author: LETICIA MARTINS BANDERA PASCALE
      * Date: 01/07/2024
      * Purpose: MATRIZ BUSCA POR CHAVE
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. YOUR-PROGRAM-NAME.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.

       01 WS-TABELA.
          03 WS-REGISTRO  OCCURS 4 TIMES
                          ASCENDING KEY IS WS-CHAVE INDEXED BY I.
               05 WS-CHAVE                          PIC 99.
               05 WS-NOME                           PIC X(06).
       77 WS-COD                                    PIC 99.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

            MOVE '01MARCOS02CARLOS03MARINA04ANA   ' TO WS-TABELA

            DISPLAY  WS-TABELA

            DISPLAY 'INFORME O CODIGO: '
            ACCEPT   WS-COD

            SEARCH ALL WS-REGISTRO
                   AT END
                       DISPLAY 'DADO NAO ENCONTRADO'
                   WHEN WS-CHAVE(I) = WS-COD
                   DISPLAY 'ENCONTRADO: '
                           WS-CHAVE(I)
                           ' - '
                           WS-NOME(I)
                           ' POSICAO: '
                           I
            END-SEARCH


            STOP RUN.
       END PROGRAM YOUR-PROGRAM-NAME.
