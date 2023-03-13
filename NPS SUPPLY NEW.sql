select 
	a.empid as "PFNO", empname(a.empid) as "NAME", b.prannumber as "PRANNUMBER",
	amount as "EMP CONTRI", amount as "EMPLYR CONTRI",
	amount*2 as "TOTAL", to_char(ofdate - interval '1 month',' MM:YYYY') as "SAL MONTH" ,empbillsectid(a.empid) as "BILLSECTION",
	billno
from 
	ind_bills_master a, emp_master b, paybill c, bills_det d
where 
	a.empid=b.empid and a.ind_bill_no=c.ind_bill_no
	and a.ind_bill_no = d.ind_billno
	and indid='NPS'
	and billno between 2022001281 and 2022001331
	and btype IN ('SAL')
	order by 3