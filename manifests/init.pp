# == Class: ruby_version
#
# This module allows you to manage ruby installation.
# 
# This module will install RVM and then install ruby by RVM.
# This module uses maestrodev-rvm module from PuppetForge.
#
# === Parameters
#
# [*ruby_version*]
# Version of ruby that will be installed. Defaults to "2.1.2".
#
#
# The default values for the parameters are set in ruby_version::params. Have
# a look at the corresponding <tt>params.pp</tt> manifest file if you need more
# technical information about them.
#
# === Examples
#
# * Installation:
#     class { 'ruby_version': }
#
# * Set specific version of ruby:
#     class { 'ruby_version': 
#	ruby_version  => "2.1.3",
#     }
#
# === Authors
#
# * Evgeniy Evtushenko <mailto:evgeniye@crytek.com>
#
class ruby_version(

  $ruby_version = $ruby_version::params::ruby_version,

) inherits ruby_version::params {

  class { 'ruby_version::rvm_gpg_key': } ->
  class { 'ruby_version::install_rvm': } ->
  class { 'ruby_version::install_ruby': }

}
