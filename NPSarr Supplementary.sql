SELECT ind_bills_master.EMPID,  emp_master.prannumber ,EMPNAME(ind_bills_master.EMPID),paybill.amount, 
paybill.amount,paybill.amount*2, 
ind_bills_master.ofdate, empbillsectid(ind_bills_master.empid) 
from emp_master, bills_det, paybill, ind_bills_master 
where ind_bills_master.empid=emp_master.empid 
and bills_det.ind_billno = ind_bills_master.ind_bill_no 
and paybill.ind_bill_no = ind_bills_master.ind_bill_no 
and btype ='SAL' and paybill.indid='PEN' 
and bills_det.billno between '2021001552' and '2021001781' 
and btype ='SAL' order by prannumber



ind_billno IN ('531501','531500', '531565', '531566')