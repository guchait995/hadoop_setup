user=$(whoami)
curr_dir=$(pwd)
echo $user
cp hadoop-3.2.0.tar.gz /home/$user/hadoop-3.2.0.tar.gz
cd /home/$user
tar xvzf hadoop-3.2.0.tar.gz
mv hadoop-3.2.0 hadoop
user=$(whoami)
cd $curr_dir
echo "export HADOOP_HOME=/home/$user/hadoop" >> ~/.bashrc
cat sethome.txt >> ~/.bashrc
echo "export JAVA_HOME=$JAVA_HOME" >> /home/$user/hadoop/etc/hadoop/hadoop-env.sh
sudo rm /home/$user/hadoop/etc/hadoop/core-site.xml
sudo rm /home/$user/hadoop/etc/hadoop/hdfs-site.xml
sudo rm /home/$user/hadoop/etc/hadoop/mapred-site.xml
sudo rm /home/$user/hadoop/etc/hadoop/yarn-site.xml
sudo cp xml/core-site.xml /home/$user/hadoop/etc/hadoop
echo "Updated core-site.xml"
sudo cp xml/hdfs-site.xml /home/$user/hadoop/etc/hadoop
echo "Updated hdfs-site.xml"
sudo cp xml/mapred-site.xml /home/$user/hadoop/etc/hadoop
echo "Updated mapred-site.xml"
sudo cp xml/yarn-site.xml /home/$user/hadoop/etc/hadoop
echo "Updated yarn-site.xml"
sudo mkdir /home/pseudo
sudo mkdir /home/pseudo/datanode
sudo mkdir /home/pseudo/namenode
sudo chmod a+rwx /home/pseudo/datanode
sudo chmod a+rwx /home/pseudo/namenode
hdfs namenode -format
echo "Congrats!! Hadoop setup is complete.."
exec bash
