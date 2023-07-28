ALTER SYSTEM SET listen_addresses TO '*';
CREATE USER ${pg_replicat_username} REPLICATION LOGIN ENCRYPTED PASSWORD '${pg_replicat_password}';

CREATE DATABASE windmill;

CREATE USER windmill WITH PASSWORD '${pg_replicat_password}';
GRANT ALL PRIVILEGES ON DATABASE windmill TO windmill;
ALTER ROLE windmill WITH SUPERUSER;


