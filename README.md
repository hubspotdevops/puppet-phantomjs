# PhantomJS Puppet module
Install PhantomJS.  optionally run it as a system service.

## Requires
* A PhantomJS RPM package in an available repo.

## Usage
First ensure that a PhantomJS RPM exists and is available to the host.

NOTE: PhantomJS does not make a Yum repo available but does provide
instructions for creating an rpm:

[http://phantomjs.org/build.html]

```puppet
node foobar {
  class { '::phantomjs': }
}
```

## TODO
* The init.d script relies on an unreleased script for running PhantomJS as
 a service.

## Authors
* Tom McLaughlin <tmclaughlin@hubspot.com>

## Copyright
Hubspot, Inc.

