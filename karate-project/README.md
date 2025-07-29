# Karate Framework Project

This project is set up to use the Karate framework for API testing. Below are the details regarding the project structure, setup instructions, and usage guidelines.

## Project Structure

``` 
karate-project
├── src
│   ├── main
│   │   └── java
│   └── test
│       ├── java
│       │   └── Test_Scenario
│       │       ├── testrunner.java
│       │       └── AddItem_MissingInfo.feature
│       └── resources
│           └── testData
│               └── addItem_New.json
├── pom.xml
└── README.md
```

- **src/main/java**: No code added.
- **src/test/java**: This directory is for test-related Java code, including test runner classes or utility classes.
- **src/test/java/Test_Scenario**: This directory contains feature files of all the problems and test runner class for execution.
- **src/test/java/karate-config.js**: This file contains base URL link. 
- **src/test/resources/testData**: This is a test data  file where JSON data required for API's is stored.
- **pom.xml**: The Maven configuration file that specifies project dependencies and build configurations for the Karate framework.

## Setup Instructions

1. **Prerequisites**: Ensure you have Java and Maven installed on your machine.
2. **Clone the Repository**: Clone this project to your local machine using:
   ```
   git clone <repository-url>
   ```
3. **Navigate to the Project Directory**:
   ```
   cd karate-project
   ```
4. **Build the Project**: Use Maven to build the project:
   ```
   mvn clean install
   ```
5. **Run the Tests**: You can run the Karate tests using:
   ```
   mvn test
   ```

## Usage Guidelines

- Add your test scenarios in the `sample.feature` file or create new feature files as needed.
- Implement any necessary Java classes in the `src/main/java` or `src/test/java` directories to support your tests.
- Update the `pom.xml` file to include any additional dependencies required for your tests.

For more detailed information on Karate, refer to the [Karate documentation](https://github.com/intuit/karate).