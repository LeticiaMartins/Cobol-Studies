      ******************************************************************
      * Author: LETICIA MARTINS BANDEIRA PASCALE
      * Date: 25/06/2024
      * Purpose: TRABLHANDO COM STRINGS
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. TRAB-STRINGS.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       77 WS-TM-1                      PIC 99.
       77 WS-TM-2                      PIC 99.
       COPY 'LAYOUT001'
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

           MOVE 'MARIA'               TO WS-PRIMEIRO-NOME
           MOVE 'CAMPOS'              TO WS-SEGUNDO-NOME
           MOVE '551196115542'        TO WS-TELEFONE
           MOVE 'RUA DEZ, 03'         TO WS-RUA
           MOVE 'SAO JOSE'            TO WS-BAIRRO
           MOVE 'SAO PAULO'           TO WS-CIDADE
           MOVE 'SP'                  TO WS-UF
           MOVE '0112002'             TO WS-CEP
           MOVE 'BRASILEIRA'          TO WS-NACIONALIDADE
           MOVE 'ENFERMEIRA'          TO WS-PROFISSAO

           MOVE ZEROS                 TO WS-TM-1
           INSPECT FUNCTION REVERSE(WS-PRIMEIRO-NOME)
                   TALLYING WS-TM-1 FOR LEADING ' '

           DISPLAY '1 - NOME COMPLETO'   WS-PRIMEIRO-NOME
           (1:(FUNCTION LENGTH(WS-PRIMEIRO-NOME) - WS-TM-1))
                                         ' '
                                         WS-ULTIMO-NOME
           DISPLAY '2 - TELEFONE.....'   '+' WS-PAIS ' '
                                         '(' WS-DDD ')'
                                         ' '
                                         WS-PREFIXO
                                         '-'
                                         WS-SUFIXO

           MOVE ZEROS                 TO WS-TM-1
           INSPECT FUNCTION REVERSE(WS-RUA)
                   TALLYING WS-TM-1 FOR LEADING ' '

           MOVE ZEROS                 TO WS-TM-2
           INSPECT FUNCTION REVERSE(WS-CIDADE)
                   TALLYING WS-TM-2 FOR LEADING ' '

           DISPLAY '3 - ENDERECO.....'   WS-RUA
           (1:(FUNCTION LENGTH(WS-RUA) - WS-TM-1))
                                         ' '
                                         WS-BAIRRO
                                         WS-CIDADE
           (1:(FUNCTION LENGTH(WS-CIDADE) - WS-TM-2))
                                         ' '
                                         WS-UF
               FUNCTION CONCATENATE(' - CEP: '
                                    WS-CEP-1
                                    '-'
                                    WS-CEP-2
                                    )
           DISPLAY '4 - NACIONALIDADE'   WS-NACIONALIDADE
           DISPLAY '5 - PROFISSAO....'   WS-PROFISSAO


            STOP RUN.
       END PROGRAM TRAB-STRINGS.
