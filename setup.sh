!/bin/sh

# password="1234"
# FILE="users.txt"

# cat $FILE | while read LINE
# do
#  echo "$LINE"
# done

# download puppet
rpm -ivh http://yum.puppetlabs.com/el/6/products/x86_64/puppetlabs-release-6-6.noarch.rpm

# install puppet-server
# this is not needed if you are doing stand alone config
# yum install puppet-server

# change this setting to allow network access
sed -i 's/ONBOOT=no/ONBOOT=yes/g' /etc/sysconfig/network-scripts/ifcfg-eth0

# reboot for network access
shutdown -r now

# install puppet
yum install puppet

# install vim
yum install vim-common vim-minimal vim-enhanced

# update all packages
yum update

# reboot for changes
shutdown -r now

# install vcsrepo module for cloning git repos
puppet module install puppetlabs/vcsrepo
