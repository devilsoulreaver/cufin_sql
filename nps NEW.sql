select  ind_bills_master.EMPID,emp_master.prannumber, EMPNAME(ind_bills_master.EMPID)
, paybill.amount,paybill.amount, paybill.amount*2 AS TOTAL,
 empbillsectid(ind_bills_master.empid) 
from emp_master, bills_det, paybill, ind_bills_master where 
ind_bills_master.ind_bill_no = paybill.ind_bill_no and 
bills_det.ind_billno = ind_bills_master.ind_bill_no and
ind_bills_master.empid=emp_master.empid AND 
paybill.ind_bill_no = bills_det.ind_billno and
bills_det.billno between '2022000096' and '2022000166' and
ofdate ='2022/05/01' and paybill.indid IN ('NPS') 
order by  emp_master.prannumber