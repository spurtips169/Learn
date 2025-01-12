# Use a base Node.js image
FROM node:18

# Set the working directory
WORKDIR /usr/src/app

# Copy and build app1
COPY app1/package.json app1/
WORKDIR /usr/src/app/app1
RUN npm install
COPY app1/ /usr/src/app/app1
RUN npm run build

# Copy and build app2
COPY app2/package.json app2/
WORKDIR /usr/src/app/app2
RUN npm install
COPY app2/ /usr/src/app/app2
RUN npm run build

# Expose ports for both applications
EXPOSE 3000
EXPOSE 4000

# Start both applications using a script
WORKDIR /usr/src/app
COPY start.sh /usr/src/app/start.sh
RUN chmod +x /usr/src/app/start.sh
CMD ["sh", "/usr/src/app/start.sh"]
