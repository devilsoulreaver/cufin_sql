select distinct emp_master.empid, emp_master.empname, 

ind_bills_master.gross, ind_bills_master.net, 

ind_bills_master.ind_bill_no, bills_det.billno, 

ind_bills_master.ofdate from ind_bills_master full join 

emp_master on ind_bills_master.empid = 

emp_master.empid full join paybill on 

ind_bills_master.ind_bill_no = paybill.ind_bill_no full join 

bills_det on ind_bills_master.ind_bill_no= 

bills_det.ind_billno where emp_master.empid ='3405'and 

ofdate between '01/04/2020' and '01/03/2021';