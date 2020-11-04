      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. HappyNumbers.
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
           77 WKS-OPTION      PIC 9(1) VALUE 0.
           77 WKS-NUMBER      PIC 9(38).
           77 WKS-N           PIC 9(38).
           77 WKS-SUM         PIC 9(38).
           77 WKS-DIG         PIC 9(38).
           77 WKS-POTENCIA    PIC 9(38).
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           PERFORM HAPPY-NUMBERS UNTIL WKS-OPTION = 2.
       STOP RUN.

       HAPPY-NUMBERS.
           DISPLAY "Calcular si es un numero feliz.".
           DISPLAY "1. Introducir un numero".
           DISPLAY "2. Salir".
           DISPLAY "Elige una opcion: ".
           ACCEPT WKS-OPTION
           IF WKS-OPTION = 1
               DISPLAY "Ingresa el numero: "
               ACCEPT WKS-NUMBER
               MOVE WKS-NUMBER TO WKS-N
               PERFORM CALC-HAPPY-NUMBER-1 UNTIL WKS-N = 89 OR = 1
               IF WKS-N = 1
                   DISPLAY "------ El numero es feliz!! ------------"
               ELSE
                   DISPLAY "------ El numero no es feliz -----------"
           ELSE IF WKS-OPTION = 2
               DISPLAY "Adios..."
           ELSE
               DISPLAY "Opcion no valida".

       CALC-HAPPY-NUMBER-1.
           MOVE 0 TO WKS-SUM
           PERFORM CALC-HAPPY-NUMBER-2 UNTIL WKS-N = 0
           MOVE WKS-SUM TO WKS-N.

       CALC-HAPPY-NUMBER-2.
           DIVIDE WKS-N BY 10 GIVING WKS-N REMAINDER WKS-DIG
           MULTIPLY WKS-DIG BY WKS-DIG GIVING WKS-POTENCIA
           ADD WKS-POTENCIA TO WKS-SUM.


       END PROGRAM HappyNumbers.
