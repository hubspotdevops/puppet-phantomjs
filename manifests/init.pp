# == Class: phantomjs
#
# Configure the phantomjs service
#
# === Parameters
# [*pkg_ensure*]
#   An optional version to install.
#
# [*manage_service*]
#   If Puppet should manage the PhantomJS service.
#
# [*svc_ensure*]
#   Value of ensure attribute for phantomjs service.
#
# [*svc_enable*]
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
# node foobar {
#   class{ 'phantomjs': }
# }
#
# === Authors
#
# Tom McLaughlin <tmclaughlin@hubspot.com>
#
# === Copyright
#
# Copyright 2013 Hubspot
#
class phantomjs(
  $pkg_ensure     = $phantomjs::params::pkg_ensure,
  $manage_service = $phantomjs::params::manage_service,
  $svc_ensure     = $phantomjs::params::svc_ensure,
  $svc_enable     = $phantomjs::params::svc_enable,
  $out_file       = $phantomjs::params::out_file,
  $error_file     = $phantomjs::params::error_file,
  $service_args   = $phantomjs::params::service_args,
) inherits phantomjs::params {

  class { '::phantomjs::package':
    pkg_ensure => $pkg_ensure
  }

  if $manage_service {
    class { '::phantomjs::service':
      svc_ensure   => $svc_ensure,
      svc_enable   => $svc_enable,
      out_file     => $out_file,
      error_file   => $error_file,
      service_args => $service_args
    }

    Class['::phantomjs::package'] -> Class['::phantomjs::service']
  }
}
