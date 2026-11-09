useradd -m -s /bin/bash rikkeilms
mkdir -p /opt/rikkei/course-service
chown -R rikkeilms:rikkeilms /opt/rikkei/course-service
chmod 755 /opt/rikkei/course-service
ls -ld /opt/rikkei/course-service
