server 'localhost', user: 'root', roles: %w{app db web}

set :symfony_env, 'dev'
set :composer_install_flags, '--prefer-dist --no-interaction --optimize-autoloader'
set :deploy_to, '/var/www/demoWithCapistrano'