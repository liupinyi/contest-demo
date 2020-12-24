# Dockerfile
FROM websphere-liberty:kernel
COPY --chown=1001:0  demo.war /opt/ibm/wlp/usr/servers/defaultServer/dropins
COPY --chown=1001:0  server.xml /config/
RUN installUtility install --acceptLicense defaultServer
