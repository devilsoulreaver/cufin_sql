
select empid,empname(empid),empdesig(empid),GET_PANNO(empid),empbillsectid(EMPID),gross,net,OFDATE from ind_bills_master where ofdate BETWEEN '2021/04/01' AND '2021/06/01' and btype ='SAL' 







