# rexray

#### Table of Contents

1. [Description](#description)
2. [Setup - The basics of getting started with rexray](#setup)
3. [Usage - Configuration options and additional functionality](#usage)
4. [Reference - An under-the-hood peek at what the module is doing and how](#reference)
5. [Limitations - OS compatibility, etc.](#limitations)
6. [Development - Guide for contributing to the module](#development)

## Description

The REX-Ray module installs and configures the `rexray` binary, and also manages
the `rexray` service.

## Setup

Since there are no out of the box defaults that can configures a storage driver
correctly, defining a class with customizations is always required for installation:

```
class { "rexray":
  install_channel => 'stable',
  start_service => true,
  storage_drivers => ['gce'],
  gce_keyfile => '/opt/gce_keyfile',
}
```

## Usage

All interaction is done through the `rexray` module. There are 3 main pieces of
information needed to successfully install REX-Ray. (1) what channel to install from
(default is `stable`), whether the `rexray` service should be enabled (default is
`False`), and what storage driver(s) should be configured.  Depending on which
drivers are enabled, there are many more driver-specific parameters that need to be
set.

To install `rexray` with the defaults (stable channel, no service), and enable the
EC2 driver:

```
class { "rexray":
  storage_drivers => ['ec2'],
  aws_accesskey => 'MYKEY',
  aws_secretkey => 'MYSECRET',
}
```

All parameters and their defaults are in `rexray::params`.

## Reference

### Classes

* `rexray` Installs and configures REX-Ray

### Parameters

#### rexray

##### `install_channel`

The rexray channel refers to where to get the package from and can be one of `stable`,
`unstable`, or `staged`.

##### `start_service`

This controls whether or not the rexray service/daemon should be started on the node.

##### `storage_drivers`

This is a list of all storage drivers to enable. The default is an empty list, but at least
one storage driver **must** be enabled for REX-Ray to function. Setting this parameter
is therefore **mandatory**.

#### AWS EC2 Storage Driver

```
  aws_accesskey =  ''
  aws_secretkey =  ''
  aws_region =  ''
```

#### GCE Storage Driver

```
  gce_keyfile =  ''
```

#### Isilon Storage Driver

```
  isilon_endpoint =  ''
  isilon_insecure =  false
  isilon_username =  ''
  isilon_password =  ''
  isilon_volumePath =  ''
  isilon_nfsHost =  ''
```

#### OpenStack Storage Driver

```
  os_authurl =  ''
  os_userid =  0
  os_username =  ''
  os_password =  ''
  os_tenantid =  0
  os_tenantname =  ''
  os_domainid =  0
  os_domainname =  ''
  os_regionname =  ''
  os_availabilityzonename =  ''
```

#### Rackspace Storage Driver

```
  rax_authurl =  ''
  rax_userid =  0
  rax_username =  ''
  rax_password =  ''
  rax_tenantid =  0
  rax_tenantname =  ''
  rax_domainid =  0
  rax_domainname =  ''
```

#### ScaleIO Storage Driver

```
  sio_endpoint =  ''
  sio_insecure =  false
  sio_usecerts =  false
  sio_username =  ''
  sio_password =  ''
  sio_systemid =  0
  sio_systemname =  ''
  sio_protectiondomainid =  0
  sio_protectiondomainname =  ''
  sio_storagepoolid =  0
  sio_storagepoolname =  ''
```

#### Virtual Box Storage Driver

```
  vbox_endpoint =  ''
  vbox_user =  ''
  vbox_pass =  ''
  vbox_tls =  false
  vbox_volume_path =  ''
  vbox_controller_name =  SATA
  vbox_machine =  ''
```

#### VMAX Storage Driver

```
  vmax_smisHost =  ''
  vmax_smisPort =  ''
  vmax_insecure =  false
  vmax_username =  ''
  vmax_password =  ''
  vmax_sid =  ''
  vmax_volumePrefix =  ''
  vmax_storageGroup =  ''
  vmax_mode =  'vmh'
  vmax_vmh = {
    host => '',
    username =>  '',
    password => '',
    insecure => false,
  }
```

#### XtremIO Storage driver

```
  xtremio_endpoint =  ''
  xtremio_userName =  ''
  xtremio_password =  ''
  xtremio_insecure =  false
  xtremio_deviceMapper =  false
  xtremio_multipath =  false
  xtremio_remoteManagement =  false  
```

## Limitations

This module has been tested on:

* CentOS 7
* Ubuntu 14.04

Testing on other platforms has been minimal and cannot be guaranteed.

## Development

This role created by [Travis Rhoden](https://github.com/codenrhoden), a
developer advocate at [EMC {code}](http://blog.emccode.com).
