# All attributes declared in here can be used throughout the cookbook.

# For example those four will be populated into my.cnf.erb template.
# Bind address
default['mysql']['bind-address'] = "127.0.0.1"

# Default mysql's character set
default['mysql']['collation-server'] = "utf8_unicode_ci"
default['mysql']['init-connect'] = "'SET NAMES utf8'"
default['mysql']['character-set-server'] = "utf8"

