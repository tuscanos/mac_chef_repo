name "web_servers"
description "This role contains nodes, which act as web servers"
run_list "recipe[test_cookbook]"
#default_attributes 'ntp' => {#
#  'ntpdate' => {
#    'disable' => true
#  }
#}
