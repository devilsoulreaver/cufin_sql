SELECT empid, empname(empid), SUM(amount)
FROM ind_bills_master join paybill
USING(ind_bill_no) where btype IN ('SAL','INC')
and ofdate ='01/03/2022'
empid ='3529'



SELECT i.empid, empname(i.empid),sum(amount), ofdate
FROM ind_bills_master i, paybill p, aswathy a
where a.empid = i.empid and i.ind_bill_no = p.ind_bill_no and btype IN ('SAL','INC')
and ofdate = '01/07/2020'
and indid ='BP'
group by i.empid, ofdate

'LEAVEBP','LEAVEDA','LEAVEHRA',


DEDLEAVE



select empid, empname(empid), sum(amount)
	from ind_bills_master a, bills_det c, paybill p
	where a.ind_bill_no = p.ind_bill_no
	and p.ind_bill_no = c.ind_billno
	and billno >=2021002183 and billno <=2021002253
	and groupid ='DEDLEAVE'
	group by empid
	order by empid