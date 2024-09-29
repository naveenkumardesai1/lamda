FROM nodejs:18

# Copy function code and package.json
COPY package.json ./
COPY index.js ./

# Install dependencies
RUN npm install --production

# Command can be omitted if it's set by the base image
CMD [ "index.handler" ]
