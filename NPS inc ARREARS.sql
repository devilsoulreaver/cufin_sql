select distinct ind_bills_master.empid, empname(ind_bills_master.empid), net, gross, paybill.amount, bills_det.billno from ind_bills_master, paybill, bills_det where paybill.ind_bill_no = ind_bills_master.ind_bill_no and bills_det.ind_billno = paybill.ind_bill_no and ind_bills_master.ind_bill_no= bills_det.ind_billno and paybill.indid='NPS' and billno between '2021001572' and '2021001675' and btype ='INC'