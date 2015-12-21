#!/usr/bin/env bash
set -e
# Directory in which PuppetFile is placed to be scanned by librarian-puppet.
PUPPET_DIR=/vagrant/puppet
export DEBIAN_FRONTEND=noninteractive
apt-get update
apt-get -q -y upgrade
apt-get -q -y install ruby-dev

echo "Installing Git.."
apt-get -q -y install git

echo "Installing librarian-puppet.."
if [ "$(gem search -i librarian-puppet)" = "false" ]; then
  gem install librarian-puppet
fi
echo "librarian-puppet installed!"
echo "Executing PuppetFile.."
cd $PUPPET_DIR && librarian-puppet install --path modules

wget -qO /tmp/puppetlabs-release-trusty.deb \
        https://apt.puppetlabs.com/puppetlabs-release-trusty.deb
dpkg -i /tmp/puppetlabs-release-trusty.deb
rm /tmp/puppetlabs-release-trusty.deb
apt-get update
echo Installing puppet
apt-get install -y puppet
echo "Puppet installed!"
