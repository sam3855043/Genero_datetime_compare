# Schema and main logic for handling datetime operations
# Author: samuel-chuang
# Email: sam3855043@gmail.com
# This 4gl is an example assignment for time comparison.
# using DIGIWIN SCHEMA TO TEST
SCHEMA ds
MAIN

   DEFINE ls_gzpg004   LIKE gzpg_t.gzpg004
   DEFINE ls_gzpg005   LIKE gzpg_t.gzpg005
   DEFINE ls_gzpg004_2 DATETIME HOUR TO SECOND
   DEFINE ls_gzpg005_2 DATETIME HOUR TO SECOND
   DEFINE ld_now       DATETIME YEAR TO SECOND
   DEFINE ld_now1      DATETIME HOUR TO SECOND
   DEFINE dt1 DATETIME YEAR TO SECOND
   DEFINE dt2 DATETIME YEAR TO SECOND
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
   LET ls_gzpg004 = "00:00:00"
   LET ls_gzpg005 = "23:59:59"

   LET ls_str = ls_date," ",ls_gzpg004
   # only datetime
   DISPLAY 'ls_gzpg004:',ls_gzpg004
   LET ls_gzpg004_2 = ls_gzpg004
   
   DISPLAY 'ls_gzpg004_2:',ls_gzpg004_2
   LET dt1 = ls_gzpg004_2
    DISPLAY 'dt1:',dt1
   LET ls_gzpg005_2 = ls_gzpg005

   #LET dt1 = ls_str
   DISPLAY "dt1:",dt1
   DISPLAY "ls_str:",ls_str

   LET ls_str = ls_date," ",ls_gzpg005
   #LET dt1 = ls_str
   LET dt2 = ls_str
   DISPLAY "dt2:",dt2
   DISPLAY "ls_str:",ls_str

   #IF ld_now >= dt1 AND ld_now < dt2 THEN
   #IF ld_now < dt2 THEN
   IF ld_now > dt1 THEN
      DISPLAY "dt1 is earlier than dt2."
   ELSE
      DISPLAY "dt1 is not earlier than dt2."
   END IF
END MAIN
