# System tuning for virtual guests
# See also tuned-adm with profile virtual-guest

class vmtuning {

    if str2bool($::is_virtual) {

        sysctl { 'vm.swappiness' :
            ensure => present,
            value  => 0,
        }

        sysctl { 'vm.dirty_ratio' :
            ensure => present,
            value  => 40,
        }

        sysctl { 'vm.dirty_background_ratio' :
            ensure => present,
            value  => 15,
        }

    }

}
