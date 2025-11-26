# Use a base image (e.g., Ubuntu)
FROM postgres:latest

# Example for Debian/Ubuntu based images
RUN apt-get update && apt-get install -y locales
RUN echo "en_AU.UTF-8 UTF-8" > /etc/locale.gen
RUN localedef -f CP1252 -i /usr/share/i18n/locales/en_AU /usr/lib/locale/en_AU.1252
RUN echo "en_AU.1252 CP1252" >> /etc/locale.gen
RUN locale-gen

# Set environment variables for the locale
ENV LANG=en_AU.UTF-8
ENV LANGUAGE=en_AU:en
ENV LC_ALL=en_AU.UTF-8