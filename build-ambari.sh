AMBARI_VERSION="2.4.2.0.1"

mvn versions:set -DnewVersion=${AMBARI_VERSION}

pushd ambari-metrics
mvn versions:set -DnewVersion=${AMBARI_VERSION}
popd

mvn -B clean install package rpm:rpm -DskipTests -Dpython.ver="python >= 2.6" -Preplaceurl

