FROM postgres:10.1

RUN apt-get update && apt-get -y install vim

# Change default shell sh to bash
RUN chsh -s /bin/bash postgres
# Change default home dir
RUN usermod -d /var/lib/postgresql postgres

RUN mkdir /var/lib/postgresql/work /var/lib/postgresql/work/data
ADD sql/tomato-schema.sql /var/lib/postgresql/work
