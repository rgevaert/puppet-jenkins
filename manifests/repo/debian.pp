class jenkins::repo::debian {

  apt::sources_list {
    'jenkins':
        ensure  => present,
        content => 'deb http://pkg.jenkins-ci.org/debian binary/';
  }

  apt::key {
    'D50582E6':
      ensure => present,
      source => 'http://pkg.jenkins-ci.org/debian/jenkins-ci.org.key';
  }
}
