# Playwright for Dummies Example

This repository contains a simple example demonstrating the usage of Playwright, a powerful library for browser automation. The example showcases Playwright's project creation and its dockernization.

## Prerequisites

Make sure you have the following installed on your system:

- Node.js (version 14 or later)
- npm (comes with Node.js)

## Getting Started

Follow these steps to set up and run the example:

### 1. Initialize a Playwright Project

First, create a new Playwright project by running the following command:

```bash
npm init playwright@latest
```

This command will set up a new Playwright project and install all necessary dependencies.

### 2. Run the Tests
To execute the tests you have created, use the following command:

```bash
npx playwright test
```

This command will run all the tests in your project.

### 3. Show the Test Report
After running your tests, you can view the test report by executing:

```bash
npx playwright show-report
```

This command will display a detailed report of your test results, including any passed or failed tests.

## App Dockerization

### 1. Create the Dockerfile

```bash
FROM mcr.microsoft.com/playwright:v1.48.2
WORKDIR /app
COPY . /app
RUN npm install
CMD [ "npx", "playwright", "test" ]
```
### 2. Build the image

```bash
docker build -t playwright-for-dummies .
```

### 2. Run the tests into the container

```bash
docker run --rm -it --shm-size=2gb playwright-for-dummies
```
This command will display a detailed report of your test results, including any passed or failed tests.

## Uploading to Docker Hub

To upload your Docker image to Docker Hub, follow these steps:

1. **Create a Docker Hub Account**
   - If you don’t already have a Docker Hub account, sign up at [Docker Hub](https://hub.docker.com/).

2. **Log in to Docker Hub**
   - In your terminal, log in to your Docker Hub account:
     ```bash
     docker login
     ```

3. **Tag and Push the Docker Image**
   - Before pushing the image, tag it with your Docker Hub username and repository name.
     ```bash
     docker tag playwright-for-dummies your-username/conversao-distancia
     ```
   - To push the image to Docker Hub, simply run:
   ```bash
     docker push your-username/playwright-for-dummies
     ```
     The previous command will build and push an image without any specific version, tagging it as `latest`.  It is a best practice to use an specific version instead of only 'latest' in order to avoid break changes in the future. So it is advisable to have both uploaded to the Docker Registry, the current version as well as the latest. To do this perform the commands below: 
     ```bash
     docker tag your-username/playwright-for-dummies:latest your-username/playwright-for-dummies:v1
     docker push your-username/playwright-for-dummies:v1
     ```

4. **Verify the Upload**
   - Go to your Docker Hub account and check if the image appears in your repositories.
