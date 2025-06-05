FROM node:24

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy the repository files into the container
COPY . .

# Install dependencies
RUN npm install

# Compile monorepo and build bundle
RUN npm run build

# Expose the application's default port
EXPOSE 3333

CMD ["npm", "run", "start"]
