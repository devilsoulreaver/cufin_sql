SELECT empid, empname(empid)
FROM ind_bills_master 
	WHERE btype='SAL'
		and ofdate='01/08/2022'
		
		
		
		SELECT empid, empname(empid), amount
		from ind_bills_master join
		paybill USING(ind_bill_no)
		where indid='NPS'
		and btype='SAL'
		and ofdate='01/08/2022'
		
		
		
		SELECT empid, empname(empid), amount
		FROM ind_bills_master ib, paybill pb, bills_det bd
		WHERE ib.ind_bill_no = pb.ind_bill_no
		and pb.ind_bill_no = bd.ind_billno
		AND billno BETWEEN 2022000623 and 2022000693
		and indid ='BP'