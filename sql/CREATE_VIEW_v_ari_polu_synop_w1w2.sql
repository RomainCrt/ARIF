
CREATE VIEW v_ari_polu_synop_w1w2 AS
SELECT region.region_name, region.region_id,   a1.week
    , DATE_FORMAT(DATE_ADD(DATE_FORMAT(CONCAT(SUBSTRING(a1.week, 1, 4), '-01-01'), '%Y-%m-%d'), INTERVAL (SUBSTRING(a1.week, 5) - 1) WEEK), '%Y-%m-%d') AS date
    , a1.inc, a2.inc as inc_w1, a3.inc as inc_w2, a1.inclow, a2.inclow as inclow_w1, a3.inclow as inclow_w2, a1.inctop, a2.inctop as inctop_w1, a3.inctop as inctop_w2
    , a1.inc100, a2.inc100 as inc100_w1, a3.inc100 as inc100_w2, a1.inc100low, a2.inc100low as inc100low_w1, a3.inc100low as inc100low_w2
    , a1.inc100top, a2.inc100top as inc100top_w1, a3.inc100top as inc100top_w2
    , p1.C6H6, p2.C6H6 as C6H6_w1, p3.C6H6 as C6H6_w2
    , p1.CO, p2.CO as CO_w1, p3.CO as CO_w2
    , p1.`NO`, p2.`NO` as NO_w1, p3.`NO` as NO_w2
    , p1.NO2, p2.NO2 as NO2_w1, p3.NO2 as NO2_w2
    , p1.NOXasNO2, p2.NOXasNO2 as NOXasNO2_w1,p3.NOXasNO2 as NOXasNO2_w2
	, p1.O3, p2.O3 as O3_w1, p3.O3 as O3_w2
    , p1.PM10, p2.PM10 as PM10_w1, p3.PM10 as PM10_w2
    , p1.PM2p5, p2.PM2p5 as PM2p5_w1, p3.PM2p5 as PM2p5_w2
    , abs(p1.SO2) as SO2,abs(p2.SO2) as SO2_w1,abs(p3.SO2) as SO2_w2
	, s1.pmer, s2.pmer as pmer_w1, s3.pmer as pmer_w2
    , s1.dirv, s2.dirv as dirv_w1, s3.dirv as dirv_w2
    , s1.vitv, s2.vitv as vitv_w1, s3.vitv as vitv_w2
    , s1.temp, s2.temp as temp_w1, s3.temp as temp_w2
    , s1.hum, s2.hum as hum_w1, s3.hum as hum_w2
    , s1.pst, s2.pst as pst_w1, s3.pst as pst_w2
    , abs(s1.r1) as r1, abs(s2.r1) as r1_w1, abs(s3.r1) as r1_w2
    , s1.tempc, s2.tempc as tempc_w1, s3.tempc as tempc_w2
FROM region
	INNER JOIN ari_w a1 ON region.region_id = a1.region_id  
		LEFT JOIN ari_w a2 ON a1.region_id = a2.region_id AND a1.week-a2.week= 1
		LEFT JOIN ari_w a3 ON a1.region_id = a3.region_id AND a1.week-a3.week= 2
    INNER JOIN polu_w p1 ON region.region_id = p1.region_id AND a1.week = p1.week
		LEFT JOIN polu_w p2 ON p1.region_id = p2.region_id AND p1.week-p2.week= 1
		LEFT JOIN polu_w p3 ON p1.region_id = p3.region_id AND p1.week-p3.week= 2
	INNER JOIN synop_w s1 ON region.region_id = s1.region_id AND a1.week = s1.week
    	LEFT JOIN synop_w s2 ON s1.region_id = s2.region_id AND s1.week-s2.week= 1
		LEFT JOIN synop_w s3 ON s1.region_id = s3.region_id AND s1.week-s3.week= 2
	WHERE a1.week > 202102  ORDER BY a1.week, region.region_id




