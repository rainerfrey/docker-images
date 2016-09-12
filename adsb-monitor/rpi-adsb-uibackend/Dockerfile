FROM marhan/rpi-java8

COPY release/adsb-ui-backend.jar /data

EXPOSE 8080

ENTRYPOINT ["java", "-Xmx64m", "-jar", "/data/adsb-ui-backend.jar"] 