#
# Cookbook Name:: 
# Recipe:: default
#
# Copyright (C) 2014 
#
# 
#

include_recipe "varnish"

include_recipe "newrelic"

include_recipe "site-vbg9::vreload"

%w{ htop iftop }.each do |pkg|
  package pkg
end
