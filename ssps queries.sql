select * from customerconfig.customer_tier_configuration ctc WHERE ctc.customer_tier_configuration_id=2588;

UPDATE customerconfig.customer_tier_configuration ctc SET group_id = 1 WHERE ctc.customer_tier_configuration_id=2588;

SELECT * from customerconfig.master_configuration where master_configuration_id=111;

SELECT * FROM customerconfig.ssps_configuration WHERE ssps_configuration_id = 1711;

UPDATE customerconfig.customer_tier_configuration ctc SET benefit_customer_set_id=1672 WHERE ctc.customer_tier_configuration_id=2400;

UPDATE customerconfig.customer_tier_configuration ctc SET customer_id=1780 WHERE ctc.customer_tier_configuration_id=2400;

UPDATE customerconfig.customer_tier_configuration ctc SET client_id=13 WHERE ctc.customer_tier_configuration_id=2400;

UPDATE customerconfig.customer_tier_configuration ctc SET group_id=1 WHERE ctc.customer_tier_configuration_id=2400;

UPDATE customerconfig.ssps_configuration ssps SET custom_list_for_drug_form_1_each=30519 WHERE ssps.ssps_configuration_id=1542;

UPDATE customerconfig.ssps_configuration ssps SET exclude_drug_form_2_milliliter_from_ssps_ind='N' WHERE ssps.ssps_configuration_id = 1711;
  
UPDATE customerconfig.ssps_configuration ssps SET exclude_drug_form_2_milliliter_from_ssps_ind='Y' WHERE ssps.ssps_configuration_id = 1711;

UPDATE customerconfig.ssps_configuration ssps SET use_ssc_drug_list_ind='Y' WHERE ssps.ssps_configuration_id = 1711;

UPDATE customerconfig.ssps_configuration ssps SET use_ssc_drug_list_ind='N' WHERE ssps.ssps_configuration_id = 1711;

UPDATE customerconfig.ssps_configuration ssps SET custom_list_for_drug_form_1_each=0 WHERE ssps.ssps_configuration_id=1711;

UPDATE customerconfig.ssps_configuration ssps SET custom_list_for_drug_form_2_milliliter=30530 WHERE ssps.ssps_configuration_id=1711;

UPDATE customerconfig.ssps_configuration ssps SET custom_list_for_drug_form_3_gram=30530 WHERE ssps.ssps_configuration_id=1711;
        

