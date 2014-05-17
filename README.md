Setup:

    apt-get update
    apt-get install -y git wget
    wget https://opscode-omnibus-packages.s3.amazonaws.com/ubuntu/12.04/x86_64/chefdk_0.1.0-1_amd64.deb
    dpkg -i chefdk_0.1.0-1_amd64.deb
    git clone https://github.com/StephenKing/site-vbg9
    cd /root/site-vbg9
    echo '{"newrelic": {"license": ".."}}' > chef-solo.json




How to apply:

    cd /root/site-vbg9
    berks package /root/chef-deploy.tar.gz && chef-solo --override-runlist site-vbg9 -r /root/chef-deploy.tar.gz
