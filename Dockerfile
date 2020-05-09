FROM openjdk:11

# Put your APKs in this folder and apktool will decompile them.
VOLUME /app/apks

COPY run.sh /app/run.sh
RUN wget -O /app/apktool.jar https://bitbucket.org/iBotPeaches/apktool/downloads/apktool_2.4.1.jar
CMD ["/app/run.sh"]