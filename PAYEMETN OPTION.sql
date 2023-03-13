select ib.empid,
	empname(ib.empid),
	empdesig(ib.empid),
	em.mobno,
	emppayto_brname(ib.empid),
	emppayto_acno(ib.empid),
	empbillsectid(ib.empid),
	gross,NET,OFDATE 
from emp_master em,ind_bills_master ib, bills_det bd
where ib.empid=em.empid 
and bd.ind_billno=ib.ind_bill_no 
and GROSS=4000 AND NET=4000 AND IB.OFDATE='2022-09-01' AND IB.BTYPE='BON'