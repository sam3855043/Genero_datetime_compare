# Schema and main logic for handling datetime operations
# Author: samuel-chuang
# Email: sam3855043@gmail.com
# This 4gl is an example assignment for time comparison.

MAIN
   # Define string and datetime variables
   DEFINE date_start   STRING
   DEFINE date_end     STRING
   DEFINE ld_now       DATETIME YEAR TO SECOND
   DEFINE ld_now1      DATETIME HOUR TO SECOND
   DEFINE dt_start DATETIME YEAR TO SECOND
   DEFINE dt_end DATETIME YEAR TO SECOND
   DEFINE ls_datetime  DATETIME YEAR TO SECOND
   DEFINE ls_date      STRING
   DEFINE ls_str       STRING

   # Assign current datetime values
   LET ld_now = DATETIME(2024-11-29 01:45:19) YEAR TO SECOND
   LET ld_now1 = DATETIME(09:45:19) HOUR TO SECOND
   DISPLAY "ld_now:",ld_now

   # Convert string to datetime and assign values
   LET ls_str = '2024-11-29 01:45:19'
   LET ld_now = ls_str 
   LET ls_date = "2024-11-29"

   # Define start and end of day strings
   LET date_start = "00:00:00"
   LET date_end = "23:59:59"

   # Concatenate date with time for start of the day
   LET ls_str = "2024-11-29 ",date_start
   DISPLAY 'date_start:',ls_str
   LET dt_start= ls_str

   # Concatenate date with time for end of the day
   LET ls_str = "2024-11-29 ",date_end
   DISPLAY 'date_end:',ls_str
   LET dt_end = ls_str 

    # Compare datetime values
    IF ld_now >= dt_start AND ld_now < dt_end THEN
        DISPLAY "ld_now is earlier than dt1."
    ELSE
        DISPLAY "ld_now is not earlier than dt1."
    END IF
END MAIN
