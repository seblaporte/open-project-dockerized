FROM openproject/community:10
USER root
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main' >  /etc/apt/sources.list.d/pgdg.list && \
    wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | apt-key add -
RUN apt-get update && \
    apt-get install -y postgresql-client-10
RUN rm /usr/bin/pg_dump && \
    ln -s /usr/lib/postgresql/10/bin/pg_dump /usr/bin/pg_dump
