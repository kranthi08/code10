select * from H96 where mbr_id = '000000020250618102' and cse_id = '000000020250618102';
select * from H97 where cust_id = '1615' and clnt_id = '3';
select * from H96 where mbr_id = '000000012025040801';
select * from W15 where member_id = '000000020250618102' and cust_id = '1628';--cse_id = '20240810101';
select * from H96 where clm_id = '257080000531';
select * from H90 where mbr_id = '000000020250618101' and clm_stat_cde = '10';
select * from W15 order by PRCS_ADD_TMSP;
select * from G89 where cust_id = '1628';
select * from dedbl_pln_lmt where ded_pln_lmt_id ='37216';-- , DED_PLN_LMT_ID

select argus_member_id from O58 where member_id = '000000021012025103'; //776462
select * from O58 where member_id = '000000010124042026'; //825803, 10224042026
select argus_member_id from O58 where member_id = '000000010224042026'; //825804, 
select * from O58 where member_id = '2PD1AM1EA00'; //776462
insert into OH0 (ohi_record_id,
                last_mnt_ts,
                last_mnt_opid,
                customer_id,
                argus_member_id,
                ohi_sequence_nbr,
                ohi_payer_order_nbr,
                ohi_type_cd,
                ohi_effective_dt,
                ohi_termination_dt,
                ohi_bin_id,
                ohi_prcsr_ctrl_nbr_id,
                ohi_group_id,ohi_member_id,
                ohi_person_suffix_cd,ohi_help_desk_phn_nbr,EVENT_ID) 
                values('5',current_timestamp,'LAST_MNT','1628','776462','5','100','Q','2020-01-01','2032-01-01','098765','92837465','123460','12345678901','01','8007927858','1269990');
select * from OH0;

select * from oH0 where customer_id = '1628' and argus_member_id = '776462';
--update ARGDR1.OH0 set OHI_BIN_ID = '198765' where customer_id = '1628' and argus_member_id = '776462';
select * from HA1_A999 where cust_id='1628';

insert into HA1_A999 (cust_id,tbl_view_idx,tbl_typ_cde,customer_id,client_id,cde_1,cde_2,bgn_dte,last_mnt_ts,
                       last_mnt_opid,end_dte,prcs_actn_indr,prcs_pgm_id,prcs_usr_id,prcs_strt_tmsp,prcs_end_tmsp)
            values('1628','1','CLT7','1628','1','98765','92837465','2020-01-01',current_timestamp,'XXXXXXXX','2030-12-31','1','GOTM',
            'DT82484',current_timestamp,'9999-12-31 23:59:00');
update ARGDR1.HA1 set CDE_1='398765',CDE_2='392837465' where cust_id='1628' and customer_id='1628';            


select * from H96 where clm_id = '254060003331';
select * from H94 where clm_id = '246740001571';
select * from W15 where member_id = '000000020240810401';
select * from H90 where clm_id = '255360008241';
select * from S14 where customer_id = '1764';
select * from p52;
select * from H96 where cse_id = '000000020240911103';
select * from x80 where ndc_id = '00002418230';
select * from PB0 order by bin_pcn_seq_id;
select * from PB0 order by customer_id;
insert into PB0 (bin_pcn_seq_id,last_mnt_ts,last_mnt_opid,bin_id,pcn_id,customer_id,client_id,business_processor_cd,
                 bin_pcn_effv_dt,bin_pcn_term_dt,event_id) 
         values ('212',current_timestamp,'DT82484','600428','16150003','1615','4','CM','2020-01-01','9999-12-31','1226795');
         
select * from cms_cust_info where cust_id = '1633';
select * from cms_cust_info where cust_id = '320';

select cust_id,cms_contr_id_nbr,pbp_id,cms_pln_bnft_typ from ARGDR1.cms_cust_info where cust_id = '1628';

insert into cms_cust_info(cust_id,cms_contr_id_nbr,pbp_id) values 
                         ('1628','C1628','001'); 
