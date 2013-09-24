# == Class: phantomjs::package
#
# Install the phantomjs package
#
# === Parameters
#
# NONE
#
# === Examples
#
# This class is meant to be used by a super class:
#
#   class { 'phantomjs::service': }
#
# === Authors
#
# Tom McLaughlin <tmclaughlin@hubspot.com>
#
# === Copyright
#
# Copyright 2013 Hubspot
#
class phantomjs::package($pkg_ensure) {
  package { 'phantomjs':
    ensure  => $pkg_ensure,
  }
}
