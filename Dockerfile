FROM java:8u45-jre

ENV DEBIAN_FRONTEND noninteractive

# Locales
RUN (echo 'en_US.UTF-8 UTF-8\nen_US ISO-8859-1' > /etc/locale.gen  \
    && apt-get clean \
    && apt-key update \
	&& apt-get -q -y update --fix-missing \
    && apt-get -q -y update \
	&& apt-get install -q -y apt-utils \
	&& apt-get install -q -y locales)

RUN (locale-gen \
	&& locale-gen en_US.UTF-8 \
	&& dpkg-reconfigure locales)

ENV LANGUAGE en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LC_ALL en_US.UTF-8
ENV LC_CTYPE en_US.UTF-8
