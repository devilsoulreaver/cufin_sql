ind_bill_no >=473544

SELECT empid, empname(empid), sum(amount)
from ind_bills_master a join paybill b 
USING (ind_bill_no) where b.remarks ='DAA_23_36'
AND ind_bill_no >=473544
AND groupid='ALLOWDA'
GROUP BY empid


SELECT empid, empname(empid), paybill.*
FROM ind_bills_master a join paybill b 
USING(ind_bill_no)
	WHERE empid=''
	and ofdate=''
	and btype=''
	
	
	
SELECT empid, empname(empid), b.*
	FROM ind_bills_master a join paybill b 
	USING(ind_bill_no)
	WHERE empid='2377'
	AND ind_bill_no >=473544
	and btype='DAA'
	AND groupid='ALLOWDA'
	order by effectdate
	
	
	
	
	/*SELECT empid, empname(empid), sum(amount)
	from ind_bills_master a join paybill b 
	USING (ind_bill_no)
	where b.remarks ='DAA_23_36'
	AND groupid='ALLOWDA'
	AND ind_bill_no >=473544
	GROUP BY empid*/
	
	
SELECT empid, empname(empid), amount, ofdate, btype, ind_bill_no
	from ind_bills_master a join paybill b 
	USING (ind_bill_no) where b.remarks ='DAA_23_36'
	AND ind_bill_no >=473544
	AND groupid='ALLOWDA'
	and empid='2618'
	order BY ofdate


select empid, empname(empid), sum(gross)
from ind_bills_master i join bills_det b
on i.ind_bill_no = b.ind_billno
where billno =2022220127
group by empid