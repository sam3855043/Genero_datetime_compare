SCHEMA ds
MAIN

#  DEFINE ld_now       LIKE gzpf_t.gzpf002
   DEFINE date_start   STRING
   DEFINE date_end     STRING
   DEFINE ld_now       DATETIME YEAR TO SECOND
   DEFINE ld_now1      DATETIME HOUR TO SECOND
   DEFINE dt_start DATETIME YEAR TO SECOND
   DEFINE dt_end DATETIME YEAR TO SECOND
   DEFINE ls_datetime  DATETIME YEAR TO SECOND
   DEFINE ls_date      STRING
   DEFINE ls_time      LIKE gzpg_t.gzpg004
   DEFINE ls_str       STRING

   LET ld_now = DATETIME(2024-11-29 01:45:19) YEAR TO SECOND
   LET ld_now1 = DATETIME(09:45:19) HOUR TO SECOND
   DISPLAY "ld_now:",ld_now
   LET ls_str = '2024-11-29 01:45:19'
   LET ld_now = ls_str 
   LET ls_date = "2024-11-29"
   LET date_start = "00:00:00"
   LET date_end = "23:59:59"
   LET ls_str = "2024-11-29 ",date_start
   DISPLAY 'date_start:',ls_str
   LET dt_start= ls_str
   LET ls_str = "2024-11-29 ",date_end
   DISPLAY 'date_end:',ls_str
   LET dt_end = ls_str 

   
IF ld_now >= dt_start AND ld_now < dt_end THEN
#IF ld_now < dt_end THEN
#IF ld_now > dt_start THEN
    DISPLAY "ld_now is earlier than dt1."
ELSE
    DISPLAY "ld_now is not earlier than dt1."
END IF
END MAIN
