## GitLab configuration settings
##! This file is generated during initial installation and **is not** modified
##! during upgrades.
##! Check out the latest version of this file to know about the different
##! settings that can be configured by this file, which may be found at:
##! https://gitlab.com/gitlab-org/omnibus-gitlab/raw/master/files/gitlab-config-template/gitlab.rb.template


## GitLab URL
##! URL on which GitLab will be reachable.
##! For more details on configuring external_url see:
##! https://docs.gitlab.com/omnibus/settings/configuration.html#configuring-the-external-url-for-gitlab
external_url 'http://gitlab'
# registry_external_url 'https://registry.mydomain.io'
# pages_external_url 'http://pages.mydomain.io'
#  
# ### Trusted proxies
# ###! Customize if you have GitLab behind a reverse proxy which is running on a
# ###! different machine.
# ###! **Add the IP address for your reverse proxy to the list, otherwise users
# ###!   will appear signed in from that address.**
# gitlab_rails['trusted_proxies'] = ['172.18.0.0/16']
# 
# ### GitLab database settings
# ###! Docs: https://docs.gitlab.com/omnibus/settings/database.html
# ###! **Only needed if you use an external database.**
# gitlab_rails['db_host'] = "gitlab_postgresql"
# 
# ### GitLab Redis settings
# ###! Connect to your own Redis instance
# ###! Docs: https://docs.gitlab.com/omnibus/settings/redis.html
# gitlab_rails['redis_host'] = "redis"
# 
# ### GitLab email server settings
# ###! Docs: https://docs.gitlab.com/omnibus/settings/smtp.html
# ###! **Use smtp instead of sendmail/postfix.**
# 
# gitlab_rails['smtp_enable'] = 
# gitlab_rails['smtp_address'] = ""
# gitlab_rails['smtp_port'] = 
# gitlab_rails['smtp_user_name'] = ""
# gitlab_rails['smtp_password'] = ""
# gitlab_rails['smtp_domain'] = ""
# gitlab_rails['smtp_authentication'] = "login"
# gitlab_rails['smtp_enable_starttls_auto'] = true
# gitlab_rails['smtp_tls'] = true
# 
# gitlab_rails['gitlab_email_from'] = 'gitlab@'
# gitlab_rails['gitlab_email_reply_to'] = 'noreply@'
# 
# alertmanager['listen_address'] = 'localhost:9093'
# 
# ################################################################
# ## GitLab PostgreSQL
# ################################################################
# 
# ###! Changing any of these settings requires a restart of postgresql.
# ###! By default, reconfigure reloads postgresql if it is running. If you
# ###! change any of these settings, be sure to run `gitlab-ctl restart postgresql`
# ###! after reconfigure in order for the changes to take effect.
# postgresql['enable'] = false
# 
# ################################################################################
# ## GitLab Redis
# ##! **Can be disabled if you are using your own Redis instance.**
# ##! Docs: https://docs.gitlab.com/omnibus/settings/redis.html
# ################################################################################
# 
# redis['enable'] = false
# 
# ################################################################################
# ## GitLab NGINX
# ##! Docs: https://docs.gitlab.com/omnibus/settings/nginx.html
# ################################################################################
# 
# ##! **Override only if you use a reverse proxy**
# ##! Docs: https://docs.gitlab.com/omnibus/settings/nginx.html#setting-the-nginx-listen-port
# nginx['listen_port'] = 80
# registry_nginx['listen_port'] = 80
# pages_nginx['listen_port'] = 80
# 
# ##! **Override only if your reverse proxy internally communicates over HTTP**
# ##! Docs: https://docs.gitlab.com/omnibus/settings/nginx.html#supporting-proxied-ssl
# nginx['listen_https'] = false
# registry_nginx['listen_https'] = false
# pages_nginx['listen_https'] = false
# 
# ################################################################################
# ## GitLab Pages
# ##! Docs: https://docs.gitlab.com/ce/pages/administration.html
# ################################################################################
# 
# gitlab_pages['enable'] = true
# gitlab_pages['inplace_chroot'] = true
# gitlab_pages['listen_proxy'] = "0.0.0.0:8090"
