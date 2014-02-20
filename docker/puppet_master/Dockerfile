FROM ubuntu:12.04

RUN sudo apt-get update
RUN apt-get install -y wget
RUN wget http://apt.puppetlabs.com/puppetlabs-release-precise.deb
RUN dpkg -i puppetlabs-release-precise.deb
RUN apt-get remove ruby1.8 -y
RUN apt-get install ruby1.9.3 puppet -y

ADD files/puppet.conf /etc/puppet/puppet.conf

ADD files/site.pp /etc/puppet/manifests/site.pp
