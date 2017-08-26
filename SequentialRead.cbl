       identification division.
       program-id. SeqRead.
       Author. Bo Liu.
       
       Environment division.
       input-output section.
       file-control.
           select studentfile assign to "C:\Cobol\students.dat"
               organization is line sequential.
               
       Data division.
       file section.
       FD studentfile.
       01 studentrec.
           88 endofstudentfile value high-values.
           05 studentid        pic 9(7).
           05 StudentName.
               20 surname      pic x(8).
               20 initials     pic xx.
           05 Dateofbirth.
               20 Yobirth      pic 9(4).
               20 Mobirth      pic 9(2).
               20 Dobirth      pic 9(2).
           05 coursecode       pic X(4).
           05 Gender           pic x.
           
       Procedure division.
       begin.
      *     open output studentfile
           DISPLAY "Enter student details using template below."
           DISPLAY "Enter no data to end"
           
      *     perform getstudentrecord
      *     perform until studentrec = spaces
      *         write studentrec
      *         perform getstudentrecord
      *      end-perform
      *      close studentfile
            
            open input studentfile.
            read studentfile  
                   at end set endofstudentfile to true
            end-read
            perform until endofstudentfile 
               display studentid space studentname space coursecode
               read studentfile
                    at end set endofstudentfile to true
               end-read
            end-perform
            close studentfile
            stop run.
            
       GetStudentRecord.
       DISPLAY "NNNNNNNSSSSSSSSIIYYYYMMDDCCCCG"
       ACCEPT  StudentRec.

       