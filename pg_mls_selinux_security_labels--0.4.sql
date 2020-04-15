-- ---------------------------------------------------------------------------- --
--  2020-03-15  Nick Версия 0.4                                                 --
--  2020-04-15 Убрано "pro" в наименовании.                                     --  
-- ---------------------------------------------------------------------------- --
SECURITY LABEL FOR 'selinux' ON FUNCTION sepgsql.sepgsql_get_tuple_label_t  (text, int)        IS 'system_u:object_r:sepgsql_trusted_proc_exec_t:s0';
SECURITY LABEL FOR 'selinux' ON FUNCTION sepgsql.sepgsql_set_column_label_t (text, text, text) IS 'system_u:object_r:sepgsql_trusted_proc_exec_t:s0';
SECURITY LABEL FOR 'selinux' ON FUNCTION sepgsql.sepgsql_set_con_t          (text)             IS 'system_u:object_r:sepgsql_trusted_proc_exec_t:s0-s3';
SECURITY LABEL FOR 'selinux' ON FUNCTION sepgsql.sepgsql_set_db_label_t     (text, text, text) IS 'system_u:object_r:sepgsql_trusted_proc_exec_t:s0';
SECURITY LABEL FOR 'selinux' ON FUNCTION sepgsql.sepgsql_set_func_label_t   (text, text, text) IS 'system_u:object_r:sepgsql_trusted_proc_exec_t:s0';
SECURITY LABEL FOR 'selinux' ON FUNCTION sepgsql.sepgsql_set_sch_label_t    (text, text, text) IS 'system_u:object_r:sepgsql_trusted_proc_exec_t:s0';
SECURITY LABEL FOR 'selinux' ON FUNCTION sepgsql.sepgsql_set_seq_label_t    (text, text, text) IS 'system_u:object_r:sepgsql_trusted_proc_exec_t:s0';
SECURITY LABEL FOR 'selinux' ON FUNCTION sepgsql.sepgsql_set_table_label_t  (text, text, text) IS 'system_u:object_r:sepgsql_trusted_proc_exec_t:s0';
SECURITY LABEL FOR 'selinux' ON FUNCTION sepgsql.sepgsql_set_tuple_label_t  (text, int,  text) IS 'system_u:object_r:sepgsql_trusted_proc_exec_t:s0';   
SECURITY LABEL FOR 'selinux' ON FUNCTION sepgsql.sepgsql_set_view_label_t   (text, text, text) IS 'system_u:object_r:sepgsql_trusted_proc_exec_t:s0';
--
SECURITY LABEL FOR 'selinux' ON FUNCTION sepgsql.sepgsql_check_tuple_label (text, varchar(10), text[], boolean) IS 'system_u:object_r:sepgsql_trusted_proc_exec_t:s0'; -- 2020-01-10
--
-- 2019-11-26 Триггерные функции
--
SECURITY LABEL FOR 'selinux' ON FUNCTION sepgsql.f_tg_after_i()  IS 'system_u:object_r:sepgsql_trusted_proc_exec_t:s0';
SECURITY LABEL FOR 'selinux' ON FUNCTION sepgsql.f_tg_before_d() IS 'system_u:object_r:sepgsql_trusted_proc_exec_t:s0';
SECURITY LABEL FOR 'selinux' ON FUNCTION sepgsql.f_tg_after_u()  IS 'system_u:object_r:sepgsql_trusted_proc_exec_t:s0';
--
-- 2020-03-27 Новые функции
--
SECURITY LABEL FOR 'selinux' ON FUNCTION sepgsql.pg_mls_table_remove (text, text, text, text[], text, text) 
   IS 'system_u:object_r:sepgsql_trusted_proc_exec_t:s0';
--
SECURITY LABEL FOR 'selinux' ON FUNCTION sepgsql.pg_mls_table_add (text, text, text[], text, text, text, text) 
   IS 'system_u:object_r:sepgsql_trusted_proc_exec_t:s0';
