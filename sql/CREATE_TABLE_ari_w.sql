CREATE TABLE ari_w (
    region_id INT NOT NULL,
    week INT NOT NULL,
    inc INT,
    inclow INT,
    inctop INT,
    inc100 INT,
    inc100low INT,
    inc100top INT,
    PRIMARY KEY (region_id, week),
    FOREIGN KEY (region_id) REFERENCES region(region_id) );
INSERT INTO ari_w
SELECT region.region_id
    , CAST( a1.Semaine AS  SIGNED)
    , a1.`Incidence estimée` AS inc
    , a1.`Borne inférieur de l'incidence estimée` AS inclow
    , a1.`Borne supérieure de l'incidence estimée` AS inctop
    , a1.`Taux d'incidence estimé` AS inc100
    , a1.`Borne inférieure du taux d'incidence estimé` AS inc100low
    , a1.`Borne supérieure du taux d'incidence estimé` AS inc100top
FROM arif_stg.ari_raw a1
	INNER JOIN region ON a1.region = region.region_name;


