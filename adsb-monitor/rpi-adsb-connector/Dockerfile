FROM marhan/rpi-java8

COPY release/adsb-connector.jar /data

EXPOSE 9090

ENTRYPOINT ["java", "-Xmx64m", "-jar", "/data/adsb-connector.jar"] 