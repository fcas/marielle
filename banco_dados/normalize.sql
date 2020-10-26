UPDATE raw_registros_ocorrencias_ssp_sp_gov_br SET LONGITUDE  = REPLACE(LONGITUDE, ',', '.');
UPDATE raw_registros_ocorrencias_ssp_sp_gov_br SET LATITUDE = REPLACE(LATITUDE, ',', '.');