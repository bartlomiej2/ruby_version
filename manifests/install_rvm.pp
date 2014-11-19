# == Class: ruby_version::install_rvm
#
# This class exists to
# 1. Install RVM (Ruby Version Manager). It uses maestrodev-rvm module.
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
class ruby_version::install_rvm {
  # Install RVM (Ruby Version Manager)
  include 'rvm'
}
