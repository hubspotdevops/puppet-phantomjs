# == Class: phantomjs::service
#
# Configure the phantomjs service
#
# === Parameters
#
# [*ensure*]
#   Value of ensure attribute for phantomjs service.
#
# [*enable*]
#   Value of enable attribute for phantomjs service.
#
# [*out_file*]
#   Location of service output.
#
# [*error_file*]
#   Location of error output.
#
# [*service_args]
#   Additional arguments to be passed to phantomjs
#
# === Examples
#
# This class is meant to be used by a super class:
#
#   class { 'phantomjs::service': }
#
# === TODO
#
# The init.d script relies on an unreleased script for running PhantomJS
# as a service.
#
# === Authors
#
# Tom McLaughlin <tmclaughlin@hubspot.com>
#
# === Copyright
#
# Copyright 2013 Hubspot
#
class phantomjs::service(
  $ensure,
  $enable,
  $out_file,
  $error_file,
  $service_args,
  $webdriver_addr,
) {
  file { '/etc/init.d/phantomjs':
    ensure  => present,
    owner   => 'root',
    group   => 'root',
    mode    => '0755',
    content => template('phantomjs/phantomjs.initd.erb'),
  }

  service { 'phantomjs':
    ensure  => $ensure,
    enable  => $enable,
  }

  File['/etc/init.d/phantomjs'] -> Service['phantomjs']
}
