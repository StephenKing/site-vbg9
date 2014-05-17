default[:varnish][:listen_port] = 80
default[:varnish][:vcl_conf] = 'vbg9.vcl'
default[:varnish][:vcl_source] = 'vbg9.vcl.erb'
default[:varnish][:vcl_cookbook] = 'site-vbg9'
default[:varnish][:backend_host] = 'www.fw-bayern.de'
default[:varnish][:backend_port] = 80
override[:varnish][:instance] = 'vbg9'