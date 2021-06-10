base:
  'server-VirtualBox':
    - downloads
    - make_config
    - restartMunin

  'log-VirtualBox':
    - restartService
