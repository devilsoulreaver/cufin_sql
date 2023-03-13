select distinct empid, empname(empid), get_act_gross(empid,'01/04/2022') as March,
get_act_gross(empid, '01/05/2022') as apr, get_act_gross(empid,'01/06/2022') as JUN,
get_act_gross(empid,'01/07/2022') as JUNE  from ind_bills_master
where ofdate >='01/04/2022' and btype IN ('SAL', 'INC')group by empid