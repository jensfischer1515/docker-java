FROM java:8u72-jre

ENV DEBIAN_FRONTEND noninteractive

# Locales
RUN echo 'en_US.UTF-8 UTF-8\nen_US ISO-8859-1' > /etc/locale.gen \
    && apt-get -q -y update --fix-missing \
    && apt-get install -q -y apt-utils locales \
    && dpkg-reconfigure locales \
    && apt-get -y purge apt-utils locales \
    && rm -rf /var/lib/apt/lists/*

ENV LANGUAGE en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LC_ALL en_US.UTF-8
ENV LC_CTYPE en_US.UTF-8

