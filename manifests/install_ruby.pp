# == Class: ruby_version::install_ruby
#
# This class exists to
# 1. Install ruby. It uses maestrodev-rvm module.
#
# === Parameters
#
# This class does not provide any parameters.
#
#
# === Examples
#
# This class is not intended to be used directly.
#
#
# === Links
#
# * {maestrodev/rvm}[https://forge.puppetlabs.com/maestrodev/rvm]
#
#
# === Authors
#
# * Evgeniy Evtushenko <mailto:evgeniye@crytek.com>
#
class ruby_version::install_ruby {
  # Install ruby
  rvm_system_ruby { "ruby-${ruby_version::ruby_version}":
      ensure      => present,
      default_use => true,
      build_opts  => ['--binary'],
  }

}
