<!-- force wordpress version change -->

wp core update --version=6.2 --skip-plugins --skip-themes --force

<!-- create admin user -->

wp user create USERNAME EMAIL --role=administrator --skip-plugins --skip-themes

<!-- Search Replace WP CLI -->

wp search-replace 'URL' 'URL'
 --precise --all-tables --skip-columns=guid,user_email --report-changed-only --dry-run

<!-- use to see what was modified (themes and plugins) in the past day with this find sed cut command -->

find ./wp-content/ -maxdepth 2 -type d -mtime -10 | sed 1d | cut -d\/ -f1-4 | egrep '(plugins|themes)/'

find ./wp-content/ -maxdepth 2 -type d -mtime -10 | sed 1d | cut -d\/ -f1-4 | egrep '(uploads)/'

<!-- move wp-config.php to sub-folder  (use cp for copying) -->

mv wp-config.php SUBFOLDER/wp-config.php.bak-$(date +%s)

