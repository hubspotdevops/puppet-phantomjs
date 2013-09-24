# PhantomJS Puppet module
Install PhantomJS.  optionally run it as a system service.

## Requires
* A PhantomJS RPM package in an available repo.
* [pydaemon-runner](https://github.com/HubSpot/pydaemon-runner) for the
  init.d script.

## Usage
First ensure that a PhantomJS RPM exists and is available to the host.

NOTE: PhantomJS does not make a Yum repo available but does provide
instructions for creating an rpm:

http://phantomjs.org/build.html

```puppet
node foobar {
  class { '::phantomjs': }
}
```

## TODO
* Convert over from daemon-runner to a general purpose daemon start for
  non-HubSpot use.

## Authors
* Tom McLaughlin <tmclaughlin@hubspot.com>

## Copyright
Hubspot, Inc.

