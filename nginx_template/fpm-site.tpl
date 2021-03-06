; Copyright (c) 2012, Fixed Solutions, System Development All rights reserved.
; Script : EasyNginx v3.3.1
; Author : [Ahmed Kandil] <a.kandil@arabhosters.com>
; Last Update : [ 08-09-2012 ]

[REP_DOMAIN]
listen = 127.0.0.1:REP_FPMPORT
user = REP_USER
group = REP_USER
request_slowlog_timeout = 5s
slowlog = /usr/local/php-fpm/var/log/slowlog-REP_DOMAIN.log
listen.allowed_clients = 127.0.0.1
pm = dynamic
pm.max_children = REP_MAX
pm.start_servers = REP_CPU
pm.min_spare_servers = REP_CPU
pm.max_spare_servers = REP_DCPU
pm.max_requests = 400
listen.backlog = -1
pm.status_path = /status
request_terminate_timeout = 120s
rlimit_files = 131072
rlimit_core = unlimited
catch_workers_output = yes
env[HOSTNAME] = $HOSTNAME
env[TMP] = /tmp
env[TMPDIR] = /tmp
env[TEMP] = /tmp
php_flag[display_errors] = on
php_admin_value[error_log] = /usr/local/php-fpm/var/log/error-REP_DOMAIN.log
php_admin_flag[log_errors] = on
