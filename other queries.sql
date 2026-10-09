select * from ARGQR3.H96 h96 inner join ARGQR3.dedbl_pln_lmt dedplnlmt on 
h96.ded_pln_lmt_id=dedplnlmt.ded_pln_lmt_id where h96.cust_id in ('319','320') 
and dedplnlmt.pln_typ_cde='DD1' order by h96.prcs_add_tmsp desc;

select * from PB0 where customer_id = '685'; -- CUSTOMER, mcs - 159 - hEALTH FOR 