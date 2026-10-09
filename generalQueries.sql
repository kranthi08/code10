--select * from BI2 where customer_id = '1785';
--select * from x80 where LABEL_NM = 'AMOXICILLIN 500 MG CAPSULE' and PACKAGE_SIZE_CT = '500.000';
--select * from f06 where drug_list_id = '34583';
--select * from x80 where NDC_ID='00093310905';
--select * from f06 where DRUG_LIST_IDENTIFYING_SHT_NM='UNCM16151';
-- prescriber queries
select * from AK6 where external_prescriber_id='1164629218'; -- where PRESCRIBER_ID_EFFECTIVE_DT='2020-01-01';
select * from AK5 where prescriber_id = '177637814';
select * from P32_A999;
select * from AI2_A999 where PRESCRIBER_COMPONENT_ID='730';
select * from Ah8_A999 where last_mnt_opid like 'CB%';--PRESCRIBER_COMPONENT_SHT_NM = 'PCCOMPRSBR';
select * from AM2 where PRESCRIBER_ID_EFFECTIVE_DT='2020-01-01';
select * from AL7;
select * from F69 where customer_set_id = '1150';
select * from P32 where last_mnt_opid='DT82484';
select * from P23;
select * from AJ0;

select * from H87 where customer_no='1785';
select * from B34;
select * from I57;
select NDC_ID,GENERIC_AVAILABLE_CD,GCN_SEQNO_ID,NDC_ADD_DT,NDC_UPDATE_DT,ARGUS_NDC_DELETE_DT,ACTIVE_CD,GPI_CD from x80 where GENERIC_AVAILABLE_CD='N' and GPI_CD = '1' and ARGUS_NDC_DELETE_DT is NULL;

select * from X80;