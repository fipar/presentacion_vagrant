group { 'puppet':
      ensure => "present",
}

package { 'libaio1_0.3.107-3ubuntu2_amd64.deb':
	provider => dpkg,
	ensure => installed,
	source => "/media/packages/libaio1_0.3.107-3ubuntu2_amd64.deb",
}


package { 'libdbd-mysql-perl_4.012-1ubuntu1_amd64.deb':
	provider => dpkg,
	ensure => installed,
	require => Package['libdbi-perl_1.609-1build1_amd64.deb'],
	source => "/media/packages/libdbd-mysql-perl_4.012-1ubuntu1_amd64.deb",
}


package { 'libdbi-perl_1.609-1build1_amd64.deb':
	provider => dpkg,
	ensure => installed,
	require => Package['libplrpc-perl_0.2020-2_all.deb'],
	source => "/media/packages/libdbi-perl_1.609-1build1_amd64.deb",
}


package { 'libio-socket-ssl-perl_1.31-1_all.deb':
	provider => dpkg,
	ensure => installed,
	source => "/media/packages/libio-socket-ssl-perl_1.31-1_all.deb",
}


package { 'libmysqlclient16_5.1.66-rel14.1-495.lucid_amd64.deb':
	provider => dpkg,
	ensure => installed,
	source => "/media/packages/libmysqlclient16_5.1.66-rel14.1-495.lucid_amd64.deb",
}

package { 'libmysqlclient18_5.5.28-rel29.1-334.lucid_amd64.deb':
	provider => dpkg,
	ensure => installed,
	source => "/media/packages/libmysqlclient18_5.5.28-rel29.1-334.lucid_amd64.deb",
}


package { 'libnet-daemon-perl_0.43-1_all.deb':
	provider => dpkg,
	ensure => installed,
	source => "/media/packages/libnet-daemon-perl_0.43-1_all.deb",
}


package { 'libnet-libidn-perl_0.12.ds-1_amd64.deb':
	provider => dpkg,
	ensure => installed,
	source => "/media/packages/libnet-libidn-perl_0.12.ds-1_amd64.deb",
}


package { 'libnet-ssleay-perl_1.35-2ubuntu1_amd64.deb':
	provider => dpkg,
	ensure => installed,
	source => "/media/packages/libnet-ssleay-perl_1.35-2ubuntu1_amd64.deb",
}


package { 'libplrpc-perl_0.2020-2_all.deb':
	provider => dpkg,
	ensure => installed,
	require => Package['libnet-daemon-perl_0.43-1_all.deb'],
	source => "/media/packages/libplrpc-perl_0.2020-2_all.deb",
}


package { 'percona-server-client-5.5_5.5.28-rel29.1-334.lucid_amd64.deb':
	provider => dpkg,
	ensure => installed,
	require => [Package['libmysqlclient18_5.5.28-rel29.1-334.lucid_amd64.deb'],Package['libdbi-perl_1.609-1build1_amd64.deb']],
	source => "/media/packages/percona-server-client-5.5_5.5.28-rel29.1-334.lucid_amd64.deb",
}


package { 'percona-server-common-5.5_5.5.28-rel29.1-334.lucid_amd64.deb':
	provider => dpkg,
	ensure => installed,
	source => "/media/packages/percona-server-common-5.5_5.5.28-rel29.1-334.lucid_amd64.deb",
}


package { 'percona-server-server-5.5_5.5.28-rel29.1-334.lucid_amd64.deb':
	provider => dpkg,
	ensure => installed,
	require => [Package["libaio1_0.3.107-3ubuntu2_amd64.deb"],Package['libdbi-perl_1.609-1build1_amd64.deb'],Package['percona-server-client-5.5_5.5.28-rel29.1-334.lucid_amd64.deb']],
	source => "/media/packages/percona-server-server-5.5_5.5.28-rel29.1-334.lucid_amd64.deb",
}

package {'xtrabackup':
	provider => dpkg,
	ensure => installed,
	require => Package['percona-server-client-5.5_5.5.28-rel29.1-334.lucid_amd64.deb'],
	source => "/media/packages/percona-xtrabackup_2.0.3-470.lucid_amd64.deb"
}

file {'/etc/motd':
     source => '/media/packages/motd',
     ensure => present
}