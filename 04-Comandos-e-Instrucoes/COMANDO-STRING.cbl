      ******************************************************************
      * Author: LETICIA MARTINS BANDEIRA PASCALE
      * Date: 24/06/2024
      * Purpose: MOSTRAR COMANDO STRING
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. COMANDO-STRING.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       77 WS-CONTEUDO              PIC X(30) VALUE SPACES.
       77 WS-TEXTO                 PIC X(40) VALUE SPACES.
       77 WS-PONTEIRO              PIC 9(02) VALUE ZEROS.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.


      *********************** FORMA 1 *********************************
           INITIALISE WS-CONTEUDO
                      WS-TEXTO
           STRING
               'LETICIA'
               ' '
               'MARTINS'
               DELIMITED BY SIZE INTO WS-CONTEUDO
           END-STRING

           DISPLAY WS-CONTEUDO


      *********************** FORMA 2 *********************************
           INITIALISE WS-CONTEUDO
                      WS-TEXTO
      *          1234567890123456789012345678901234567890
      *                            12345678901234567890
           MOVE 'A LETICIA MARTINS ESTA ESTUDANDO COBOL' TO WS-TEXTO

           STRING
               WS-TEXTO(1:10)
               WS-TEXTO(19:22)
               DELIMITED BY SIZE INTO WS-CONTEUDO
           END-STRING

           DISPLAY WS-CONTEUDO

      *********************** FORMA 3 *********************************
           INITIALISE WS-CONTEUDO
                      WS-TEXTO
      *          1234567890123456789012345678901234567890
      *                            12345678901234567890
           MOVE 'A LETICIA MARTINS ESTA ESTUDANDO COBOL' TO WS-TEXTO

           STRING
               WS-TEXTO(1:9)
               " "
               WS-TEXTO(19:22)
               DELIMITED BY SIZE INTO WS-CONTEUDO
           END-STRING

           DISPLAY WS-CONTEUDO

      *********************** FORMA 4 *********************************
           INITIALISE WS-CONTEUDO
                      WS-TEXTO

           MOVE 'A LETICIA MARTINS ESTA ESTUDANDO COBOL' TO WS-TEXTO

           STRING
               WS-TEXTO
               DELIMITED BY "R" INTO WS-CONTEUDO
           END-STRING

           DISPLAY WS-CONTEUDO

      *********************** FORMA 5 *********************************
            INITIALISE WS-CONTEUDO
                       WS-TEXTO
      *            LETICIA MARTINS
      *            123456789012345
           MOVE 'A                 ESTA ESTUDANDO COBOL' TO WS-TEXTO
           SET WS-PONTEIRO                               TO 3

           STRING
               "LETICIA MARTINS"
               DELIMITED BY SIZE INTO WS-TEXTO
               WITH POINTER WS-PONTEIRO

           END-STRING

           DISPLAY WS-TEXTO
           DISPLAY WS-PONTEIRO

            STOP RUN.



       END PROGRAM COMANDO-STRING.
