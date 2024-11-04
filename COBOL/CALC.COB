       IDENTIFICATION DIVISION.
       PROGRAM-ID. CALC.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
           01 NUM1 PIC 9(10).
           01 NUM2 PIC 9(10).
           01 RES PIC 9(10) V9(2).
           01 OPCAO PIC X.
       PROCEDURE DIVISION.
           DISPLAY "ESCOLHA A OPERACAO: + - * /".
           ACCEPT OPCAO.
           DISPLAY "DIGITE O PRIMEIRO NUMERO: ".
           ACCEPT NUM1.
           DISPLAY "DIGITE O SEGUNDO NUMERO: ".
           ACCEPT NUM2.
           EVALUATE OPCAO
               WHEN  '+'
                  COMPUTER RES = NUM1 + NUM2
               WHEN '-'
                   COMPUTER RES = NUM1 - NUM2
               WHEN '*'
                   COMPUTER RES = NUM1 * NUM2
               WHEN '/'
                   COMPUTER RES = NUM1 / NUM2
               WHEN OTHER 
                  CONTINUE
           END-EVALUATE.

           DISPLAY " O RESULTADO: " RES.
           STOP RUN.
           
           