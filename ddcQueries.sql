--SELECT * FROM claimsprocess.claim_dur_history WHERE customer_id=1613 and fill_dt='2022-04-01' and claim_status_cd = 10;

--SELECT * FROM claimsprocess.claim_core where customer_id = 1613 and 
--											 claim_status_cd=10 and 
--											 fill_dt > '2023-05-01' and 
--											 fill_dt < '2023-06-30';
--customer_id,fill_dt,ndc_id,prescription_id, 
		--claim_status_cd,npi_pharmacy_id
--SELECT 	* FROM claimsprocess.claim_core where customer_id = 1613 and 
--											 claim_status_cd=10 and 
--											 fill_dt > '2023-04-01' and 
--											 fill_dt < '2023-07-30';											 

--SELECT * from claimsprocess.claim_dur_history where customer_id = 1613 and fill_dt = '2023-04-01';

--select a.customer_id, a.claim_id, a.member_id, a.fill_dt, a.ndc_id, a.prescription_id from claimsprocess.claim_core a,
--		       claimsprocess.claim_extension_1 b 
--	    		where a.customer_id = 1613 and b.customer_id = 1613 and a.claim_id = b.claim_id and a.claim_status_cd in (10,11) 
--	    		and a.process_create_ts <= '2023-12-01 00:00:00';

