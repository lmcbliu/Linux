       Identification division.
       Program-id. InputAndDisplay.
       Author. Bo Liu.
      *Accept and display and display information
       
       Data division.
       Working-storage section.
       01 studentInfor.
           05  StudentId   PIC 9(7).
           05  StudentName. 
               30 Surname  PIC X(8).
               30 FirstName PIC XX.
           05  CourseCode  PIC X(4).
           05  Gender      PIC X.
       
       01  CurrentDate.
           05  CurrentYear PIC 9(4).
           05  CurrentMonth    PIC 99.
           05  CurrentDay     PIC 99.
       
       01 DayOfYear.
           05 Year             PIC 9(4).
           05 YearDay        PIC 9(3).
           
       01  CurrentTime.
           05 CurrentHour      PIC 99.
           05  CurrentMinute   PIC 99.
           05  Year            PIC 9(4).
           
       Procedure division.
       Begin.
           Display "Enter student information".
           Display "Enter - ID, Surname, Initials, Coursecode, Gender".
           DISPLAY "SSSSSSSNNNNNNNNIICCCCG".
           ACCEPT  studentInfor.
           ACCEPT  CurrentDate FROM DATE YYYYMMDD.
           ACCEPT  DayOfYear FROM DAY YYYYDDD.
           ACCEPT  CurrentTime FROM TIME.
           DISPLAY "Name is ", FirstName SPACE Surname.
           DISPLAY "Date is " CurrentDay SPACE CurrentMonth 
           SPACE CurrentYear.
           DISPLAY "Today is day " DayOfYear " of the year".
           DISPLAY "The time is " CurrentHour ":" CurrentMinute.
           STOP RUN.
       
       
       