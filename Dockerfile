# Defining base image to be used
FROM node:17-alpine 

# Defining working directory for all instructions henceforth inside the image being created (henceforth referred to as image)
WORKDIR /app

#Copying files from our system to the image. 
# syntax : COPY <source> <destination>
# Desitnation points to the directory as set by line 5. 
COPY . .

#Installing dependencies into the image
RUN npm install

#Specifying port number for Docker Desktop. Not necessary for CLI.
EXPOSE 3000

#Specifying commands to be executed during runtime
CMD ["node","index.js"]