       Identification division.
       Program-id. multiply.
       Author. Bo Liu.
       
       Data division.
       
       working-storage section.
       01 num1     PIC 99 value zeros.
       01 num2     PIC 99 value zeros.
       01  result  PIC 99 value zeros. 
       01 sizeerrormessage PIC x(20) value "Size Error".
       
       Procedure Division.
           display "Enter first number  (2 digit) : " WITH NO 
           ADVANCING.
           Accept num1.
           display "Enter second number  (2 digit) : " WITH NO 
           ADVANCING.
           Accept num2.
           multiply num1 by num2 giving result
           on size error display sizeerrormessage end-multiply.
           
           display "Result is :", result.
           stop run.
           
           
        