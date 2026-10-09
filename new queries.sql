--select * from PRESCRB1;

--select * from X80 where DRUG_FORM_CD = '3'and NDC_ADD_DT>'2020-01-01';

--select * from BI0_A999; --where DRUG_FORM_CD = '3';
--select * from s08;
--select * from o58 where cust_id='320' and clnt_id='75';

      

--select * from P72 where customer_set_id = '1780';
--SELECT DISTINCT F06.drug_list_id AS drugListId,
--		F06.drug_list_identifying_sht_nm, 
--                F06.drug_list_strc_version_cd AS drugListStrcVersionCd 
--              FROM   E21_a999 AS E21 
--                     INNER JOIN F06_a999 AS F06 
--                             ON E21.customer_set_id = F06.customer_set_id 
--              WHERE  E21.customer_id = '1782';
--select * from F06_A999; -- where DRUG_LIST_IDENTIFYING_SHT_NM = 'CCARGDF1';
--select * from E21_A999;
--select
--        * 
--    from
--        F06_A999 druglist0_ 
--    where
--        druglist0_.DRUG_LIST_IDENTIFYING_SHT_NM='CCARGDF1'
--        and druglist0_.CUSTOMER_SET_ID='1';

--SELECT
--        * 
--    FROM
--        BI0_A999  
--    WHERE
--        CUST_ID = '1'    
--        AND TBL_VIEW_IDX = '1'    
--        AND TBL_TYP_CDE = 'DRGL'    
--        AND CUST_ID_1 = 1    
--        AND CLNT_ID IN (
--            4, 9999
--        )   
--        AND DRUG_FORM_CD = '3'    
--        AND BGN_DTE <= '2023-02-02'    
--        AND END_DTE >= '2023-02-02'  
--    ORDER BY
--        CLNT_ID ASC,
--        PRCS_STRT_TMSP DESC FETCH FIRST 1 ROW ONLY WITH UR
--
--select
--        druglist0_.DRUG_LIST_ID as col_0_0_,
--        druglist0_.DRUG_LIST_STRC_VERSION_CD as col_1_0_ 
--    from
--        F06_A999 druglist0_ 
--    where
--        druglist0_.DRUG_LIST_IDENTIFYING_SHT_NM='CCARGDF3' and druglist0_.CUSTOMER_SET_ID='1';

--select * from F06_A999 where DRUG_LIST_STATUS_CD='I'and DRUG_LIST_IDENTIFYING_SHT_NM ='CCARGDF3';
--select * from F06_A999 where CUSTOMER_SET_ID='824';--where DRUG_LIST_IDENTIFYING_SHT_NM like 'CCAR%';-- where DRUG_LIST_IDENTIFYING_SHT_NM = 'CCARG*';
--select * from F04_A999 ;--where DRUG_LIST_ENTRY_EFFECTIVE_DT='1986-01-01' and LAST_MNT_OPID like 'CD%';
--select * from F05_A999;
--select * from ARGGBT.F02;
--select * from C76 where LAST_MNT_OPID like 'CD6%';
--select * from BI0_A999 where DRUG_FORM_CD = '3';
--SELECT DISTINCT F06.drug_list_id AS drugListId, 
--                               F06.drug_list_strc_version_cd AS drugListStrcVersionCd 
--               FROM   E21_a999 AS E21 
--                      INNER JOIN F06_a999 AS F06 
--                              ON E21.customer_set_id = F06.customer_set_id 
--               WHERE  E21.customer_id = '1' 
--                      AND E21.customer_set_type_id = '1' 
--                      AND F06.drug_list_identifying_sht_nm = 'CCARGDF3' 
--                         FETCH FIRST ROW ONLY

--SELECT *FROM   E21_a999 AS E21 
--INNER JOIN F06_a999 AS F06 ON E21.customer_set_id = F06.customer_set_id 
--	WHERE 
----		F06.DRUG_LIST_IDENTIFYING_SHT_NM = 'UNARGDF1'
--		F06.DRUG_LIST_IDENTIFYING_SHT_NM LIKE 'CCARGDF%'
--		and
--		F06.CUSTOMER_SET_ID = 1

--select * from F06 ;
--SELECT 
--	*
--FROM   F06_A999 AS F06
--INNER JOIN E21_A999 AS E21 ON E21.LAST_MNT_OPID = F06.LAST_MNT_OPID 
--	WHERE 
--		F06.DRUG_LIST_IDENTIFYING_SHT_NM like 'UNARGD%'
--		
--		and
--		F06.CUSTOMER_SET_ID = 824

--select * from F06 where CUSTOMER_SET_ID>820 and CUSTOMER_SET_ID<825;
--SELECT 
--	*
--FROM   E21_a999 AS E21 
--INNER JOIN F06_a999 AS F06 ON E21.customer_set_id = F06.customer_set_id 
--	WHERE 
----		F06.DRUG_LIST_IDENTIFYING_SHT_NM = 'UNARGDF1'
--		F06.DRUG_LIST_IDENTIFYING_SHT_NM = 'CCARGDF3';
--		and
--		F06.CUSTOMER_SET_ID = 1

--SELECT 
--	DISTINCT F06.drug_list_id AS drugListId, F06.drug_list_strc_version_cd AS drugListStrcVersionCd,  E21.customer_id, E21.customer_set_type_id
--FROM   E21_a999 AS E21 
--INNER JOIN F06_a999 AS F06 ON E21.customer_set_id = F06.customer_set_id 
--WHERE  
--    --E21.customer_id = :customerId 
--    --AND E21.customer_set_type_id = :customerSetId 
--    --AND 
--    F06.drug_list_identifying_sht_nm = 'CCARGDF1'  --:shortName 

--SELECT 
--	*
--FROM   E21_a999 AS E21 
--INNER JOIN F06_a999 AS F06 ON E21.customer_set_id = F06.customer_set_id 
--	WHERE 
----		F06.DRUG_LIST_IDENTIFYING_SHT_NM = 'UNARGDF1'
--		F06.DRUG_LIST_IDENTIFYING_SHT_NM LIKE 'CCARGDF%'
--		and
--		F06.CUSTOMER_SET_ID = 1

select * from PB3; -- where PCN_ID = '16130001'; -- and MIGRATION_LVL='D';

--select * from O59 where CUST_ID = '1779';

--select * from p40 where CLIENT_ID = 1 and BIN_NUM_ID=600428;
--select * from PB0;-- where CUSTOMER_ID=6;-- where PCN_ID='07590000' ;-- where CUSTOMER_ID = 1734;
--select * from SE0 order by record_added_ts DESC;
--select * from AH8 where CUSTOMER_SET_ID >1000;
--select * from PRESRB1;
--select * from AK6 where PRESCRIBER_ID = '1164629218';
--select * from AM2;
--select * from AI2;
--select * from AL1;
--select * from Ak6 where EXTERNAL_PRESCRIBER_ID= '1164629218';

--select * from U92 where CUSTOMER_SET_ID = '1141';
--select * from AH8 where CUSTOMER_SET_ID = '1142';
--select * from H87 where customer_no='1613';




