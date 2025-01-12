# Use an official lightweight Linux image as the base
FROM alpine:latest

# Set the working directory
WORKDIR /scripts

# Copy the Bash script into the container
COPY script.sh .

# Make the script executable
RUN chmod +x script.sh

# Command to run the script
CMD ["./script.sh"]
