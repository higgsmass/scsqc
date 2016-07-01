----------------------------------------------
-- Project: SCSQC
-- Author: Venkat Kaushik 
-- Purpose: DDL for QCM_CNTRL table
-- Created: Thu Jun 09 2016
----------------------------------------------

--------------------------------------------------------
--  DDL for Table QCM_CNTRL
--------------------------------------------------------

  CREATE TABLE "HSSC_ETL"."QCM_CNTRL" 
   (	"QCM_ID" NUMBER(22,0), 
	"BATCH_ID" NUMBER, 
	"LOCAL_CASE_ID" VARCHAR2(200 BYTE), 
	"REC_STATUS" VARCHAR2(30 BYTE), 
	"RES_STATUS" VARCHAR2(30 BYTE), 
	"RES_SITE" VARCHAR2(30 BYTE), 
	"RES_TYPE" VARCHAR2(30 BYTE), 
	"RES_MRN" VARCHAR2(50 BYTE), 
	"RES_CASE_ID" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "HSSC_ETL" ;

   COMMENT ON COLUMN "HSSC_ETL"."QCM_CNTRL"."QCM_ID" IS 'QCM Unique ID';
   COMMENT ON COLUMN "HSSC_ETL"."QCM_CNTRL"."BATCH_ID" IS 'Batch ID';
   COMMENT ON COLUMN "HSSC_ETL"."QCM_CNTRL"."LOCAL_CASE_ID" IS 'Local Case ID ';
   COMMENT ON COLUMN "HSSC_ETL"."QCM_CNTRL"."REC_STATUS" IS 'Status of a single QCM_CNTRL record';
   COMMENT ON COLUMN "HSSC_ETL"."QCM_CNTRL"."RES_STATUS" IS 'QCM Response Status (Created, Failure, Success)';
   COMMENT ON COLUMN "HSSC_ETL"."QCM_CNTRL"."RES_SITE" IS 'QCM Site ID ';
   COMMENT ON COLUMN "HSSC_ETL"."QCM_CNTRL"."RES_TYPE" IS 'QCM Response Type (Information, Validation, Load To Server, Schema Validation)';
   COMMENT ON COLUMN "HSSC_ETL"."QCM_CNTRL"."RES_MRN" IS 'QCM Patient Medical Record Number (=PATIENT.MRN)';
   COMMENT ON COLUMN "HSSC_ETL"."QCM_CNTRL"."RES_CASE_ID" IS 'QCM Case Number ';
--------------------------------------------------------
--  DDL for Index PKC_QCM_ID
--------------------------------------------------------

  CREATE UNIQUE INDEX "HSSC_ETL"."PKC_QCM_ID" ON "HSSC_ETL"."QCM_CNTRL" ("QCM_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "HSSC_ETL" ;
--------------------------------------------------------
--  Constraints for Table QCM_CNTRL
--------------------------------------------------------

  ALTER TABLE "HSSC_ETL"."QCM_CNTRL" ADD CONSTRAINT "PKC_QCM_ID" PRIMARY KEY ("QCM_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "HSSC_ETL"  ENABLE;
  ALTER TABLE "HSSC_ETL"."QCM_CNTRL" MODIFY ("LOCAL_CASE_ID" NOT NULL ENABLE);
  ALTER TABLE "HSSC_ETL"."QCM_CNTRL" MODIFY ("BATCH_ID" NOT NULL ENABLE);
  ALTER TABLE "HSSC_ETL"."QCM_CNTRL" MODIFY ("QCM_ID" NOT NULL ENABLE);
