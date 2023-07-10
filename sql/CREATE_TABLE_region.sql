
CREATE TABLE region (
    region_id INT AUTO_INCREMENT PRIMARY KEY,
    region_name VARCHAR(30) );
INSERT INTO region (region_name)
SELECT DISTINCT region
FROM arif_stg.ari_raw;
