# System tuning for virtual guests
# See also tuned-adm with profile virtual-guest

class vmtuning {
    sysctl { 'vm.swappiness' :
        value     => 0,
        permanent => yes, }

    sysctl { 'vm.dirty_ratio' :
        value     => 40,
        permanent => yes, }

    sysctl { 'vm.dirty_background_ratio' :
        value     => 15,
        permanent => yes, }
}
