platform "el-5-i386" do |plat|
  plat.servicedir "/etc/rc.d/init.d"
  plat.defaultdir "/etc/sysconfig"
  plat.servicetype "sysv"

  plat.add_build_repository "http://pl-build-tools.delivery.puppetlabs.net/yum/pl-build-tools-release-#{plat.get_os_name}-#{plat.get_os_version}.noarch.rpm"
  plat.provision_with "yum install -y --nogpgcheck autoconf automake createrepo rsync gcc make rpmdevtools rpm-libs yum-utils rpm-sign rpm-build"
  plat.install_build_dependencies_with "yum install -y --nogpgcheck "
  plat.vmpooler_template "centos-5-i386"
end
