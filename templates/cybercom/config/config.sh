# Broker (rabbitmq) configs 
vhost={{broker_vhost}}
broker_username={{broker_user}}
broker_password={{broker_pass}}
tag={{application_short_name}}

# path to Nginx SSL keys
ssl_key_path={{application_install_directory}}/{{application_short_name}}/config/ssl/nginx/keys/selfsigned.key
ssl_cert_path={{application_install_directory}}/{{application_short_name}}/config/ssl/nginx/keys/selfsigned.crt
ssl_dhparam_path={{application_install_directory}}/{{application_short_name}}/config/ssl/nginx/keys/dhparam.pem

# Mongodb - mongo URI fields in apiconfig.py and celeryconfig.py will need to be manually updated to match
mongo_username={{broker_user}}
mongo_password={{broker_pass}}

# uncomment and populate the following two lines for the resetDBCreds application to add / update the mongo user admin account
#mongo_admin_username=
#mongo_admin_password=
#mongo_admin_role=root