select * from B34 where cms_benefit_processing_yr_dt='2025';    

select * from ARGDR1.PRCG_CDE_1 where misc_ind_1 = 'L' and prcs_pgm_id='GOTM';-- is not null;
select * from ARGDR1.PRCG_CDE_1 where cust_id = '1' and tbl_view_idx = '11' and CDE = '00088';
select * from ARGDR1.PRCG_CR_9_1 where MISC_CDE_2 is not null;
select * from ARGDR1.PRCG_CR_9_1 where cr_9='000882220';--'000710527';--000882220
select * from ARGDR1.PRCG_CR_9_1 where cr_9 like '000882220%';

SELECT * FROM PRCG_CDE_1 WHERE
                             tbl_typ_cde = 'CODE'  and
                             cust_id = '2' and
                             tbl_view_idx= '11' and
                             cde = '00088' and BGN_DTE <= '2026-01-02'
                           and  END_DTE >=  '2026-01-02'
                         ORDER BY PRCS_STRT_TMSP DESC LIMIT 1

select * from X80 where obsolete_dt>'2025-01-01';
SELECT SUBSTR(NDC_ID, 1, 9) FROM X80;
select * from PRCG_CR_9_1 t1 WHERE NOT EXISTS ( select * from X80 t2 where t1.CR_9=(select SUBSTR(NDC_ID,1,9) from X80));
update ARGDR2.H96 h96 set CLM_ID = '247130010882' where CSE_ID = '000000020240909101' and FILL_DTE = '2024-01-09' and cust_id='1831';


select * from AK5 where prescriber_id = '1619032018';
select * from AK5 where prescriber_id = '1851989610';
select * from AK5 where prescriber_first_nm='NATHAN' and prescriber_last_nm='BLOOM';
select * from AK6 where prescriber_id = '961';
select * from PRESCRB1 where date_added='2024-11-12';
select * from AL7 where prescriber_first_nm = 'PDACCUM';
select customer_id,client_id,prescriber_id,last_name,first_name,npi_presbr_id from PRESCRB1 where npi_presbr_id is not null;

Select * from PRESCRB1 where date_added>='2024-01-01' order by isn_identity;
Select * from AK5;

select * from E55 where prescriber_list_id = '839';//customer set id -1698,customer set type id - 3
select * from E21 where customer_set_id = '1698';

select * from O47_A999;
select * from O59;

select * from O58 where case_id = '000000099230820269';
update ARGDR2.O58 O58 set mbr_mdcr_xplant='y' where case_id = '000000099230820269' and cust_id = '1814' and clnt_id='1';
update ARGDR1.PB0 pb0 set pcn_id = '16150004' where bin_pcn_seq_id = '212' and customer_id='1615' and client_id = '4';
select * from PB3;
select * from w15;


select * from H96 where cust_id = '1628' and fill_dte='2025-01-01' limit 1; // ded_pln_lmt_id = 37217
select * from H96 where cust_id = '1628' order by PRCS_ADD_TMSP desc;
select * from dedbl_pln_lmt where ded_pln_lmt_id = '37352';

select * from H96 h96 inner join dedbl_pln_lmt dedplnlmt on h96.ded_pln_lmt_id=dedplnlmt.ded_pln_lmt_id where dedplnlmt.pln_typ_cde='DD1' and h96.cust_id in ('0319','0320','0544') order by h96.prcs_add_tmsp desc limit 1;


select * from dedbl_pln_lmt where ded_pln_lmt_id = '37803' //'36593';
select * from dedbl_pln_lmt where ded_pln_lmt_id = '8640'; //'36593';

select * from H96 where cust_id = '1615'; //ded_pln_lmt_id = 36593

select * from H96 where cust_id = '319' order by PRCS_ADD_TMSP desc limit 1; // 260867700011, //37803

