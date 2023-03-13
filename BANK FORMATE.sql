select ib.empid as "PF NO",empname(ib.empid) as "NAME",
em.mobno as "MOBILE", 
'BANK ACCOUNT' as "CREDIT TO" ,emppayto_brname(ib.empid) as "IFSC",
emppayto_acno(ib.empid) as "ACCOUNT NO", 
NET AS "AMOUNT" from emp_master em,ind_bills_master ib, bills_det bd 
where ib.empid=em.empid 
and bd.ind_billno=ib.ind_bill_no  
and  billno = 2022001329