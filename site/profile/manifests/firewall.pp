class profile::firewall {

   case $os['family'] {
      'RedHat':   {
        include profile::firewall::linux
      }
   }
}
