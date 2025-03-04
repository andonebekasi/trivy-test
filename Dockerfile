# Use a base image that includes the required libraries
FROM debian:buster

# Install the latest available versions of the libraries
RUN apt-get update && \
    apt-get install -y \
    openssl \
    libcurl4 \
    libc-bin

# Add a simple script to simulate the vulnerabilities
COPY demo_script.sh /usr/local/bin/demo_script.sh
RUN chmod +x /usr/local/bin/demo_script.sh

# Set the entrypoint to the demo script
ENTRYPOINT ["/usr/local/bin/demo_script.sh"]
