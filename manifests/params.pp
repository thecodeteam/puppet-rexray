# Default parameters

class rexray::params {
  $install_channel  = 'stable'
  $start_service    = false
  $storage_drivers  = []
  $config_template = 'rexray/config.yml.erb',

  # AWS EC2 Storage Driver
  $aws_accesskey =  ''
  $aws_secretkey =  ''
  $aws_region =  ''

  # GCE Storage Driver
  $gce_keyfile =  ''

  # Isilon Storage Driver
  $isilon_endpoint =  ''
  $isilon_insecure =  false
  $isilon_username =  ''
  $isilon_password =  ''
  $isilon_volumePath =  ''
  $isilon_nfsHost =  ''

  # OpenStack Storage Driver
  $os_authurl =  ''
  $os_userid =  0
  $os_username =  ''
  $os_password =  ''
  $os_tenantid =  0
  $os_tenantname =  ''
  $os_domainid =  0
  $os_domainname =  ''
  $os_regionname =  ''
  $os_availabilityzonename =  ''

  # Rackspace Storage Driver
  $rax_authurl =  ''
  $rax_userid =  0
  $rax_username =  ''
  $rax_password =  ''
  $rax_tenantid =  0
  $rax_tenantname =  ''
  $rax_domainid =  0
  $rax_domainname =  ''

  # ScaleIO Storage Driver
  $sio_endpoint =  ''
  $sio_insecure =  false
  $sio_usecerts =  false
  $sio_username =  ''
  $sio_password =  ''
  $sio_systemid =  0
  $sio_systemname =  ''
  $sio_protectiondomainid =  0
  $sio_protectiondomainname =  ''
  $sio_storagepoolid =  0
  $sio_storagepoolname =  ''

  # Virtual Box Storage Driver
  $vbox_endpoint =  ''
  $vbox_user =  ''
  $vbox_pass =  ''
  $vbox_tls =  false
  $vbox_volume_path =  ''
  $vbox_controller_name =  SATA
  $vbox_machine =  ''

  # VMAX Storage Driver
  $vmax_smisHost =  ''
  $vmax_smisPort =  ''
  $vmax_insecure =  false
  $vmax_username =  ''
  $vmax_password =  ''
  $vmax_sid =  ''
  $vmax_volumePrefix =  ''
  $vmax_storageGroup =  ''
  $vmax_mode =  'vmh'
  $vmax_vmh = {
    host => '',
    username =>  '',
    password => '',
    insecure => false,
  }

  # XtremIO Storage driver
  $xtremio_endpoint =  ''
  $xtremio_userName =  ''
  $xtremio_password =  ''
  $xtremio_insecure =  false
  $xtremio_deviceMapper =  false
  $xtremio_multipath =  false
  $xtremio_remoteManagement =  false  
}
