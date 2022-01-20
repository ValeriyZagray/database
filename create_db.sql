CREATE USER ice_chocolate WITH PASSWORD 'ice_nuts';
CREATE DATABASE ice_db WITH OWNER = ice_chocolate ENCODING =
'UTF8';
GRANT ALL PRIVILEGES ON DATABASE ice_db to ice_chocolate;