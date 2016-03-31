# # Installs WordPress with wp-cli (wp.cli.org) installed 
# Docker Hub: https://registry.hub.docker.com/u/conetix/wordpress-with-wp-cli/ 
# Github Repo: https://github.com/conetix/docker-wordpress-wp-cli 

FROM wordpress

RUN apt-get update &&\ 
    apt-get install -y unzip &&\ 
    apt-get clean -y && rm -rf /var/lib/apt/lists/*

# Cleanup RUN apt-get clean
RUN curl -o /tmp/advanced-custom-fields.4.4.5.zip https://downloads.wordpress.org/plugin/advanced-custom-fields.4.4.5.zip
RUN cd /usr/src/wordpress/wp-content/plugins/ && unzip /tmp/advanced-custom-fields.4.4.5.zip
