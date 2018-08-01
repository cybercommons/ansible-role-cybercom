cyberCommons Ansible Role
=========

This role will deploy the cyberCommons framework.

Requirements
------------

1. docker (role will test for docker and fail if not installed or user not member of docker group)

Role Variables
--------------

Please see [documentation](http://cybercom-docs.readthedocs.io/en/latest/installation.html#install-cybercommons-configuration) for detail explanation of variables.

  ```
  author: "Some Guy"
  application_title: "Some Application"
  application_short_name: "someapp"
  nginx_server_name: "localhost"
  use_ssl: "None"
  ssl_valid_days: 365
  broker_host: "localhost"
  broker_port: 5671
  broker_vhost: "vhost"
  broker_user: "quser"
  broker_pass: "qpass"
  queue_tasks_org: "cybercommons"
  queue_tasks_repo: "cybercomq"
  queue_tasks_branch: "master"
  celery_concurrency: 8
  application_install_directory: "/opt"
  ```
** use_ssl (string): valid options -  "None", "SelfSigned", "LetsEncrypt". If LetsEncrypt, please see [documentation](http://cybercom-docs.readthedocs.io/en/latest/installation.html#build-let-s-encrypt-docker-container) to obtain ssl certs.


Dependencies
------------

None

Example Playbook
----------------
  ```
  - hosts: servers
    roles:
       - ansible-role-cybercom
  ```

If you want to run with ansible-toolbox (pip install ansible-toolbox):

1. Clone role

  ```
    git clone <this repo>
  ```

2. Run - Be sure to set --extra-vars to your variables.

  ```  
    ansible-role --extra-vars \
    '{"application_install_directory":"/my-folder","use_ssl":"SelfSigned"}' \
    ansible-role-cybercom

  ```
or place variables in file(example.json)

  ```  
    ansible-role --extra-vars '@example.json' ansible-role-cybercom
  ```

License
-------

MIT

Author Information
------------------

Mark Stacy ( [mbstacy](https://github.com/mbstacy) )
