select count(*) from woreda_level_pov_est_2021_0802 order by w_code 801

select count(*) from export_output_for_woreda order by w_code  792

select a.w_code,b.w_code from woreda_level_pov_est_2021_0802 a right join export_output_for_woreda b on a.w_name=b.w_name

select a.w_name,a.count from (select w_name,count(w_name) from woreda_level_pov_est_2021_0802 group by w_name) a where a.count>1

select a.w_code,a.count from (select w_code,count(w_code) from export_output_for_woreda group by w_code) a where a.count>1

select * from woreda_level_pov_est_2021_0802 where w_code in(
41017,
50103,
50810,
40309,
30113,
40311)

select * from woreda_level_pov_est_2021_0802 where w_name='Anfilo'



select w_code,count(w_code) from woreda_level_pov_est_2021_0802 group by w_code having count(w_code)>1

delete from woreda_level_pov_est_2021_0802