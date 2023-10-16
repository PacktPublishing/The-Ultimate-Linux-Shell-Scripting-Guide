#! /bin/bash 
if [ $(uname -m) == x86_64 ]; then 
        rpm -Uvh http://pkgs.repoforge.org/rpmforge-release/rpmforge-release-0.5.3-1.el6.rf.x86_64.rpm 
else 
        rpm -Uvh http://pkgs.repoforge.org/rpmforge-release/rpmforge-release-0.5.3-1.el6.rf.i686.rpm 
fi

yum install -y epel-release yum-plugin-priorities 
sed -i '/\[base\]/apriority=1' /etc/yum.repos.d/CentOS-Base.repo 
sed -i '/\[updates\]/apriority=1' /etc/yum.repos.d/CentOS-Base.repo 
sed -i '/\[extras\]/apriority=1' /etc/yum.repos.d/CentOS-Base.repo 
sed -i '/\[centosplus\]/apriority=2' /etc/yum.repos.d/CentOS-Base.repo 
sed -i '/\[contrib\]/apriority=2' /etc/yum.repos.d/CentOS-Base.repo 
sed -i '/\[rpmforge\]/apriority=10' /etc/yum.repos.d/rpmforge.repo 
sed -i '/\[rpmforge-extras\]/apriority=11' /etc/yum.repos.d/rpmforge.repo 
sed -i '/\[rpmforge-testing\]/apriority=11' /etc/yum.repos.d/rpmforge.repo 
sed -i '/\[epel\]/apriority=12' /etc/yum.repos.d/epel.repo 
sed -i '/\[epel-debuginfo\]/apriority=13' /etc/yum.repos.d/epel.repo 
sed -i '/\[epel-source\]/apriority=13' /etc/yum.repos.d/epel.repo 
yum upgrade -y
exit