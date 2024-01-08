FROM placeholder:latest
USER root
COPY ca_logstash.cer /tmp/
RUN /usr/bin/keytool -import -alias saelk -file /tmp/ca_logstash.cer -keystore /usr/lib/jvm/java-11-openjdk-11.0.7.10-4.el7_8.x86_64/lib/security/cacerts -storepass changeit -noprompt
USER logstash

