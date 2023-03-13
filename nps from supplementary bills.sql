SELECT EMPID, EMPNAME(EMPID), sum(paybill.amount) 
from bills_det, paybill, ind_bills_master
where bills_det.ind_billno = ind_bills_master.ind_bill_no 
and paybill.ind_bill_no = ind_bills_master.ind_bill_no 
and btype ='INC' and paybill.indid='NPS' 
and bills_det.billno between '2022000167' and '2022000256' group by empid




SELECT EMPID, EMPNAME(EMPID), sum(paybill.amount)
from bills_det, paybill, ind_bills_master
where bills_det.ind_billno = paybill.ind_bill_no 
and paybill.ind_bill_no = ind_bills_master.ind_bill_no 
and btype ='SAL' and paybill.indid='SLI' 
and bills_det.billno between '2022000257' and '2022000326'
group by empid