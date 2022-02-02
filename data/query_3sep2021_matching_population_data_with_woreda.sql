select distinct r_name from export_output_for_woreda limit 1

select * from reformatted_woreda_level_population_2021_0714 where woreda='AWRA-WEREDA'

select distinct region from reformatted_woreda_level_population_2021_0714 where woreda is null

select * from export_output_for_woreda where w_moepop is null


select a.w_moepop from export_output_for_woreda a,reformatted_woreda_level_population_2021_0714 b
where a.r_name=b.region and a.w_moepop=b.woreda and slno in (select slno from reformatted_woreda_level_population_2021_0714 where region in ('Amhara','Oromiya') and woreda in('DIGA-WEREDA',
'BECHO-WEREDA',
'GOLOLCHA-WEREDA',
'JARSO-WEREDA',
'GORO-WEREDA',
'MENZ LALO MIDIR-WEREDA',
'LIBEN-WEREDA'))



select *  from export_output_for_woreda where gid not in(select a.gid from export_output_for_woreda a,reformatted_woreda_level_population_2021_0714 b
where a.r_name=b.region and a.w_moepop=b.woreda and slno not in (select slno from reformatted_woreda_level_population_2021_0714 where region in ('Amhara','Oromiya') and woreda in('DIGA-WEREDA',
'BECHO-WEREDA',
'GOLOLCHA-WEREDA',
'JARSO-WEREDA',
'GORO-WEREDA',
'MENZ LALO MIDIR-WEREDA',
'LIBEN-WEREDA')))





select r_name,z_name,w_moepop,count(w_moepop) from export_output_for_woreda group by r_name,z_name,w_moepop having count(w_moepop)>1

select region,woreda,count(woreda) from reformatted_woreda_level_population_2021_0714 group by region,woreda having count(woreda)>1