select * from H96 where cust_id = '320' order by PRCS_ADD_TMSP; 
select * from dedbl_pln_lmt where ded_pln_lmt_id = '37707'; //'36593';

select * from ARGDR2.AU1 where customer_id = '7107' and client_id = '71';
select * from ARGDR2.H96 where cust_id = '1831' order by prcs_add_tmsp desc;
select * from ARGDR2.H96 where cust_id = '1785' order by prcs_add_tmsp desc;

select * from h96 where cust_id = '320' and prcs_add_usr_id = 'CICS' order by prcs_add_tmsp desc;

select * from c76 where customer_set_id= '1678';
select * from E21 where customer_id = '1764';

select * from ARGDR2.CDA where customer_set_id = '727';

select * from H96 where clm_id = '257080000901';
select * from ARGDR1.dedbl_pln_lmt where ded_pln_lmt_id ='37217';

select * from O58 where cust_id = '1831';

Select TOTAL_DRUG_COST_ACCUM_AT from ARGDR1.H90 where clm_id= '257100031961';
select * from J03 where cust_id='320' and clnt_id='8' and clm_stat_cde='10' order by prcs_add_tmsp desc;

select * from I63 where customer_id = '1615';
select * from A74;
select * from CD6;
select * from CD7;

select * from BG7;

select * from W38;
select * from O59 where cust_id='320';
select * from o48 where owner_id = '320' and table_nbr='3' order by isn;
select * from o48 where device_added!='BATCH';

select * from o48 where owner_id = '1615';

select * from ARGDR1.AD9 where customer_id = '1615' and LEGACY_MEMBER_ID='000000020250624101' and ARGUS_MEMBER_ID='825803';
select * from ARGDR1.AD9;
select * from ARGDR1.AD9 where legacy_member_id='000000010124042026';

select * from O58 where member_id = '000000020250624102'; //826405
update ARGDR1.AD9 ad9 set SYSTEM_INDICATOR = 'D' where customer_id = '1615' and LEGACY_MEMBER_ID='000000020250624102' and ARGUS_MEMBER_ID='826405';
Update ARGDR1.AD9 ad9 set SYSTEM_INDICATOR_EFF_DT = '2020-01-01' where customer_id = '1615' and LEGACY_MEMBER_ID = '000000020250624102' and ARGUS_MEMBER_ID='826405';

--insert into o48(DATE_ADDED,TIME_ADDED,OWNER_ID,TABLE_NBR,TABLE_ALPHA_KEY_1,ALPHA_FLD_1) values (current date,timestamp,'1615','3','2A','DUPLICATE CLAIM');
select * from O48 where owner_id='1615';
select * from J93;

select * from J03 where claim_id = '253317800061';--cust_id = '320' order by prcs_add_tmsp;
select * from J04 where cust_id = '1615';

select * from O59 where cust_id='1615';
select * from I57 order by last_mnt_ts desc;
select * from I56 where cust_id = '1615';
select * from clients0 where customer_no='1615';
select * from customr0 where customer_no='1615';;
select * from groups1 where customer_no='1615';
select * from F23;
select * from dmr_ltr_data where cust_id='1615' order by prcs_add_tmsp;
select * from dmr_ltr_partnts where cust_id='1615' order by prcs_add_tmsp;
select * from I63 where last_mnt_opid = 'DMR' order by last_mnt_ts desc;
select * from C52 where customer_id = '1615' order by last_mnt_ts desc;
select * from O59 where cust_id='1615';
select * from EE1;
select * from J03 where customer_id='1615';
--===========================================================
SELECT 
    j01.pln_typ_cde AS AccumulatorType,
    ax6.accum_plan_type_nm AS AccumulatorName,
    j01.medcl_rx_indr AS MedicalRx,
    j01.ntwk_indr AS NetworkIndr,
    j01.rtl_ml_ord_indr AS RetailMo,
    j01.brnd_gnrc_indr AS BrandGeneric,
    h96.mbr_xactn_amt AS MemberAmount,
    h96.pln_xactn_amt AS PlanAmount,
    h96.excld_xactn_amt AS ExcludedAmount,
    h96.plro_amt AS PLROAmount,    
    h96.prcs_add_tmsp AS prcsAddTmsp
