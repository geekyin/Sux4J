JAR=sux4j

count=$(\ls -1 $JAR-*.jar 2>/dev/null | wc -l)

if (( count == 0 )); then
	echo "WARNING: no $JAR jar file."
elif (( count > 1 )); then
	echo "WARNING: several $JAR jar files ($(\ls -m $JAR-*.jar))"
else
	export CLASSPATH=$(pwd)/$(ls -1 $JAR-*.jar | tail -n 1):$CLASSPATH
fi

export CLASSPATH=$CLASSPATH:/usr/share/java/fastutil5.jar
export CLASSPATH=$CLASSPATH:/usr/share/java/jsap.jar
export CLASSPATH=$CLASSPATH:/usr/share/java/junit.jar
export CLASSPATH=$CLASSPATH:/usr/share/java/log4j.jar