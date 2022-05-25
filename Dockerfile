# Defining base image to be used
FROM node:17-alpine 

#-------------------------------------------------------------------------------------------------------
#Docker volumes
#
# - Current understanding, a way to map a folder on our system to a location on the image.
#   - Can be useful in dev environment where rebuilding images after each change is a hassle
# 


#Installing nodemon globally within the image being created (henceforth referred to as image)
RUN npm install -g nodemon

#ENDOFSECTION-------------------------------------------------------------------------------------------

# Defining working directory for all instructions henceforth inside the image
WORKDIR /app

#-------------------------------------------------------------------------------------------------------
#Using Layer Caching to Optimise Build Process
#
#By moving the npm install command before the Copy source code command, we are taking advantage of layer caching to optimise build speed
#But package.json must be in the working directory to install dependencies using npm. Hence we copy over just the necessary file before hand
#
#Post this optimisation, the steps till dependency installation will use layer caching for faster builds.
#Changes to the code does not affect the lower level layers.

#ENDOFSECTION-------------------------------------------------------------------------------------------

#Copying package.json to working directory
COPY package.json .

#Installing dependencies into the image
RUN npm install

#Copying files from our system to the image. 
# syntax : COPY <source> <destination>
# Desitnation points to the directory as set by line 18. 
COPY . .


#Specifying port number for Docker Desktop. Not necessary for CLI.
EXPOSE 4000

#Specifying commands to be executed during runtime
#CMD ["node","index.js"]
CMD [ "npm","run","dev" ]