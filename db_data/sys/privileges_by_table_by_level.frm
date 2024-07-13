TYPE=VIEW
query=select `t`.`TABLE_SCHEMA` AS `TABLE_SCHEMA`,`t`.`TABLE_NAME` AS `TABLE_NAME`,`privs`.`GRANTEE` AS `GRANTEE`,`privs`.`PRIVILEGE_TYPE` AS `PRIVILEGE`,`privs`.`LEVEL` AS `LEVEL` from (`information_schema`.`tables` `t` join (select NULL AS `TABLE_SCHEMA`,NULL AS `TABLE_NAME`,`information_schema`.`user_privileges`.`GRANTEE` AS `GRANTEE`,`information_schema`.`user_privileges`.`PRIVILEGE_TYPE` AS `PRIVILEGE_TYPE`,\'GLOBAL\' AS `LEVEL` from `information_schema`.`user_privileges` union select `information_schema`.`schema_privileges`.`TABLE_SCHEMA` AS `TABLE_SCHEMA`,NULL AS `TABLE_NAME`,`information_schema`.`schema_privileges`.`GRANTEE` AS `GRANTEE`,`information_schema`.`schema_privileges`.`PRIVILEGE_TYPE` AS `PRIVILEGE_TYPE`,\'SCHEMA\' AS `LEVEL` from `information_schema`.`schema_privileges` union select `information_schema`.`table_privileges`.`TABLE_SCHEMA` AS `TABLE_SCHEMA`,`information_schema`.`table_privileges`.`TABLE_NAME` AS `TABLE_NAME`,`information_schema`.`table_privileges`.`GRANTEE` AS `GRANTEE`,`information_schema`.`table_privileges`.`PRIVILEGE_TYPE` AS `PRIVILEGE_TYPE`,\'TABLE\' AS `LEVEL` from `information_schema`.`table_privileges`) `privs` on((`t`.`TABLE_SCHEMA` = `privs`.`TABLE_SCHEMA` or `privs`.`TABLE_SCHEMA` is null) and (`t`.`TABLE_NAME` = `privs`.`TABLE_NAME` or `privs`.`TABLE_NAME` is null) and `privs`.`PRIVILEGE_TYPE` in (\'SELECT\',\'INSERT\',\'UPDATE\',\'DELETE\',\'CREATE\',\'ALTER\',\'DROP\',\'INDEX\',\'REFERENCES\',\'TRIGGER\',\'GRANT OPTION\',\'SHOW VIEW\',\'DELETE HISTORY\'))) where `t`.`TABLE_SCHEMA` not in (\'sys\',\'mysql\',\'information_schema\',\'performance_schema\')
md5=4e8934e239a14d16ba65d253021e392d
updatable=0
algorithm=2
definer_user=mariadb.sys
definer_host=localhost
suid=0
with_check_option=0
timestamp=0001720881707511270
create-version=2
source=SELECT t.TABLE_SCHEMA,\n       t.TABLE_NAME,\n       privs.GRANTEE,\n       privs.PRIVILEGE_TYPE,\n       privs.LEVEL\nFROM INFORMATION_SCHEMA.TABLES AS t\nJOIN ( SELECT NULL AS TABLE_SCHEMA,\n              NULL AS TABLE_NAME,\n              GRANTEE,\n              PRIVILEGE_TYPE,\n             \'GLOBAL\' LEVEL\n           FROM INFORMATION_SCHEMA.USER_PRIVILEGES\n         UNION\n       SELECT TABLE_SCHEMA,\n              NULL AS TABLE_NAME,\n              GRANTEE,\n              PRIVILEGE_TYPE,\n              \'SCHEMA\' LEVEL\n           FROM INFORMATION_SCHEMA.SCHEMA_PRIVILEGES\n         UNION\n       SELECT TABLE_SCHEMA,\n              TABLE_NAME,\n              GRANTEE,\n              PRIVILEGE_TYPE,\n              \'TABLE\' LEVEL\n           FROM INFORMATION_SCHEMA.TABLE_PRIVILEGES\n       ) privs\n    ON (t.TABLE_SCHEMA = privs.TABLE_SCHEMA OR privs.TABLE_SCHEMA IS NULL)\n   AND (t.TABLE_NAME = privs.TABLE_NAME OR privs.TABLE_NAME IS NULL)\n   AND privs.PRIVILEGE_TYPE IN (\'SELECT\', \'INSERT\', \'UPDATE\', \'DELETE\',\n                                \'CREATE\', \'ALTER\', \'DROP\', \'INDEX\',\n                                \'REFERENCES\', \'TRIGGER\', \'GRANT OPTION\',\n                                \'SHOW VIEW\', \'DELETE HISTORY\')\nWHERE t.TABLE_SCHEMA NOT IN (\'sys\', \'mysql\',\'information_schema\',\n                             \'performance_schema\');
client_cs_name=utf8mb3
connection_cl_name=utf8mb3_general_ci
view_body_utf8=select `t`.`TABLE_SCHEMA` AS `TABLE_SCHEMA`,`t`.`TABLE_NAME` AS `TABLE_NAME`,`privs`.`GRANTEE` AS `GRANTEE`,`privs`.`PRIVILEGE_TYPE` AS `PRIVILEGE`,`privs`.`LEVEL` AS `LEVEL` from (`information_schema`.`tables` `t` join (select NULL AS `TABLE_SCHEMA`,NULL AS `TABLE_NAME`,`information_schema`.`user_privileges`.`GRANTEE` AS `GRANTEE`,`information_schema`.`user_privileges`.`PRIVILEGE_TYPE` AS `PRIVILEGE_TYPE`,\'GLOBAL\' AS `LEVEL` from `information_schema`.`user_privileges` union select `information_schema`.`schema_privileges`.`TABLE_SCHEMA` AS `TABLE_SCHEMA`,NULL AS `TABLE_NAME`,`information_schema`.`schema_privileges`.`GRANTEE` AS `GRANTEE`,`information_schema`.`schema_privileges`.`PRIVILEGE_TYPE` AS `PRIVILEGE_TYPE`,\'SCHEMA\' AS `LEVEL` from `information_schema`.`schema_privileges` union select `information_schema`.`table_privileges`.`TABLE_SCHEMA` AS `TABLE_SCHEMA`,`information_schema`.`table_privileges`.`TABLE_NAME` AS `TABLE_NAME`,`information_schema`.`table_privileges`.`GRANTEE` AS `GRANTEE`,`information_schema`.`table_privileges`.`PRIVILEGE_TYPE` AS `PRIVILEGE_TYPE`,\'TABLE\' AS `LEVEL` from `information_schema`.`table_privileges`) `privs` on((`t`.`TABLE_SCHEMA` = `privs`.`TABLE_SCHEMA` or `privs`.`TABLE_SCHEMA` is null) and (`t`.`TABLE_NAME` = `privs`.`TABLE_NAME` or `privs`.`TABLE_NAME` is null) and `privs`.`PRIVILEGE_TYPE` in (\'SELECT\',\'INSERT\',\'UPDATE\',\'DELETE\',\'CREATE\',\'ALTER\',\'DROP\',\'INDEX\',\'REFERENCES\',\'TRIGGER\',\'GRANT OPTION\',\'SHOW VIEW\',\'DELETE HISTORY\'))) where `t`.`TABLE_SCHEMA` not in (\'sys\',\'mysql\',\'information_schema\',\'performance_schema\')
mariadb-version=110402
