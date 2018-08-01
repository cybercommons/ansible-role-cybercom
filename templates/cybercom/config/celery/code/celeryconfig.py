import os
import ssl
appname = "{{application_short_name}}"
BROKER_URL = 'amqp://{{broker_user}}:{{broker_pass}}@cybercom_rabbitmq:{{broker_port}}/{{broker_vhost}}'
BROKER_USE_SSL = {
  'keyfile': '/ssl/client/key.pem',
  'certfile': '/ssl/client/cert.pem',
  'ca_certs': '/ssl/testca/cacert.pem',
  'cert_reqs': ssl.CERT_REQUIRED
}
CELERY_SEND_EVENTS = True
CELERY_TASK_RESULT_EXPIRES = None
CELERY_ACCEPT_CONTENT = ['pickle','json']
CELERY_RESULT_BACKEND = "mongodb://{{broker_user}}:{{broker_pass}}@cybercom_mongo:27017/?ssl=true&ssl_ca_certs=/ssl/testca/cacert.pem&ssl_certfile=/ssl/client/mongodb.pem"
CELERY_MONGODB_BACKEND_SETTINGS = {
    "database": "{{application_short_name}}",
    "taskmeta_collection": "tombstone"
}
CELERY_IMPORTS = ("{{queue_tasks_repo}}",)
