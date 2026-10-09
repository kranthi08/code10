--select * from BI2 where customer_id = '1785';
--select * from x80 where LABEL_NM = 'AMOXICILLIN 500 MG CAPSULE' and PACKAGE_SIZE_CT = '500.000';
--select * from f06 where drug_list_id = '34583';
select * from x80 where NDC_ID='66993058697';
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
select * from I57 where claim_id = '244910000121';
select NDC_ID,GENERIC_AVAILABLE_CD,GCN_SEQNO_ID,NDC_ADD_DT,NDC_UPDATE_DT,ARGUS_NDC_DELETE_DT,ACTIVE_CD,GPI_CD from x80 where GENERIC_AVAILABLE_CD='N' and GPI_CD = '1' and GENERIC_MANUFACTURER_IND_CD='2' and ARGUS_NDC_DELETE_DT is NULL;
select * from X80;

select * from I57 where claim_id like '244%';
select * from I57 where customer_id = '0756';

select * from J93 where cust_id = '1814';
select * from G89 where cust_id = '1814';
insert into J89 

select * from PB0 order by BIN_PCN_SEQ_ID asc

select * from w15 where member_id = '000000020240501101';
select * from w15 where claim_id = '245270004781';

select * from H94 where clm_id = '245090002671';
select * from H90 where clm_id = '245380001051';
select * from H97 where cust_id = '1814' and clnt_id = '1' and grp_id = '6';

select * from H90 where clm_id = '245310000861';
select * from H90 where mbr_id = '000000020240415102';

select * from H94 where cust_id = '1785' and clm_id = '245280000131';

select * from H92 where mbr_id = '000000020240516100' and cust_id = '1814';
select * from H94 where clm_id = '245380000401';

select * from H96 where cust_id = '1814' and mbr_id = '000000020240516100';

select * from Ax6 where ded_pln_lmt_id='232558';
select * from J01 where cust_id = '1785';
select * from GP0 where customer_id = '1788';
select * from J50;
select CUST_SCHEMA from H87 where customer_no = '1814';
update ARGDR2.H87 h87 set CUST_SCHEMA = 'DR200000' where ISN_IDENTITY = '4719' and CUSTOMER_NO = '1814' and FULL_TITLE = 'ADJPLD-TEAM-CUSTOMER';
select * from w15 where member_id = '000000020240523101';
select * from H87 where customer_no = '1628';
update ARGDR1.H87 h87 set CUST_SCHEMA = 'DR100000' where ISN_IDENTITY = '16376' and CUSTOMER_NO = '1628' and FULL_TITLE = 'Customer1628';

select * from H96 where clm_id = '245720023461';
select * from H92 where MBR_ID = '000000020240523101';
select * from H90 where clm_id = '245470004161';
select cust_id,clnt_id,grp_id,mbr_id,cse_id,mbr_xactn_amt,pln_xactn_amt,prcs_add_tmsp
       from H96 where cust_id = '1814' and clnt_id = '1' and grp_id='6' and mbr_id = '000000020240526101';

select cust_id,clnt_id,grp_id,mbr_id,mbr_xactn_amt,pln_xactn_amt,plro_amt,prcs_add_tmsp from H96 where clm_id = '246180015721';

select clm_id,cust_id,clnt_id,grp_id,mbr_id,lis_amt,pln_copay_amt,medicaid_at from H90 where clm_id = '245470004181';
select * from H96 where clm_id = '245670010971';

select * from H92 where clm_id = '245630009751';
select * from H90 where clm_id = '245630009791';

select clm_id,cust_id,clnt_id,grp_id,mbr_id,pln_copay_amt,total_drug_cost_accum_at,troop_accum_at from H90 where clm_id in ('245630009751','245630009791');

select * from h96_A999 where clm_id in ('245630001201','245630001231','245630001251','245630001301','245630001311');
select * from h92_A999 where clm_id in ('245630001201','245630001231','245630001251','245630001301','245630001311');

select * from S14;

select * from PB0 where pcn_id='18310001';
select * from PB0 where customer_id = '1835';

select * from B45 where customer_id = '320';
select * from B34;

select * from H90 where clm_id = '245710028231';

select customer_id,
       claim_id,
       clm_benefit_stage_type_1_cd,
       clm_benefit_stage_type_2_cd,
       clm_benefit_stage_type_3_cd,
       clm_benefit_stage_type_4_cd
       from C52 where claim_id>'245700000000';
       
select * from c52 --where CLM_BENEFIT_STAGE_TYPE_1_CD!='' and customer_id = '1814';

insert into C52 (customer_id,claim_id,last_mnt_ts,last_mnt_opid,service_provider_id,
                submitted_customer_id,submitted_client_id,clm_benefit_stage_type_4_cd) 
         values ('1814','245720027361',CURRENT_TIMESTAMP,'CLAIMPOS','1639194236','1814','1','4');
         
update ARGDR2.H87 h87 set CUST_SCHEMA = 'DR200000' 
where ISN_IDENTITY = '4719' and CUSTOMER_NO = '1814' and FULL_TITLE = 'ADJPLD-TEAM-CUSTOMER'; 

update ARGDR2.C52 c52 set CLM_BENEFIT_STAGE_TYPE_1_CD = '' where customer_id= '1814' and claim_id = '245720027281';        
select * from c52 where claim_id = '245720027361'; 

select * from OH0 where argus_member_id = '1643663';
select * from O58 where argus_member_id = '1643532';
select argus_member_id from O58 where member_id = '000000011423072024';

select * from H87;        
insert into OH0 (ohi_record_id,last_mnt_ts,last_mnt_opid,customer_id,argus_member_id,ohi_sequence_nbr,ohi_payer_order_nbr,ohi_type_cd,ohi_effective_dt,ohi_termination_dt,ohi_bin_id,ohi_prcsr_ctrl_nbr_id,ohi_group_id,ohi_member_id,ohi_person_suffix_cd,ohi_help_desk_phn_nbr,EVENT_ID) values('17',current_timestamp,'LAST_MNT','1814','1644025','123','704','Q','2020-01-01','2032-01-01','098765','92837465','1','12345678901','PER','OHI_HELP','304');
select * from OH0;

update ARGDR2.OH0 oh0 set OHI_TYPE_CD = 'P' 
where ARGUS_MEMBER_ID = '1643523' and CUSTOMER_ID = '1814';

select * from HA1_A999 where customer_id = '1814'; -- Global table 
insert into HA1_A999 (cust_id,tbl_view_idx,tbl_typ_cde,customer_id,client_id,cde_1,cde_2,bgn_dte,last_mnt_ts,
                       last_mnt_opid,end_dte,prcs_actn_indr,prcs_pgm_id,prcs_usr_id,prcs_strt_tmsp,prcs_end_tmsp)
            values('2','1','CLT7','1814','1','98765','92837465','2020-01-01',current_timestamp,'XXXXXXXX','2030-12-31','1','GOTM',
            'DT82484',current_timestamp,'9999-12-31 23:59:00');

select * from S14 where customer_id = '1814';

select clm_id,cust_id,clnt_id,grp_id,mbr_id,mbr_xactn_amt,pln_xactn_amt from H96 where clm_id in('246270000651','246270000681');
select clm_id,cust_id,clnt_id,grp_id,mbr_id,pln_copay_amt,LIS_AMT,COVERAGE_GAP_DISCOUNT_AT from H90 where cust_id='1628' and clm_id = '246070000091';

select * from C52 where service_provider_id = '1639194236';
select * from H96 where mbr_id = '000000021607202401';

