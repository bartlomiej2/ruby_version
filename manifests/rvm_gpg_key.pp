# == Class: ruby_version::rvm_gpg_key
#
# This class exists to
# 1. Add Michal Papis gpg key to prevent error message
#    during rvm installation.
# 2. Create lock-file to prevent repeat of 'add_rvm_gpg_key' execution
#
# If this function will be added to maestrodev-rvm module,
# there will be no need it this class.
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
class ruby_version::rvm_gpg_key {
  $lock_file = '/root/.gnupg/.puppet_add_rvm_gpg_key_exec.lock'

  # Adding Michal Papis gpg key to prevent error message
  # during rvm installation:
  # "gpg: Can't check signature: No public key"
  #
  # gpg server and keyID are hardcoded here because they shouldn't be changed
  exec { 'add_rvm_gpg_key':
    command => 'gpg2 --keyserver hkp://keys.gnupg.net --recv-keys D39DC0E3',
    path    => '/usr/bin',
    creates => $lock_file,
  } ->

  # Create lock-file to prevent repeat of 'add_rvm_gpg_key' execution
  file { 'add_rvm_gpg_key_lock':
    ensure  => present,
    path    => $lock_file,
  }
}
