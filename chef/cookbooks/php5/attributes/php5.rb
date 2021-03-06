# Attributes for php5's php.ini file. Sets some directives to suit development enviroment.
# All values taken from "Development values" in php.ini file

default['php']['display_errors'] = 'On'
default['php']['display_startup_errors'] = 'On'
default['php']['error_reporting'] = 'E_ALL'
default['php']['html_errors'] = 'On'
default['php']['log_errors'] = 'On'
default['php']['max_input_time'] = '60'
default['php']['output_buffering'] = '4096'
default['php']['register_argc_argv'] = 'Off'
default['php']['request_order'] = '"GP"'
default['php']['session']['bug_compat_42'] = 'On'
default['php']['session']['bug_compat_warn'] = 'On'
default['php']['session']['gc_divisor'] = '1000'
default['php']['session']['hash_bits_per_character'] = '5'
default['php']['short_open_tag'] = 'Off'
default['php']['track_errors'] = 'On'
default['php']['url_rewriter']['tags'] = '"a=href,area=href,frame=src,input=src,form=fakeentry"'
default['php']['variables_order'] = '"GPCS"'

default['php']['mysqlextension'] = 'mysqli.so'
