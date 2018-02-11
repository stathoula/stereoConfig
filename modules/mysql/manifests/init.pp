class mysql {
  package{'mysql-client-5.5': }
  package{'mysql-common': }
  package{'mysql-server': }
  package{'mysql-server-5.5': }
  package{'mysql-server-core-5.5': }

  # We want to remove the file and rewrite the configuration from scratch
  file { '/etc/mysql/my.cnf':
    ensure => absent,
  }
  $my_cnf_contents = "[mysqld]
!includedir /etc/mysql/mariadb.conf.d/
!includedir /etc/mysql/conf.d/
datadir=/home/mysql
tmpdir=/var/tmp
innodb_buffer_pool_size=13GB
log_error=/var/log/mysql/error.log"

file { '/etc/mysql/my.cnf':
    ensure => present,
  }->
    file_line { 'mysqld':
      path => '/etc/mysql/my.cnf',
      content => $my_cnf_contents,
    }
  }
file { '/etc/systemd/system/mysqld.service':
    ensure => present,
    }->
    file_line { 'protectHome':
        path => '/etc/systemd/system/mysqld.service',
        line => 'ProtectHome = true',
        match => "ProtectHome.*",
        }
/*  file { '/etc/updatedb.conf':
    ensure => present,
  }->
    file_line { 'prunepaths':
      path => '/etc/updatedb.conf',
      line => '/tmp /var/spool /media /home',
  }*/
  
  #Run the command to initialize the mysql server
  #The mysqld.txt file should have a command of the following syntax:
  #SET PASSWORD FOR 'root'@'localhost' = PASSWORD('password');
  exec { 'mysql_init':
    command => "sudo mysqld --init-file=mysqlpd.txt &",
    #the following command to avoid the main command running everytime
    creates => '/home/mysql/isInitTrue.txt',
  }
  exec { 'mysql_install':
    command => "mysql_install_db",
    #the following commands to avoid the main command running everytime
    creates => '/home/mysql/isInitTrue.txt',
    }
  exec { 'createFileSuccess':
    command => "touch /home/mysql/isInitTrue.txt",
    }
}
