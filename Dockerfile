FROM mcr.microsoft.com/playwright:v1.48.2
WORKDIR /app
COPY . .
RUN npm install
CMD ["npx", "playwright", "test"]