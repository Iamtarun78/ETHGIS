create table eth_analysis_data_2021 as select * from (select a.*,b.m15to19,b.f15to19,b.b15to19 from export_output_for_woreda a 
inner join reformatted_woreda_level_population_2021_0714 b on a.w_moepop=b.woreda and a.r_name=b.region where b.slno not in(224,246,256,266,342,347,385,403,414,440,443,452,162,163)
) tbl

select * from eth_analysis_data_2021 order by r_name

alter table eth_analysis_data_2021 add column no_poor character varying(20)

update eth_analysis_data_2021 set no_poor = a.no_poor from woreda_level_pov_est_2021_0802 as a where a.w_code = eth_analysis_data_2021.w_code


select * from export_output_for_woreda

***************************************************************
select a.w_code,a.w_moepop,b.woreda,b.slno from export_output_for_woreda a 
inner join reformatted_woreda_level_population_2021_0714 b on a.w_moepop=b.woreda and a.r_name=b.region where slno not in(224,246,256,266,342,347,385,403,414,440,443,452,162,163)


select slno from reformatted_woreda_level_population_2021_0714 where slno in(select b.slno from export_output_for_woreda a 
inner join reformatted_woreda_level_population_2021_0714 b on a.w_moepop=b.woreda and a.r_name=b.region where slno not in(224,246,256,266,342,347,385,403,414,440,443,452,162,163)
)

select w_code from export_output_for_woreda group by w_code having count(w_code)>1

select * from eth_analysis_data order by w_code
alter table eth_analysis_data add column b15to19 numeric(10,0)

drop table eth_analysis_data

update eth_analysis_data set no_poor = a.no_poor from woreda_level_pov_est_2021_0802 as a where a.w_code = eth_analysis_data.w_code
*************************************************************************************************************
CREATE TABLE public.reformatted_woreda_level_population_2021_0714
(
  slno integer,
  region character varying(20),
  woreda character varying(50),
  m15 numeric(10,0),
  m16 numeric(10,0),
  m17 numeric(10,0),
  m18 numeric(10,0),
  m19 numeric(10,0),
  f15 numeric(10,0),
  f16 numeric(10,0),
  f17 numeric(10,0),
  f18 numeric(10,0),
  f19 numeric(10,0)
)

select * from reformatted_woreda_level_population_2021_0714 where woreda in (select woreda from reformatted_woreda_level_population_2021_0714 group by woreda having count(woreda)>1) order by woreda

update reformatted_woreda_level_population_2021_0714 set b15to19=f15to19+m15to19

select a.w_code,a.w_moepop,b.woreda from export_output_for_woreda a left join reformatted_woreda_level_population_2021_0714 b on a.w_moepop=b.woreda

select * from export_output_for_woreda where w_moepop in (select distinct woreda from reformatted_woreda_level_population_2021_0714)

select w_moepop,count(w_moepop) from export_output_for_woreda group by w_moepop having count(w_moepop)>1


***********************************************************************************************
update reformatted_woreda_level_population_2021_0714 set region='SNNP' where region='SNNPR'

select distinct r_name from export_output_for_woreda where w_moepop='BURE-WEREDA'

select a.w_code,a.w_moepop,b.woreda from export_output_for_woreda a inner join reformatted_woreda_level_population_2021_0714 b on a.w_moepop=b.woreda and a.r_name=b.region

select * from reformatted_woreda_level_population_2021_0714 where 
woreda in (select woreda from reformatted_woreda_level_population_2021_0714 group by woreda having count(woreda)>1) order by woreda

select region,woreda from reformatted_woreda_level_population_2021_0714 group by region,woreda having count(woreda)>1

select * from reformatted_woreda_level_population_2021_0714 where region in ('Amhara','Oromiya') and woreda in('DIGA-WEREDA',
'BECHO-WEREDA',
'GOLOLCHA-WEREDA',
'JARSO-WEREDA',
'GORO-WEREDA',
'MENZ LALO MIDIR-WEREDA',
'LIBEN-WEREDA')

