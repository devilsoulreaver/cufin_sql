SELECT DISTINCT ind_bills_master.EMPID,GET_PANNO(IND_BILLS_MASTER.empid), EMPNAME(ind_bills_master.EMPID), SUM(paybill.amount), empbillsectid(ind_bills_master.empid)  from emp_master, bills_det, paybill, ind_bills_master where ind_bills_master.empid=emp_master.empid and bills_det.ind_billno = ind_bills_master.ind_bill_no and paybill.ind_bill_no = ind_bills_master.ind_bill_no and ind_bills_master.btype IN ('INC','SUARR') and paybill.indid='INCTAX' and bills_det.billno ='2021210233'  GROUP BY IND_BILLS_MASTER.EMPID 


