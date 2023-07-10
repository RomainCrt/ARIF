CREATE VIEW v_ari_polu_synop AS
SELECT region.region_name
, region.region_id    
    ,   ari_w.week
    , DATE_FORMAT(DATE_ADD(DATE_FORMAT(CONCAT(SUBSTRING(ari_w.week, 1, 4), '-01-01'), '%Y-%m-%d'), INTERVAL (SUBSTRING(ari_w.week, 5) - 1) WEEK), '%Y-%m-%d') AS date
    ,   ari_w.inc
    ,   ari_w.inclow
    ,   ari_w.inctop
    ,   ari_w.inc100
    ,   ari_w.inc100low
    ,   ari_w.inc100top
    ,   polu_w.C6H6
    ,   polu_w.CO
    ,   polu_w.NO
    ,   polu_w.NO2
    ,   polu_w.NOXasNO2
    ,   polu_w.O3
    ,   polu_w.PM10
    ,   polu_w.PM2p5
    ,   polu_w.SO2
    ,   synop_w.pmer
    ,   synop_w.dirv
    ,   synop_w.vitv
    ,   synop_w.temp
    ,   synop_w.hum
    ,   synop_w.pst
    ,   synop_w.r1
    ,   synop_w.tempc
FROM region
	INNER JOIN ari_w ON region.region_id = ari_w.region_id  
    INNER JOIN polu_w ON region.region_id = polu_w.region_id AND ari_w.week = polu_w.week
	INNER JOIN synop_w ON region.region_id = synop_w.region_id AND ari_w.week = synop_w.week
ORDER BY ari_w.week, region.region_id
