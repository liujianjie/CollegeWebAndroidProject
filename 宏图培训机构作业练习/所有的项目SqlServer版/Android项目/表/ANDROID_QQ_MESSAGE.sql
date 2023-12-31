CREATE TABLE "SCOTT"."ANDROID_QQ_MESSAGE" 
   (	"M_ID" NUMBER(6,0), 
	"QQ_ID" NUMBER(5,0), 
	"QQ_ZHANGHAO" VARCHAR2(15), 
	"QQ_NAME" VARCHAR2(20), 
	"QQ_TOUXIANG" VARCHAR2(100), 
	"M_MESSAGE" VARCHAR2(200), 
	"M_DATE" DATE, 
	"M_JSID" NUMBER(5,0), 
	"M_ZHANGHAO" VARCHAR2(15), 
	"M_NAME" VARCHAR2(20), 
	"M_TOUXIANG" VARCHAR2(100), 
	"M_STATU" NUMBER(1,0), 
	 PRIMARY KEY ("M_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS"  ENABLE
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS" ;
 
  CREATE UNIQUE INDEX "SCOTT"."SYS_C005899" ON "SCOTT"."ANDROID_QQ_MESSAGE" ("M_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS" ;
 
  ALTER TABLE "SCOTT"."ANDROID_QQ_MESSAGE" ADD PRIMARY KEY ("M_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS"  ENABLE;
