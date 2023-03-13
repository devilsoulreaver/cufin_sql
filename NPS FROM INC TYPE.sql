select 
	ROW_NUMBER() OVER(ORDER BY (SELECT 1)) AS "SL NO",a.empid as "PF NO",prannumber as "PRAN NO", empname(a.empid) as "NAME",
	SUM(amount) as "EMPLOYEE'S CONTRIBUTION", SUM(amount) as "EMPLOYER'S CONTRIBUTION",
	SUM(amount)*2 as "NPS TOTAL", empbillsectid(a.empid)  AS "BILL SECTION" ,
	billno AS "BILL NO"
from 
	ind_bills_master a, emp_master b, paybill c, bills_det d
where 
	a.empid=b.empid and a.ind_bill_no=c.ind_bill_no
	and a.ind_bill_no = d.ind_billno
	and indid='NPS'
	and billno between 2022001703 and 2022001792
	and btype IN ('INC')
	GROUP BY a.empid, prannumber, billno
	order by 3