FROM ARGDR1.h96 h96
JOIN ARGDR1.j01 j01 
    ON h96.ded_pln_lmt_id = j01.ded_pln_lmt_id
LEFT JOIN ARGDR1.ax6 ax6 
    ON j01.ded_pln_lmt_id = ax6.ded_pln_lmt_id
WHERE h96.cust_id = '1628'
  AND h96.clm_id = '257140011561'
  AND (
        h96.mbr_xactn_amt != 0
     OR h96.pln_xactn_amt != 0
     OR h96.excld_xactn_amt != 0
     OR h96.plro_amt != 0
  )
ORDER BY h96.prcs_add_tmsp;

select * from AX6;
select * from H96 where clm_id='257140011551';
select * from J01 where ded_pln_lmt_id='37217';
select * from AX6 where ded_pln_lmt_id='37217';

select * from H90;

select * from PRCG_CLNT_1 where cust_id_1='1615';
select * from ARGDR2.O59 where document_no='257260000871';
Select customer_set_long_nm from ARGdr1.C76 where Customer_Set_ID  IN (Select CUSTOMER_SET_ID from ARGdr1.E21 WHERE CUSTOMER_ID = '1615' and Customer_SET_Type_ID = 3);
select * from E20;
select * from P72;
select * from E21;
select * from C76;

SELECT 
    NAME AS COLUMN_NAME
FROM SYSIBM.SYSCOLUMNS
WHERE TBCREATOR = 'ARGDR2'
  AND TBNAME = 'O59'
ORDER BY COLNO;

select cust_id,clnt_id,grp_intl_id,member_id,cob_flag,date_added from ARGDR1.O59 where date_added<'20251231'and cust_id='320' and COB_FLAG!='' order by date_added desc;
select * from ARGDR1.O59 where cust_id='320' and COB_FLAG!="" order by date_added desc;
select customer_id,claim_id,other_coverage_cd,last_mnt_ts from ARGDR1.C52 where customer_id='320' and other_coverage_cd in('2','4','8') order by last_mnt_ts desc;
select * from c52 order by last_mnt_ts desc;

select customer_set_long_nm from C76 c76 inner join E21 e21 on c76.customer_set_id = e21.customer_set_id where e21.customer_id = '1615' and e21.customer_set_type_id = '2';
select customer_set_long_nm from C76 c76 inner join E21 e21 on c76.customer_set_id = e21.customer_set_id where e21.customer_id = '1615' and e21.customer_set_type_id = '3';

select * from Q51;
select * from P88;
select * from P52 where cust_id = '1615';
select * from O46 where customer_id = '1615';
select * from E98;
select * from E23;
select * from E21 where customer_set_id='1151'; -- available customer: 1320,1617,1618,1643
select * from E21 where customer_set_id='1129';

select * from S22 where customer_id='1628';
select * from S24;
select position_ct, generic_defined_fld_lng_nm from ARGDR1.S24 s24 where s24.generic_defined_fld_type_cd='C' order by position_ct;
select * from S25 where customer_id = '1628' order by last_mnt_ts desc;
select * from S25 where claim_id = '253317800021' order by last_mnt_ts desc;
select * from w15 where cust_id='1628' and member_id='000000020240901101';

select h96.clm_id from ARGDR1.H96 h96 inner join ARGDR1.dedbl_pln_lmt dedplnlmt on 
h96.ded_pln_lmt_id=dedplnlmt.ded_pln_lmt_id where h96.cust_id in ('0319', '0320', '0544') and 
dedplnlmt.pln_typ_cde='DED' order by h96.prcs_add_tmsp desc limit 1;

select * from X80 where obsolete_dt is null order by last_mnt_ts desc;

