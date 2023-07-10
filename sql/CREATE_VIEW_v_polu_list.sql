CREATE VIEW v_polu_list AS
SELECT region.region_name, DATE_FORMAT(DATE_ADD(DATE_FORMAT(CONCAT(SUBSTRING(week, 1, 4), '-01-01'), '%Y-%m-%d'), INTERVAL (SUBSTRING(week, 5) - 1) WEEK), '%Y-%m-%d') AS date, week, 'C6H6' AS pollutant, C6H6 AS value, (C6H6 / (SELECT MAX(C6H6) FROM v_ari_polu_synop_w1w2)) * 100 AS score
FROM v_ari_polu_synop_w1w2 p1 INNER JOIN region ON region.region_id = p1.region_id
UNION ALL
SELECT region.region_name, DATE_FORMAT(DATE_ADD(DATE_FORMAT(CONCAT(SUBSTRING(week, 1, 4), '-01-01'), '%Y-%m-%d'), INTERVAL (SUBSTRING(week, 5) - 1) WEEK), '%Y-%m-%d') AS date, week, 'CO' AS pollutant, CO AS value, (CO / (SELECT MAX(CO) FROM v_ari_polu_synop_w1w2)) * 100 AS score
FROM v_ari_polu_synop_w1w2 p1 INNER JOIN region ON region.region_id = p1.region_id
UNION ALL
SELECT region.region_name, DATE_FORMAT(DATE_ADD(DATE_FORMAT(CONCAT(SUBSTRING(week, 1, 4), '-01-01'), '%Y-%m-%d'), INTERVAL (SUBSTRING(week, 5) - 1) WEEK), '%Y-%m-%d') AS date, week, 'NO' AS pollutant, NO AS value, (NO / (SELECT MAX(NO) FROM v_ari_polu_synop_w1w2)) * 100 AS score
FROM v_ari_polu_synop_w1w2 p1 INNER JOIN region ON region.region_id = p1.region_id
UNION ALL
SELECT region.region_name, DATE_FORMAT(DATE_ADD(DATE_FORMAT(CONCAT(SUBSTRING(week, 1, 4), '-01-01'), '%Y-%m-%d'), INTERVAL (SUBSTRING(week, 5) - 1) WEEK), '%Y-%m-%d') AS date, week, 'NO2' AS pollutant, NO2 AS value, (NO2 / (SELECT MAX(NO2) FROM v_ari_polu_synop_w1w2)) * 100 AS score
FROM v_ari_polu_synop_w1w2 p1 INNER JOIN region ON region.region_id = p1.region_id
UNION ALL
SELECT region.region_name, DATE_FORMAT(DATE_ADD(DATE_FORMAT(CONCAT(SUBSTRING(week, 1, 4), '-01-01'), '%Y-%m-%d'), INTERVAL (SUBSTRING(week, 5) - 1) WEEK), '%Y-%m-%d') AS date, week, 'NOXasNO2' AS pollutant, NOXasNO2 AS value, (NOXasNO2 / (SELECT MAX(NOXasNO2) FROM v_ari_polu_synop_w1w2)) * 100 AS score
FROM v_ari_polu_synop_w1w2 p1 INNER JOIN region ON region.region_id = p1.region_id
UNION ALL
SELECT region.region_name, DATE_FORMAT(DATE_ADD(DATE_FORMAT(CONCAT(SUBSTRING(week, 1, 4), '-01-01'), '%Y-%m-%d'), INTERVAL (SUBSTRING(week, 5) - 1) WEEK), '%Y-%m-%d') AS date, week, 'O3' AS pollutant, O3 AS value, (O3 / (SELECT MAX(O3) FROM v_ari_polu_synop_w1w2)) * 100 AS score
FROM v_ari_polu_synop_w1w2 p1 INNER JOIN region ON region.region_id = p1.region_id
UNION ALL
SELECT region.region_name, DATE_FORMAT(DATE_ADD(DATE_FORMAT(CONCAT(SUBSTRING(week, 1, 4), '-01-01'), '%Y-%m-%d'), INTERVAL (SUBSTRING(week, 5) - 1) WEEK), '%Y-%m-%d') AS date, week, 'PM10' AS pollutant, PM10 AS value, (PM10 / (SELECT MAX(PM10) FROM v_ari_polu_synop_w1w2)) * 100 AS score
FROM v_ari_polu_synop_w1w2 p1 INNER JOIN region ON region.region_id = p1.region_id
UNION ALL
SELECT region.region_name, DATE_FORMAT(DATE_ADD(DATE_FORMAT(CONCAT(SUBSTRING(week, 1, 4), '-01-01'), '%Y-%m-%d'), INTERVAL (SUBSTRING(week, 5) - 1) WEEK), '%Y-%m-%d') AS date, week, 'PM2p5' AS pollutant, PM2p5 AS value, (PM2p5 / (SELECT MAX(PM2p5) FROM v_ari_polu_synop_w1w2)) * 100 AS score
FROM v_ari_polu_synop_w1w2 p1 INNER JOIN region ON region.region_id = p1.region_id
UNION ALL
SELECT region.region_name, DATE_FORMAT(DATE_ADD(DATE_FORMAT(CONCAT(SUBSTRING(week, 1, 4), '-01-01'), '%Y-%m-%d'), INTERVAL (SUBSTRING(week, 5) - 1) WEEK), '%Y-%m-%d') AS date, week, 'SO2' AS pollutant, SO2 AS value, (SO2 / (SELECT MAX(SO2) FROM v_ari_polu_synop_w1w2)) * 100 AS score
FROM v_ari_polu_synop_w1w2 p1 INNER JOIN region ON region.region_id = p1.region_id
UNION ALL
SELECT region.region_name, DATE_FORMAT(DATE_ADD(DATE_FORMAT(CONCAT(SUBSTRING(week, 1, 4), '-01-01'), '%Y-%m-%d'), INTERVAL (SUBSTRING(week, 5) - 1) WEEK), '%Y-%m-%d') AS date, week, 'C6H6_w1' AS pollutant, C6H6_w1 AS value, (C6H6_w1 / (SELECT MAX(C6H6_w1) FROM v_ari_polu_synop_w1w2)) * 100 AS score
FROM v_ari_polu_synop_w1w2 p1 INNER JOIN region ON region.region_id = p1.region_id
UNION ALL
SELECT region.region_name, DATE_FORMAT(DATE_ADD(DATE_FORMAT(CONCAT(SUBSTRING(week, 1, 4), '-01-01'), '%Y-%m-%d'), INTERVAL (SUBSTRING(week, 5) - 1) WEEK), '%Y-%m-%d') AS date, week, 'CO_w1' AS pollutant, CO_w1 AS value, (CO_w1 / (SELECT MAX(CO_w1) FROM v_ari_polu_synop_w1w2)) * 100 AS score
FROM v_ari_polu_synop_w1w2 p1 INNER JOIN region ON region.region_id = p1.region_id
UNION ALL
SELECT region.region_name, DATE_FORMAT(DATE_ADD(DATE_FORMAT(CONCAT(SUBSTRING(week, 1, 4), '-01-01'), '%Y-%m-%d'), INTERVAL (SUBSTRING(week, 5) - 1) WEEK), '%Y-%m-%d') AS date, week, 'NO_w1' AS pollutant, NO_w1 AS value, (NO_w1 / (SELECT MAX(NO_w1) FROM v_ari_polu_synop_w1w2)) * 100 AS score
FROM v_ari_polu_synop_w1w2 p1 INNER JOIN region ON region.region_id = p1.region_id
UNION ALL
SELECT region.region_name, DATE_FORMAT(DATE_ADD(DATE_FORMAT(CONCAT(SUBSTRING(week, 1, 4), '-01-01'), '%Y-%m-%d'), INTERVAL (SUBSTRING(week, 5) - 1) WEEK), '%Y-%m-%d') AS date, week, 'NO2_w1' AS pollutant, NO2_w1 AS value, (NO2_w1 / (SELECT MAX(NO2_w1) FROM v_ari_polu_synop_w1w2)) * 100 AS score
FROM v_ari_polu_synop_w1w2 p1 INNER JOIN region ON region.region_id = p1.region_id
UNION ALL
SELECT region.region_name, DATE_FORMAT(DATE_ADD(DATE_FORMAT(CONCAT(SUBSTRING(week, 1, 4), '-01-01'), '%Y-%m-%d'), INTERVAL (SUBSTRING(week, 5) - 1) WEEK), '%Y-%m-%d') AS date, week, 'NOXasNO2_w1' AS pollutant, NOXasNO2_w1 AS value, (NOXasNO2_w1 / (SELECT MAX(NOXasNO2_w1) FROM v_ari_polu_synop_w1w2)) * 100 AS score
FROM v_ari_polu_synop_w1w2 p1 INNER JOIN region ON region.region_id = p1.region_id
UNION ALL
SELECT region.region_name, DATE_FORMAT(DATE_ADD(DATE_FORMAT(CONCAT(SUBSTRING(week, 1, 4), '-01-01'), '%Y-%m-%d'), INTERVAL (SUBSTRING(week, 5) - 1) WEEK), '%Y-%m-%d') AS date, week, 'O3_w1' AS pollutant, O3_w1 AS value, (O3_w1 / (SELECT MAX(O3_w1) FROM v_ari_polu_synop_w1w2)) * 100 AS score
FROM v_ari_polu_synop_w1w2 p1 INNER JOIN region ON region.region_id = p1.region_id
UNION ALL
SELECT region.region_name, DATE_FORMAT(DATE_ADD(DATE_FORMAT(CONCAT(SUBSTRING(week, 1, 4), '-01-01'), '%Y-%m-%d'), INTERVAL (SUBSTRING(week, 5) - 1) WEEK), '%Y-%m-%d') AS date, week, 'PM10_w1' AS pollutant, PM10_w1 AS value, (PM10_w1 / (SELECT MAX(PM10_w1) FROM v_ari_polu_synop_w1w2)) * 100 AS score
FROM v_ari_polu_synop_w1w2 p1 INNER JOIN region ON region.region_id = p1.region_id
UNION ALL 
SELECT region.region_name, DATE_FORMAT(DATE_ADD(DATE_FORMAT(CONCAT(SUBSTRING(week, 1, 4), '-01-01'), '%Y-%m-%d'), INTERVAL (SUBSTRING(week, 5) - 1) WEEK), '%Y-%m-%d') AS date, week, 'PM2p5_w1' AS pollutant, PM2p5_w1 AS value, (PM2p5_w1 / (SELECT MAX(PM2p5_w1) FROM v_ari_polu_synop_w1w2)) * 100 AS score
FROM v_ari_polu_synop_w1w2 p1 INNER JOIN region ON region.region_id = p1.region_id
UNION ALL
SELECT region.region_name, DATE_FORMAT(DATE_ADD(DATE_FORMAT(CONCAT(SUBSTRING(week, 1, 4), '-01-01'), '%Y-%m-%d'), INTERVAL (SUBSTRING(week, 5) - 1) WEEK), '%Y-%m-%d') AS date, week, 'SO2_w1' AS pollutant, SO2_w1 AS value, (SO2_w1 / (SELECT MAX(SO2_w1) FROM v_ari_polu_synop_w1w2)) * 100 AS score
FROM v_ari_polu_synop_w1w2 p1 INNER JOIN region ON region.region_id = p1.region_id
UNION ALL
SELECT region.region_name, DATE_FORMAT(DATE_ADD(DATE_FORMAT(CONCAT(SUBSTRING(week, 1, 4), '-01-01'), '%Y-%m-%d'), INTERVAL (SUBSTRING(week, 5) - 1) WEEK), '%Y-%m-%d') AS date, week, 'C6H6_w2' AS pollutant, C6H6_w2 AS value, (C6H6_w2 / (SELECT MAX(C6H6_w2) FROM v_ari_polu_synop_w1w2)) * 100 AS score
FROM v_ari_polu_synop_w1w2 p1 INNER JOIN region ON region.region_id = p1.region_id
UNION ALL
SELECT region.region_name, DATE_FORMAT(DATE_ADD(DATE_FORMAT(CONCAT(SUBSTRING(week, 1, 4), '-01-01'), '%Y-%m-%d'), INTERVAL (SUBSTRING(week, 5) - 1) WEEK), '%Y-%m-%d') AS date, week, 'CO_w2' AS pollutant, CO_w2 AS value, (CO_w2 / (SELECT MAX(CO_w2) FROM v_ari_polu_synop_w1w2)) * 100 AS score
FROM v_ari_polu_synop_w1w2 p1 INNER JOIN region ON region.region_id = p1.region_id
UNION ALL
SELECT region.region_name, DATE_FORMAT(DATE_ADD(DATE_FORMAT(CONCAT(SUBSTRING(week, 1, 4), '-01-01'), '%Y-%m-%d'), INTERVAL (SUBSTRING(week, 5) - 1) WEEK), '%Y-%m-%d') AS date, week, 'NO_w2' AS pollutant, NO_w2 AS value, (NO_w2 / (SELECT MAX(NO_w2) FROM v_ari_polu_synop_w1w2)) * 100 AS score
FROM v_ari_polu_synop_w1w2 p1 INNER JOIN region ON region.region_id = p1.region_id
UNION ALL
SELECT region.region_name, DATE_FORMAT(DATE_ADD(DATE_FORMAT(CONCAT(SUBSTRING(week, 1, 4), '-01-01'), '%Y-%m-%d'), INTERVAL (SUBSTRING(week, 5) - 1) WEEK), '%Y-%m-%d') AS date, week, 'NO2_w2' AS pollutant, NO2_w2 AS value, (NO2_w2 / (SELECT MAX(NO2_w2) FROM v_ari_polu_synop_w1w2)) * 100 AS score
FROM v_ari_polu_synop_w1w2 p1 INNER JOIN region ON region.region_id = p1.region_id
UNION ALL
SELECT region.region_name, DATE_FORMAT(DATE_ADD(DATE_FORMAT(CONCAT(SUBSTRING(week, 1, 4), '-01-01'), '%Y-%m-%d'), INTERVAL (SUBSTRING(week, 5) - 1) WEEK), '%Y-%m-%d') AS date, week, 'NOXasNO2_w2' AS pollutant, NOXasNO2_w2 AS value, (NOXasNO2_w2 / (SELECT MAX(NOXasNO2_w2) FROM v_ari_polu_synop_w1w2)) * 100 AS score
FROM v_ari_polu_synop_w1w2 p1 INNER JOIN region ON region.region_id = p1.region_id
UNION ALL
SELECT region.region_name, DATE_FORMAT(DATE_ADD(DATE_FORMAT(CONCAT(SUBSTRING(week, 1, 4), '-01-01'), '%Y-%m-%d'), INTERVAL (SUBSTRING(week, 5) - 1) WEEK), '%Y-%m-%d') AS date, week, 'O3_w2' AS pollutant, O3_w2 AS value, (O3_w2 / (SELECT MAX(O3_w2) FROM v_ari_polu_synop_w1w2)) * 100 AS score
FROM v_ari_polu_synop_w1w2 p1 INNER JOIN region ON region.region_id = p1.region_id
UNION ALL
SELECT region.region_name, DATE_FORMAT(DATE_ADD(DATE_FORMAT(CONCAT(SUBSTRING(week, 1, 4), '-01-01'), '%Y-%m-%d'), INTERVAL (SUBSTRING(week, 5) - 1) WEEK), '%Y-%m-%d') AS date, week, 'PM10_w2' AS pollutant, PM10_w2 AS value, (PM10_w2 / (SELECT MAX(PM10_w2) FROM v_ari_polu_synop_w1w2)) * 100 AS score
FROM v_ari_polu_synop_w1w2 p1 INNER JOIN region ON region.region_id = p1.region_id
UNION ALL
SELECT region.region_name, DATE_FORMAT(DATE_ADD(DATE_FORMAT(CONCAT(SUBSTRING(week, 1, 4), '-01-01'), '%Y-%m-%d'), INTERVAL (SUBSTRING(week, 5) - 1) WEEK), '%Y-%m-%d') AS date, week, 'PM2p5_w2' AS pollutant, PM2p5_w2 AS value, (PM2p5_w2 / (SELECT MAX(PM2p5_w2) FROM v_ari_polu_synop_w1w2)) * 100 AS score
FROM v_ari_polu_synop_w1w2 p1 INNER JOIN region ON region.region_id = p1.region_id
UNION ALL
SELECT region.region_name, DATE_FORMAT(DATE_ADD(DATE_FORMAT(CONCAT(SUBSTRING(week, 1, 4), '-01-01'), '%Y-%m-%d'), INTERVAL (SUBSTRING(week, 5) - 1) WEEK), '%Y-%m-%d') AS date, week, 'SO2_w2' AS pollutant, SO2_w2 AS value, (SO2_w2 / (SELECT MAX(SO2_w2) FROM v_ari_polu_synop_w1w2)) * 100 AS score
FROM v_ari_polu_synop_w1w2 p1 INNER JOIN region ON region.region_id = p1.region_id
Order by SCORE DESC,pollutant;

