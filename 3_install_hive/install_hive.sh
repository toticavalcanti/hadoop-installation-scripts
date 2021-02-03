#!/bin/bash
# make sure java is installed
cd /opt

#mkdir downloads

# Download and install hive in hive directory
#wget https://downloads.apache.org/hive/hive-3.1.2/apache-hive-3.1.2-bin.tar.gz
tar -xzvf apache-hive-3.1.2-bin.tar.gz
#mv apache-hive-3.1.2-bin.tar.gz ~/Downloads/

## Create symbolic link (if you want)
ln -s apache-hive-3.1.2-bin hive


# Update `profile`

# add hive path to `.profile`
echo "
# set up HIVE_HOME
export HIVE_HOME=/opt/hive
export HIVE_CONF_DIR=/opt/hive
export PATH=\$PATH:\$HIVE_HOME/bin
" >> ~/.profile
# close `.profile` and run
source ~/.profile
 

/opt/hadoop/bin/hdfs dfs -mkdir -p /user/hive/warehouse
/opt/hadoop/bin/hdfs dfs -chmod g+w /user/hive/warehouse