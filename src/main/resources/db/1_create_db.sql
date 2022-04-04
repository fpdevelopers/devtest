-- Ejecute esto con psql -U tuUsuario -f create_database.sql
CREATE USER "fp_dev" WITH ENCRYPTED PASSWORD 'fp_dev';
ALTER ROLE "fp_dev" WITH createdb;
CREATE database "fp_dev_test";
ALTER DATABASE fp_dev_test OWNER TO fp_dev;