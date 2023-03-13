select 'CBS' as "CBS", 'SB' AS "SB", emppayto_acno(ib.empid) as "ACCOUNT NO"
,empname(ib.empid) as "NAME",
'SALARY' AS "SALARY", 'C' AS "C"
,NET AS "AMOUNT" from emp_master em,ind_bills_master ib, bills_det bd 
where ib.empid=em.empid 
and bd.ind_billno=ib.ind_bill_no  
and  billno = 2022001329