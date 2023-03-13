
select empid,empname(empid),AMOUNT , ind_bills_master.ofdate from ind_bills_master,PAYBILL where IND_BILLS_MASTER.IND_BILL_NO=PAYBILL.IND_BILL_NO AND INDID='LEAVEBP' AND ofdate> '2018/11/01' and btype ='SAL'and empid='3584'

