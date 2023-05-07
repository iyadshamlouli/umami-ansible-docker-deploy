FROM ghcr.io/umami-software/umami:postgresql-latest

ENV DATABASE_URL=postgresql://dbuser:123456@postgres_container:5432/mydb \
    HASH_SALT=random_salt
ENV DATABASE_TYPE postgresql

EXPOSE 3000
