# Class: rexray
# ===========================
#
# This class installs and configures REX-Ray
#
# Parameters
# ----------
#
# $install_channel::         Specify REX-Ray channel to install from.
#                            One of 'stable', 'unstable', 'staged'.
# 
# $install_version::         Specify an exact version to install.  If not specified, 
#                            defaults to the latest from the channel
#
# $start_service::           Whether to enable and start REX-Ray as a service
#
# $storage_drivers::         List of storage drivers to enable. Default is [],
#                            but at least one must be specific to produce a working
#                            installation.
#
# $aws_accesskey::
# $aws_secretkey::
# $aws_region::
# $gce_keyfile::
# $isilon_endpoint::
# $isilon_insecure::
# $isilon_username::
# $isilon_password::
# $isilon_volumePath::
# $isilon_nfsHost::
# $os_authurl::
# $os_userid::
# $os_username::
# $os_password::
# $os_tenantid::
# $os_tenantname::
# $os_domainid::
# $os_domainname::
# $os_regionname::
# $os_availabilityzonename::
# $rax_authurl::
# $rax_userid::
# $rax_username::
# $rax_password::
# $rax_tenantid::
# $rax_tenantname::
# $rax_domainid::
# $rax_domainname::
# $sio_endpoint::
# $sio_insecure::
# $sio_usecerts::
# $sio_username::
# $sio_password::
# $sio_systemid::
# $sio_systemname::
# $sio_protectiondomainid::
# $sio_protectiondomainname::
# $sio_storagepoolid::
# $sio_storagepoolname::
# $vbox_endpoint::
# $vbox_user::
# $vbox_pass::
# $vbox_tls::
# $vbox_volume_path::
# $vbox_controller_name::
# $vbox_machine::
# $vmax_smisHost::
# $vmax_smisPort::
# $vmax_insecure::
# $vmax_username::
# $vmax_password::
# $vmax_sid::
# $vmax_volumePrefix::
# $vmax_storageGroup::
# $vmax_mode::
# $vmax_vmh::
# $xtremio_endpoint::
# $xtremio_userName::
# $xtremio_password::
# $xtremio_insecure::
# $xtremio_deviceMapper::
# $xtremio_multipath::
# $xtremio_remoteManagement::
#
# Examples
# --------
#
# @example
#    class { 'rexray':
#      storage_drivers => [ 'gce' ],
#    }
#
class rexray (
  $install_channel          = $rexray::params::install_channel,
  $install_version          = $rexray::params::install_version,
  $start_service            = $rexray::params::start_service,
  $storage_drivers          = $rexray::params::storage_drivers,
  $aws_accesskey            = $rexray::params::aws_accesskey,
  $aws_secretkey            = $rexray::params::aws_secretkey,
  $aws_region               = $rexray::params::aws_region,
  $gce_keyfile              = $rexray::params::gce_keyfile,
  $isilon_endpoint          = $rexray::params::isilon_endpoint,
  $isilon_insecure          = $rexray::params::isilon_insecure,
  $isilon_username          = $rexray::params::isilon_username,
  $isilon_password          = $rexray::params::isilon_password,
  $isilon_volumePath        = $rexray::params::isilon_volumePath,
  $isilon_nfsHost           = $rexray::params::isilon_nfsHost,
  $os_authurl               = $rexray::params::os_authurl,
  $os_userid                = $rexray::params::os_userid,
  $os_username              = $rexray::params::os_username,
  $os_password              = $rexray::params::os_password,
  $os_tenantid              = $rexray::params::os_tenantid,
  $os_tenantname            = $rexray::params::os_tenantname,
  $os_domainid              = $rexray::params::os_domainid,
  $os_domainname            = $rexray::params::os_domainname,
  $os_regionname            = $rexray::params::os_regionname,
  $os_availabilityzonename  = $rexray::params::os_availabilityzonename,
  $rax_authurl              = $rexray::params::rax_authurl,
  $rax_userid               = $rexray::params::rax_userid,
  $rax_username             = $rexray::params::rax_username,
  $rax_password             = $rexray::params::rax_password,
  $rax_tenantid             = $rexray::params::rax_tenantid,
  $rax_tenantname           = $rexray::params::rax_tenantname,
  $rax_domainid             = $rexray::params::rax_domainid,
  $rax_domainname           = $rexray::params::rax_domainname,
  $sio_endpoint             = $rexray::params::sio_endpoint,
  $sio_insecure             = $rexray::params::sio_insecure,
  $sio_usecerts             = $rexray::params::sio_usecerts,
  $sio_username             = $rexray::params::sio_username,
  $sio_password             = $rexray::params::sio_password,
  $sio_systemid             = $rexray::params::sio_systemid,
  $sio_systemname           = $rexray::params::sio_systemname,
  $sio_protectiondomainid   = $rexray::params::sio_protectiondomainid,
  $sio_protectiondomainname = $rexray::params::sio_protectiondomainname,
  $sio_storagepoolid        = $rexray::params::sio_storagepoolid,
  $sio_storagepoolname      = $rexray::params::sio_storagepoolname,
  $vbox_endpoint            = $rexray::params::vbox_endpoint,
  $vbox_user                = $rexray::params::vbox_user,
  $vbox_pass                = $rexray::params::vbox_pass,
  $vbox_tls                 = $rexray::params::vbox_tls,
  $vbox_volume_path         = $rexray::params::vbox_volume_path,
  $vbox_controller_name     = $rexray::params::vbox_controller_name,
  $vbox_machine             = $rexray::params::vbox_machine,
  $vmax_smisHost            = $rexray::params::vmax_smisHost,
  $vmax_smisPort            = $rexray::params::vmax_smisPort,
  $vmax_insecure            = $rexray::params::vmax_insecure,
  $vmax_username            = $rexray::params::vmax_username,
  $vmax_password            = $rexray::params::vmax_password,
  $vmax_sid                 = $rexray::params::vmax_sid,
  $vmax_volumePrefix        = $rexray::params::vmax_volumePrefix,
  $vmax_storageGroup        = $rexray::params::vmax_storageGroup,
  $vmax_mode                = $rexray::params::vmax_mode,
  $vmax_vmh                 = $rexray::params::vmax_vmh,
  $xtremio_endpoint         = $rexray::params::xtremio_endpoint,
  $xtremio_userName         = $rexray::params::xtremio_userName,
  $xtremio_password         = $rexray::params::xtremio_password,
  $xtremio_insecure         = $rexray::params::xtremio_insecure,
  $xtremio_deviceMapper     = $rexray::params::xtremio_deviceMapper,
  $xtremio_multipath        = $rexray::params::xtremio_multipath,
  $xtremio_remoteManagement = $rexray::params::xtremio_remoteManagement,
) inherits rexray::params {

  validate_re($install_channel, ['^stable$', '^unstable$', '^staged$'])
  validate_bool($start_service)
  validate_array($storage_drivers)

  package {'curl':
    ensure => installed,
  }

  if $install_version != '' {
    exec {'install-rexray':
      command => "curl -sSL https://dl.bintray.com/emccode/rexray/install | sh -s -- ${install_channel} ${install_version}",
      path    => '/usr/bin',
      require => Package['curl'],
      creates => '/usr/bin/rexray',
    }  
  } else {
    exec {'install-rexray':
      command => "curl -sSL https://dl.bintray.com/emccode/rexray/install | sh -s -- $install_channel",
      path    => '/usr/bin',
      require => Package['curl'],
      creates => '/usr/bin/rexray',
    }  
  }

  file {'/etc/rexray/config.yml':
    ensure  => present,
    owner   => 'root',
    group   => 'root',
    mode    => '0755',
    content => template('rexray/config.yml.erb'),
  }

  if $start_service {
    exec {'start-rexray':
      command => 'rexray service start',
      path    =>  '/bin:/usr/bin',
      unless  => 'ps aux | grep rexray | grep -v grep',
      require => [ Exec['install-rexray'], File['/etc/rexray/config.yml'] ],
    }
  }

}
