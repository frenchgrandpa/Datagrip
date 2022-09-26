SELECT grantee, privilege_type
FROM information_schema.role_table_grants
where grantee ='metabase'