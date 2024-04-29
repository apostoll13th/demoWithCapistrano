lock "~> 3.18.1"

set :application, "demoWithCapistrano"
set :repo_url, "https://github.com/apostoll13th/demoWithCapistrano"

set :deploy_to, "/var/www/demoWithCapistrano"

append :linked_files, ".env.local"
append :linked_dirs, "var/log", "var/sessions", "public/uploads"

set :keep_releases, 5

set :symfony_directory_structure, 3
set :sensio_distribution_version, 5

set :symfony_console_path, "bin/console"
set :symfony_console_flags, "--no-debug --env=prod"

set :composer_install_flags, '--prefer-dist --no-interaction --no-dev --optimize-autoloader'

after 'deploy:failed', 'symfony:rollback'