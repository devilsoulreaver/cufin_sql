select empid , empname(empid), gross, amount
from ind_bills_master join paybill
using(ind_bill_no)
where ofdate ='01/11/2022'
and btype ='SAL'
and indid ='MEDISEP'


select empid, empname(empid), gross
from ind_bills_master where btype ='SAL'
and ofdate ='01/11/2022'


SELECT empid, empname(empid), amount
FROM ind_bills_master ib, paybill pb, bills_det bd
WHERE ib.ind_bill_no = pb.ind_bill_no
and pb.ind_bill_no = bd.ind_billno
and billno BETWEEN 2022220244 and 2022220260
and indid ='GI'