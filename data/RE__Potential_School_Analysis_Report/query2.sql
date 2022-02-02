DELETE FROM woreda_level_pov_est_2021_0802
WHERE slno IN
    (SELECT slno
    FROM 
        (SELECT slno,
         ROW_NUMBER() OVER( PARTITION BY w_code
        ORDER BY  slno ) AS row_num
        FROM woreda_level_pov_est_2021_0802 ) t
        WHERE t.row_num > 1 );