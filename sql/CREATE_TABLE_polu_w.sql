
CREATE TABLE polu_w (
    region_id INT NOT NULL,
    week INT NOT NULL,
    C6H6 DECIMAL(10, 4),
    CO DECIMAL(10, 4),
    `NO` DECIMAL(10, 4),
    NO2 DECIMAL(10, 4),
    NOXasNO2 DECIMAL(10, 4),
    O3 DECIMAL(10, 4),
    PM10  DECIMAL(10, 4),
    PM2p5 DECIMAL(10, 4),
    SO2 DECIMAL(10, 4),
    PRIMARY KEY (region_id, week),
    FOREIGN KEY (region_id) REFERENCES region(region_id) );
INSERT INTO polu_w
SELECT region.region_id
    , CAST( CONCAT(YEAR(p1.date), LPAD(WEEK(p1.date) +1, 2, '0')) AS  SIGNED) as week
    , AVG(p1.C6H6), AVG(p1.CO), AVG(p1.`NO`), AVG(p1.NO2), AVG(p1.`NOX as NO2`)
    , AVG(p1.O3), AVG(p1.PM10), AVG(p1.`PM2.5`), AVG(p1.SO2)    
FROM arif_stg.polu_d p1
	INNER JOIN region ON p1.region = region.region_name
Group by region.region_id , week;
