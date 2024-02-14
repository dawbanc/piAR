# bazel install
sudo apt install zip unzip openjdk-11-jre default-jdk -y
wget https://github.com/bazelbuild/bazel/releases/download/7.0.2/bazel-7.0.2-dist.zip
mv bazel-7.0.2-dist.zip /tmp
unzip /tmp/bazel-7.0.2-dist.zip -d $PWD/bazel/
export JAVA_HOME=/usr/lib/jvm/default-java/
cd bazel && env EXTRA_BAZEL_ARGS="--tool_java_runtime_version=local_jdk" bash ./compile.sh
