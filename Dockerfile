# ---- Production ----
FROM node:20.2-alpine AS production
WORKDIR /dist

COPY . .
RUN yarn && yarn build

# Expose the port the app will run on
EXPOSE 3000

# Start the application
CMD ["yarn", "start"]
