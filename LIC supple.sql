select emp_master.empid,empname,EMPBILLSECTID(emp_master.empid),lic.policyno,effectdate,premiumamt,bills_det.billno 
from ind_bills_master,bills_det,lic,lic_trans,emp_master 
where btype IN('SAL','SUBAL') and ind_bills_master.ind_bill_no=bills_det.ind_billno 
and ind_bills_master.empid=emp_master.empid 
and lic.empid=emp_master.empid and lic.policyno=lic_trans.policyno 
and lic_trans.effectdate>'30/04/2022' and lic_trans.effectdate<'01/06/2022'
and billno>'2022000166' and billno<'2022000257' order by billno
