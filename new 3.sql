SELECT ind_bills_master.empid, empname(ind_bills_master.empid), amount
FROM ind_bills_master, paybill, bills_det
WHERE ind_bills_master.ind_bill_no = paybill.ind_bill_no
and bills_det.ind_billno = paybill.ind_bill_no
and btype = 'SAL' and indid='MEDISEP'
AND billno BETWEEN '202200441' and '202200513'

SELECT empid, emp