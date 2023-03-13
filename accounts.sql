select empid, empname(empid), GET_PANNO(empid),gross
	from ind_bills_master a, bills_det c
	where a.ind_bill_no = c.ind_billno
	and billno >=2021210286 and billno <=2022220004
	and btype NOT IN('TSUR','DAA')
	order by empid
	
	
	
	
	select empid, empname(empid), sum(amount)
	from ind_bills_master a, bills_det c, paybill p
	where a.ind_bill_no = p.ind_bill_no
	and p.ind_bill_no = c.ind_billno
	and billno >=2021210286 and billno <=2022220004
	and groupid ='DEDLEAVE'
	and btype !='DAA'
	group by empid
	order by empid
	
	
	
	select empid, empname(empid), sum(amount) as IT
	from ind_bills_master a, bills_det c, paybill p
	where a.ind_bill_no = p.ind_bill_no
	and p.ind_bill_no = c.ind_billno
	and billno >=2021210286 and billno <=2022220004
	and indid ='INCTAX'
	and btype !='DAA'
	group by empid
	order by empid