select h96.clm_id from ARGQR3.H96 h96 inner join ARGQR3.dedbl_pln_lmt dedplnlmt on 
h96.ded_pln_lmt_id=dedplnlmt.ded_pln_lmt_id where h96.cust_id in ('0319','0320','0544') and 
dedplnlmt.pln_typ_cde='DED' order by h96.prcs_add_tmsp desc limit 1;

select * from AL4 where last_mnt_opid='DT82484' order by last_mnt_ts desc; --PDACM004
select ACCUM_COMP_SHORT_NM,EXTERNAL_DEDUCTIBLE_NM from AL4 where ACCUM_COMPONENT_ID=(select ACCUM_COMPONENT_ID from AX6 where DED_PLN_LMT_ID=(select DED_PLN_LMT_ID from H96 where clm_id = '257140011551'));
select ACCUM_COMPONENT_ID from AX6 where DED_PLN_LMT_ID=(select DED_PLN_LMT_ID from H96 where clm_id = '257140011551');
select DED_PLN_LMT_ID from H96 where clm_id = '257140011551';

SELECT 
    al4.ACCUM_COMP_SHORT_NM as Accumulator_ID,
    al4.EXTERNAL_DEDUCTIBLE_NM as EXTERNAL_ID
FROM ARGDR1.AL4 al4
JOIN ARGDR1.AX6 ax6 
    ON al4.ACCUM_COMPONENT_ID = ax6.ACCUM_COMPONENT_ID
JOIN ARGDR1.H96 h96 
    ON ax6.DED_PLN_LMT_ID = h96.DED_PLN_LMT_ID
WHERE h96.clm_id = '257140011551';

select * from h96 where mbr_id='000000010127032026';ALTARYAN01
select * from h96 where clm_id = '264140002241';
select * from ARGDR1.h96 where mbr_id='26R1AT0501';
select * from W15 where member_id='26R1AT0501';
select * from H90 where clm_id = '265150000321';
select * from o59;
select * from I63;
select * from W15 where member_id='000000020250618101';
select * from ARGDR1.PB0 where pcn_id='16150004';

select * from ARGDR1.DEDBL_MBR_DTL where cust_id = '320' order by prcs_add_tmsp desc;

select * from H90 where cust_id='320' and clnt_id='7' and 
                        DEDUCT_STAT_INDR_2='A1' and CLM_STAT_CDE='10'
                        order by prcs_add_tmsp desc;
SELECT * FROM DEDBL_MBR_DTL dedbl left join H90 h90 on
                dedbl.cust_id = h90.cust_id and
                dedbl.clnt_id = h90.clnt_id and
                dedbl.grp_id = h90.grp_id and
                dedbl.mbr_id = h90.mbr_id and
                dedbl.bnft_prd_bgn_dte = h90.bnft_prd_bgn_dte
                where h90.DEDUCT_STAT_INDR_2='A1' and h90.CLM_STAT_CDE='10'
                order by dedbl.prcs_add_tmsp desc; 
select * from H90 where clm_id = '265460034351';

select * from O59;

select * from x80 where ndc_id = '00002771501';
select * from x80 where GENERIC_MANUFACTURER_IND_CD = '5';
select * from X85 where dosage_form_cd = 'IO';
select * from X85 where DRUG_CATEGORY_CD = '5';

select * from H96 where cust_id = '1628'; mbr_id = '000000012024121005';

select * from C54 where customer_id = '320' order by last_mnt_ts;


select * from S50 where DISPENSER_CLASS_CD is not null and PRIMARY_PROVIDER_TYPE_CD is not null
 and PRIMARY_PROVIDER_TYPE_CD = '23' order by PRIMARY_PROVIDER_TYPE_CD;

select * from S51;

select * from S52;
select * from S54;

select * from PB0 where customer_id = '319';
select * from B34;

select *  from H96 where cust_id = '320' and
         clnt_id = '7' and grp_id = '1211' and
         mbr_id = '000000010127032026';
         
