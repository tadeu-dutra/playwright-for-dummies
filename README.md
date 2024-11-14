# Playwright for Dummies Example

This repository contains a simple example demonstrating the usage of Playwright, a powerful library for browser automation. The example showcases Playwright's `codegen` feature for generating test scripts, as well as running and reporting on tests.

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

### 2. Generate Test Code using Codegen
Use the codegen feature to generate test scripts. Run the following command:

```bash
npx playwright codegen
```
This command opens a browser window where you can interact with your application. As you perform actions in the browser, Playwright will automatically generate the corresponding code in the terminal.

### 3. Run the Tests
To execute the tests you have created, use the following command:

```bash
npx playwright test
```

This command will run all the tests in your project.

### 4. Show the Test Report
After running your tests, you can view the test report by executing:

```bash
npx playwright show-report
```

This command will display a detailed report of your test results, including any passed or failed tests.

