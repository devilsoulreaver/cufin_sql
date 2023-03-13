select empid, empname(empid), amount as MEDISEP
from ind_bills_master a, paybill p, bills_det c
where a.ind_bill_no = p.ind_bill_no
and p.ind_bill_no = c.ind_billno
and indid='MEDISEP'
and billno between 2022000514 and 2022000622
order by empid