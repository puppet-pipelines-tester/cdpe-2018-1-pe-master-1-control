class profile::firewall {

   case $os['family'] {
      'RedHat':   {
        notify { "profile::firewall": }
        include profile::firewall::linux
      }
   }
}
