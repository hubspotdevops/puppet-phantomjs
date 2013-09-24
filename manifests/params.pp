# == Class: phantomjs::params
#
# Configure the phantomjs service
#
# === Parameters
#
# NONE
#
# === Examples
#
# This class is meant to be used by a super class:
#
#   class phantomjs(...) inherits phantomjs::params {...}
#
# === Authors
#
# Tom McLaughlin <tmclaughlin@hubspot.com>
#
# === Copyright
#
# Copyright 2013 Hubspot
#
class phantomjs::params {
  $pkg_ensure     = installed
  $manage_service = false
  $svc_ensure     = running
  $svc_enable     = true
  $out_file       = '/var/log/phantom.out'
  $error_file     = '/var/log/phantom.err'
  $service_args   = ''
  $webdriver_addr = '127.0.0.1:8910'
}
