-- Add mod_date audit column
alter table emp add mod_date date;
-- Create trigger
CREATE OR REPLACE TRIGGER EMP_BIUR_TRG
BEFORE INSERT OR UPDATE
ON EMP
REFERENCING NEW AS New OLD AS Old
FOR EACH ROW
BEGIN

   :NEW.MOD_DATE := SYSDATE;

END EMP_BIUR_TRG;
/