# Use the official MariaDB image as the base image
FROM mariadb:10.5

# Set the environment variables for MariaDB
ENV MYSQL_ROOT_PASSWORD=password123
ENV MYSQL_DATABASE=my_wiki
ENV MYSQL_USER=venkat
ENV MYSQL_PASSWORD=password123

# Copy any custom SQL initialization scripts (optional)
# COPY init.sql /docker-entrypoint-initdb.d/

# Expose the default MariaDB port
EXPOSE 3306

# Copy the SQL commands file into the container
COPY my_commands.sql /docker-entrypoint-initdb.d/

# Start MariaDB service
CMD ["mysqld"]