select * from ARGDR1.H96 h96 where h96.cust_id = '1628' and
         h96.clnt_id = '1' and
         h96.mbr_id = '000000021012025101';
          
--update ARGDR1.H96 h96 set h96.MBR_XACTN_AMT = '2000.00' where h96.cust_id = '320' and
--         h96.clnt_id = '7' and clm_id = '263356000011' and
--         h96.mbr_id = '000000010530052026'; 

--delete from ARGDR1.H96 h96 where h96.cust_id = '320' and
--         h96.clnt_id = '7' and h96.mbr_id = '000000010630052026'
--         and clm_id='263366000001'; 
         
select * from ARGDR1.H96 h96 where h96.cust_id = '320' and
         h96.clnt_id = '7' and h96.mbr_id = '000000010527032026' and GRP_ID = '1211';         
                         
select * from ARGDR2.H96 h96 inner join ARGDR2.dedbl_pln_lmt dedplnlmt on 
h96.ded_pln_lmt_id=dedplnlmt.ded_pln_lmt_id where h96.cust_id in ('1785','1625','1831') 
and dedplnlmt.pln_typ_cde='DD1' order by h96.prcs_add_tmsp desc;

select * from ARGDR2.H96 h96 inner join ARGDR2.dedbl_pln_lmt dedplnlmt on 
h96.ded_pln_lmt_id=dedplnlmt.ded_pln_lmt_id where h96.cust_id in ('0319','0320','0544') 
and dedplnlmt.pln_typ_cde='DD1' order by h96.prcs_add_tmsp desc; 

select * from ARGDR2.H96 where clm_id = '265450001241';
select * from O59 where cust_id = '320' and DEDUCTIBLE_STAT_IND = 'A1' order by date_added desc;
select * from C52;

select * from BB6 bb6 left join AX6 ax6--where ACCUMULATOR_SWRP_CD='Y';
select * from AL4 where ACCUM_COMPONENT_ID = '1854';
select * from AL4 order by LAST_MNT_TS desc;

select * from AX6 ax6 left join BB6 bb6 on ax6.ACCUM_COMPONENT_ID = bb6.ACCUM_COMPONENT_ID
                       left join AL4 al4 on al4.ACCUM_COMPONENT_ID = bb6.ACCUM_COMPONENT_ID
                where bb6.ACCUMULATOR_SWRP_CD='Y' order by ax6.LAST_MNT_TS desc;
                
select * from c76 where CUSTOMER_SET_ID='315';
select * from H90 where cust_id = '320' and clm_stat_cde = '10';
select * from w15;

SELECT pb.CUSTOMER_ID,pb.CLIENT_ID,pb.BIN_ID,pb.PCN_ID,pb.BIN_PCN_EFFV_DT,pb.BUSINESS_PROCESSOR_CD
FROM PB0 pb where pb.CUSTOMER_ID = '319' and pb.CLIENT_ID = '5' and pb.BIN_ID = '610649' 
and pb.PCN_ID = '03190005' order by pb.BIN_PCN_EFFV_DT desc;

SELECT * FROM ARGDR2.PB0 pb where pb.CUSTOMER_ID = '319' and pb.CLIENT_ID = '5' and pb.PCN_ID = '03190005' order by 
pb.BIN_PCN_EFFV_DT desc;

select * from ARGDR1.B34 where CMS_BENEFIT_PROCESSING_YR_DT = '2026';
select * from ARGDR1.PB0 where customer_id = '320' and client_id='9999';
Select Customer_SET_LONG_NM from ARGDR2.C76 where Customer_Set_ID  IN (Select CUSTOMER_SET_ID from ARGDR2.E21 WHERE CUSTOMER_ID = '1785' and Customer_SEt_Type_ID = 2);

select * from cms_cust_info where cust_id = '1628';

select * from ARGDR1.H96 where mbr_id='000000012024112801';




       
         



                                   



