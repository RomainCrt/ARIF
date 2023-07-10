
CREATE TABLE synop_w (
    region_id INT NOT NULL,
    week INT NOT NULL,
    pmer DECIMAL(10, 2),
    dirv DECIMAL(10, 2),
    vitv DECIMAL(10, 2),
    temp DECIMAL(10, 4),
    hum DECIMAL(10, 4),
    pst DECIMAL(10, 4),
    r1 DECIMAL(10, 4),
    tempc DECIMAL(10, 4),   
    PRIMARY KEY (region_id, week),
    FOREIGN KEY (region_id) REFERENCES region(region_id) );
INSERT INTO synop_w
SELECT region.region_id
    , CAST( s1.week AS  SIGNED) as week
    , s1.pmer, s1.dirv, s1.vitv, s1.temp, s1.hum, s1.pst, s1.r1, s1.tempc
FROM arif_stg.synop s1
	INNER JOIN region ON s1.region = region.region_name;


