echo "Installing Java !!! ..."
curr_dir=$(pwd) 
cp openjdk-11.0.2_linux-x64_bin.tar.gz /opt/openjdk-11.0.2_linux-x64_bin.tar.gz
cd /opt
tar xzf openjdk-11.0.2_linux-x64_bin.tar.gz
mv jdk-11.0.2 jdk
cd /opt/jdk/
JAVA_HOME="/opt/jdk"
JRE_HOME="/opt/jdk/jre"
echo "export JAVA_HOME=$JAVA_HOME" >> ~/.bashrc
echo "JAVA_HOME set to $JAVA_HOME"
echo "export JRE_HOME=$JRE_HOME" >> ~/.bashrc
echo "PATH=$PATH:/opt/jdk/bin:/opt/jdk/jre/bin" >> ~/.bashrc
echo "Java installation successfull - version-11.0.2"
cd $curr_dir
exec bash
