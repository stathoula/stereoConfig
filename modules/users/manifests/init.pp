class users {
    $tushar    = hiera('tushar')
    $mfg       = hiera('mfg')
    $dds       = hiera('dds')
    $maria     = hiera('maria')
    $louridas  = hiera('louridas')
    $sgeorgiou = hiera('sgeorgiou')
    $dimitro   = hiera('dimitro')
    $vitsalis  = hiera('vitsalis')
    $antonis    = hiera('antonis')
    $vasiliki  = hiera('vasiliki')
    $thodoras  = hiera('thodoras')
    $estathoula  = hiera('estathoula')
    $gbatas  = hiera('gbatas')
    $marios  = hiera('marios')
    user {'tushar':
        ensure      => present,
        home        => '/home/tushar',
        password    => $tushar,
        shell       => '/bin/bash',
        managehome  => true,
    }

    user {'mfg':
        ensure      => present,
        home        => '/home/mfg',
        password    => $mfg,
        shell       => '/bin/bash',
        managehome  => true,    
    }
    
    user {'dds':
        ensure      => present,
        home        => '/home/dds',
        password    => $dds,
        shell       => '/bin/bash',
        managehome  => true,
    }
    
    user {'maria':
        ensure      => present,
        home        => '/home/maria',
        password    => $maria,
        shell       => '/bin/bash',
        managehome   => true,
    }
    
    user {'louridas':
        ensure      => present,
        home        => '/home/louridas',
        password    => $louridas,
        shell       => '/bin/bash',
        managehome  => true,
    }

    user {'sgeorgiou':
        ensure      => present,
        home        => '/home/sgeorgiou',
        password    => $sgeorgiou,
        shell       => '/bin/bash',
        managehome  => true,
    }

    user {'dimitro':
        ensure      => present,
        home        => '/home/dimitro',
        password    => $dimitro,
        shell       => '/bin/bash',
        managehome  => true,
    }
    
    user {'vitsalis':
        ensure      => present,
        home        => '/home/vitsalis',
        password    => $vitsalis,
        shell       => '/bin/bash',
        managehome  => true,
    }
    user {'antonis':
        ensure      => present,
        home        => '/home/antonis',
        password    => $antonis,
        shell       => '/bin/bash',
        managehome  => true,
    }
    user {'vasiliki':
        ensure      => present,
        home        => '/home/vasiliki',
        password    => $vasiliki,
        shell       => '/bin/bash',
        managehome  => true,
    }
    user {'thodoras':
        ensure      => present,
        home        => '/home/thodoras',
        password    => $thodoras,
        shell       => '/bin/bash',
        managehome  => true,
    }
    user {'estathoula':
        ensure      => present,
        home        => '/home/estathoula',
        password    => $estathoula,
        shell       => '/bin/bash',
        managehome  => true,
    }
    user {'gbatas':
        ensure      => present,
        home        => '/home/gbatas',
        password    => $gbatas,
        shell       => '/bin/bash',
        managehome  => true,
    }
    user {'marios':
        ensure      => present,
        home        => '/home/marios',
        password    => $marios,
        shell       => '/bin/bash',
        managehome  => true,
    }
}
