SELECT IND_BILLS_MASTER.EMPID, EMPNAME(IND_BILLS_MASTER.EMPID), empoffice(IND_BILLS_MASTER.EMPID), emp_gi_amts.* from ind_bills_master,  emp_gi_amts where ind_bills_master.empid=  emp_gi_amts.empid and ofdate = '01/12/2021' 