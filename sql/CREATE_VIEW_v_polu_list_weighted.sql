CREATE VIEW v_polu_list_g AS
SELECT region.region_name, DATE_FORMAT(DATE_ADD(DATE_FORMAT(CONCAT(SUBSTRING(week, 1, 4), '-01-01'), '%Y-%m-%d'), INTERVAL (SUBSTRING(week, 5) - 1) WEEK), '%Y-%m-%d') AS date, week, 'C6H6' AS pollutant, C6H6 AS value, C6H6  * 5 AS score
FROM v_ari_polu_synop_w1w2 p1 INNER JOIN region ON region.region_id = p1.region_id
UNION ALL
SELECT region.region_name, DATE_FORMAT(DATE_ADD(DATE_FORMAT(CONCAT(SUBSTRING(week, 1, 4), '-01-01'), '%Y-%m-%d'), INTERVAL (SUBSTRING(week, 5) - 1) WEEK), '%Y-%m-%d') AS date, week, 'CO' AS pollutant, CO AS value, CO  * 10 AS score
FROM v_ari_polu_synop_w1w2 p1 INNER JOIN region ON region.region_id = p1.region_id
UNION ALL
SELECT region.region_name, DATE_FORMAT(DATE_ADD(DATE_FORMAT(CONCAT(SUBSTRING(week, 1, 4), '-01-01'), '%Y-%m-%d'), INTERVAL (SUBSTRING(week, 5) - 1) WEEK), '%Y-%m-%d') AS date, week, 'NO' AS pollutant, NO AS value, NO / 4 AS score
FROM v_ari_polu_synop_w1w2 p1 INNER JOIN region ON region.region_id = p1.region_id
UNION ALL
SELECT region.region_name, DATE_FORMAT(DATE_ADD(DATE_FORMAT(CONCAT(SUBSTRING(week, 1, 4), '-01-01'), '%Y-%m-%d'), INTERVAL (SUBSTRING(week, 5) - 1) WEEK), '%Y-%m-%d') AS date, week, 'NO2' AS pollutant, NO2 AS value, NO2 / 4 AS score
FROM v_ari_polu_synop_w1w2 p1 INNER JOIN region ON region.region_id = p1.region_id
UNION ALL
SELECT region.region_name, DATE_FORMAT(DATE_ADD(DATE_FORMAT(CONCAT(SUBSTRING(week, 1, 4), '-01-01'), '%Y-%m-%d'), INTERVAL (SUBSTRING(week, 5) - 1) WEEK), '%Y-%m-%d') AS date, week, 'NOXasNO2' AS pollutant, NOXasNO2 AS value, NOXasNO2 / 4 AS score
FROM v_ari_polu_synop_w1w2 p1 INNER JOIN region ON region.region_id = p1.region_id
UNION ALL
SELECT region.region_name, DATE_FORMAT(DATE_ADD(DATE_FORMAT(CONCAT(SUBSTRING(week, 1, 4), '-01-01'), '%Y-%m-%d'), INTERVAL (SUBSTRING(week, 5) - 1) WEEK), '%Y-%m-%d') AS date, week, 'O3' AS pollutant, O3 AS value, O3 / 12 AS score
FROM v_ari_polu_synop_w1w2 p1 INNER JOIN region ON region.region_id = p1.region_id
UNION ALL
SELECT region.region_name, DATE_FORMAT(DATE_ADD(DATE_FORMAT(CONCAT(SUBSTRING(week, 1, 4), '-01-01'), '%Y-%m-%d'), INTERVAL (SUBSTRING(week, 5) - 1) WEEK), '%Y-%m-%d') AS date, week, 'PM10' AS pollutant, PM10 AS value, PM10 / 3 AS score
FROM v_ari_polu_synop_w1w2 p1 INNER JOIN region ON region.region_id = p1.region_id
UNION ALL
SELECT region.region_name, DATE_FORMAT(DATE_ADD(DATE_FORMAT(CONCAT(SUBSTRING(week, 1, 4), '-01-01'), '%Y-%m-%d'), INTERVAL (SUBSTRING(week, 5) - 1) WEEK), '%Y-%m-%d') AS date, week, 'PM2p5' AS pollutant, PM2p5 AS value, PM2p5 AS score
FROM v_ari_polu_synop_w1w2 p1 INNER JOIN region ON region.region_id = p1.region_id
UNION ALL
SELECT region.region_name, DATE_FORMAT(DATE_ADD(DATE_FORMAT(CONCAT(SUBSTRING(week, 1, 4), '-01-01'), '%Y-%m-%d'), INTERVAL (SUBSTRING(week, 5) - 1) WEEK), '%Y-%m-%d') AS date, week, 'SO2' AS pollutant, SO2 AS value, SO2 / 5 AS score
FROM v_ari_polu_synop_w1w2 p1 INNER JOIN region ON region.region_id = p1.region_id
UNION ALL
SELECT region.region_name, DATE_FORMAT(DATE_ADD(DATE_FORMAT(CONCAT(SUBSTRING(week, 1, 4), '-01-01'), '%Y-%m-%d'), INTERVAL (SUBSTRING(week, 5) - 1) WEEK), '%Y-%m-%d') AS date, week, 'C6H6_w1' AS pollutant, C6H6_w1 AS value, C6H6_w1  * 5 AS score
FROM v_ari_polu_synop_w1w2 p1 INNER JOIN region ON region.region_id = p1.region_id
UNION ALL
SELECT region.region_name, DATE_FORMAT(DATE_ADD(DATE_FORMAT(CONCAT(SUBSTRING(week, 1, 4), '-01-01'), '%Y-%m-%d'), INTERVAL (SUBSTRING(week, 5) - 1) WEEK), '%Y-%m-%d') AS date, week, 'CO_w1' AS pollutant, CO_w1 AS value, CO_w1 * 10 AS score
FROM v_ari_polu_synop_w1w2 p1 INNER JOIN region ON region.region_id = p1.region_id
UNION ALL
SELECT region.region_name, DATE_FORMAT(DATE_ADD(DATE_FORMAT(CONCAT(SUBSTRING(week, 1, 4), '-01-01'), '%Y-%m-%d'), INTERVAL (SUBSTRING(week, 5) - 1) WEEK), '%Y-%m-%d') AS date, week, 'NO_w1' AS pollutant, NO_w1 AS value, NO_w1 / 4 AS score
FROM v_ari_polu_synop_w1w2 p1 INNER JOIN region ON region.region_id = p1.region_id
UNION ALL
SELECT region.region_name, DATE_FORMAT(DATE_ADD(DATE_FORMAT(CONCAT(SUBSTRING(week, 1, 4), '-01-01'), '%Y-%m-%d'), INTERVAL (SUBSTRING(week, 5) - 1) WEEK), '%Y-%m-%d') AS date, week, 'NO2_w1' AS pollutant, NO2_w1 AS value, NO2_w1 / 4 AS score
FROM v_ari_polu_synop_w1w2 p1 INNER JOIN region ON region.region_id = p1.region_id
UNION ALL
SELECT region.region_name, DATE_FORMAT(DATE_ADD(DATE_FORMAT(CONCAT(SUBSTRING(week, 1, 4), '-01-01'), '%Y-%m-%d'), INTERVAL (SUBSTRING(week, 5) - 1) WEEK), '%Y-%m-%d') AS date, week, 'NOXasNO2_w1' AS pollutant, NOXasNO2_w1 AS value, NOXasNO2_w1 / 4 AS score
FROM v_ari_polu_synop_w1w2 p1 INNER JOIN region ON region.region_id = p1.region_id
UNION ALL
SELECT region.region_name, DATE_FORMAT(DATE_ADD(DATE_FORMAT(CONCAT(SUBSTRING(week, 1, 4), '-01-01'), '%Y-%m-%d'), INTERVAL (SUBSTRING(week, 5) - 1) WEEK), '%Y-%m-%d') AS date, week, 'O3_w1' AS pollutant, O3_w1 AS value, O3_w1 / 12 AS score
FROM v_ari_polu_synop_w1w2 p1 INNER JOIN region ON region.region_id = p1.region_id
UNION ALL
SELECT region.region_name, DATE_FORMAT(DATE_ADD(DATE_FORMAT(CONCAT(SUBSTRING(week, 1, 4), '-01-01'), '%Y-%m-%d'), INTERVAL (SUBSTRING(week, 5) - 1) WEEK), '%Y-%m-%d') AS date, week, 'PM10_w1' AS pollutant, PM10_w1 AS value, PM10_w1 / 3 AS score
FROM v_ari_polu_synop_w1w2 p1 INNER JOIN region ON region.region_id = p1.region_id
UNION ALL 
SELECT region.region_name, DATE_FORMAT(DATE_ADD(DATE_FORMAT(CONCAT(SUBSTRING(week, 1, 4), '-01-01'), '%Y-%m-%d'), INTERVAL (SUBSTRING(week, 5) - 1) WEEK), '%Y-%m-%d') AS date, week, 'PM2p5_w1' AS pollutant, PM2p5_w1 AS value, PM2p5_w1  AS score
FROM v_ari_polu_synop_w1w2 p1 INNER JOIN region ON region.region_id = p1.region_id
UNION ALL
SELECT region.region_name, DATE_FORMAT(DATE_ADD(DATE_FORMAT(CONCAT(SUBSTRING(week, 1, 4), '-01-01'), '%Y-%m-%d'), INTERVAL (SUBSTRING(week, 5) - 1) WEEK), '%Y-%m-%d') AS date, week, 'SO2_w1' AS pollutant, SO2_w1 AS value, SO2_w1 / 5 AS score
FROM v_ari_polu_synop_w1w2 p1 INNER JOIN region ON region.region_id = p1.region_id
UNION ALL
SELECT region.region_name, DATE_FORMAT(DATE_ADD(DATE_FORMAT(CONCAT(SUBSTRING(week, 1, 4), '-01-01'), '%Y-%m-%d'), INTERVAL (SUBSTRING(week, 5) - 1) WEEK), '%Y-%m-%d') AS date, week, 'C6H6_w2' AS pollutant, C6H6_w2 AS value, C6H6_w2  * 5 AS score
FROM v_ari_polu_synop_w1w2 p1 INNER JOIN region ON region.region_id = p1.region_id
UNION ALL
SELECT region.region_name, DATE_FORMAT(DATE_ADD(DATE_FORMAT(CONCAT(SUBSTRING(week, 1, 4), '-01-01'), '%Y-%m-%d'), INTERVAL (SUBSTRING(week, 5) - 1) WEEK), '%Y-%m-%d') AS date, week, 'CO_w2' AS pollutant, CO_w2 AS value, CO_w2 * 10 AS score
FROM v_ari_polu_synop_w1w2 p1 INNER JOIN region ON region.region_id = p1.region_id
UNION ALL
SELECT region.region_name, DATE_FORMAT(DATE_ADD(DATE_FORMAT(CONCAT(SUBSTRING(week, 1, 4), '-01-01'), '%Y-%m-%d'), INTERVAL (SUBSTRING(week, 5) - 1) WEEK), '%Y-%m-%d') AS date, week, 'NO_w2' AS pollutant, NO_w2 AS value, NO_w2 / 4 AS score
FROM v_ari_polu_synop_w1w2 p1 INNER JOIN region ON region.region_id = p1.region_id
UNION ALL
SELECT region.region_name, DATE_FORMAT(DATE_ADD(DATE_FORMAT(CONCAT(SUBSTRING(week, 1, 4), '-01-01'), '%Y-%m-%d'), INTERVAL (SUBSTRING(week, 5) - 1) WEEK), '%Y-%m-%d') AS date, week, 'NO2_w2' AS pollutant, NO2_w2 AS value, NO2_w2 / 4 AS score
FROM v_ari_polu_synop_w1w2 p1 INNER JOIN region ON region.region_id = p1.region_id
UNION ALL
SELECT region.region_name, DATE_FORMAT(DATE_ADD(DATE_FORMAT(CONCAT(SUBSTRING(week, 1, 4), '-01-01'), '%Y-%m-%d'), INTERVAL (SUBSTRING(week, 5) - 1) WEEK), '%Y-%m-%d') AS date, week, 'NOXasNO2_w2' AS pollutant, NOXasNO2_w2 AS value, NOXasNO2_w2 / 4 AS score
FROM v_ari_polu_synop_w1w2 p1 INNER JOIN region ON region.region_id = p1.region_id
UNION ALL
SELECT region.region_name, DATE_FORMAT(DATE_ADD(DATE_FORMAT(CONCAT(SUBSTRING(week, 1, 4), '-01-01'), '%Y-%m-%d'), INTERVAL (SUBSTRING(week, 5) - 1) WEEK), '%Y-%m-%d') AS date, week, 'O3_w2' AS pollutant, O3_w2 AS value, O3_w2 / 12 AS score
FROM v_ari_polu_synop_w1w2 p1 INNER JOIN region ON region.region_id = p1.region_id
UNION ALL
SELECT region.region_name, DATE_FORMAT(DATE_ADD(DATE_FORMAT(CONCAT(SUBSTRING(week, 1, 4), '-01-01'), '%Y-%m-%d'), INTERVAL (SUBSTRING(week, 5) - 1) WEEK), '%Y-%m-%d') AS date, week, 'PM10_w2' AS pollutant, PM10_w2 AS value, PM10_w2 /3 AS score
FROM v_ari_polu_synop_w1w2 p1 INNER JOIN region ON region.region_id = p1.region_id
UNION ALL
SELECT region.region_name, DATE_FORMAT(DATE_ADD(DATE_FORMAT(CONCAT(SUBSTRING(week, 1, 4), '-01-01'), '%Y-%m-%d'), INTERVAL (SUBSTRING(week, 5) - 1) WEEK), '%Y-%m-%d') AS date, week, 'PM2p5_w2' AS pollutant, PM2p5_w2 AS value, PM2p5_w2  AS score
FROM v_ari_polu_synop_w1w2 p1 INNER JOIN region ON region.region_id = p1.region_id
UNION ALL
SELECT region.region_name, DATE_FORMAT(DATE_ADD(DATE_FORMAT(CONCAT(SUBSTRING(week, 1, 4), '-01-01'), '%Y-%m-%d'), INTERVAL (SUBSTRING(week, 5) - 1) WEEK), '%Y-%m-%d') AS date, week, 'SO2_w2' AS pollutant, SO2_w2 AS value, SO2_w2 / 5 AS score
FROM v_ari_polu_synop_w1w2 p1 INNER JOIN region ON region.region_id = p1.region_id;

