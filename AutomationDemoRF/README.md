# AutomationDemoRF

This project demonstrates automated testing of the registration page at [Automation Testing Demo](https://demo.automationtesting.in/Register.html) using Robot Framework 7.1.

## Project Structure

```
AutomationDemoRF/
├── tests/
│   ├── smoke/
│   └── regression/
├── keywords/
│   ├── CommonKeywords.robot
│   └── RegistrationKeywords.robot
├── locators/
│   └── registration_locators.robot
├── resources/
│   └── variables.robot
├── results/
├── screenshots/
├── libs/
│   └── PythonUtils.py
├── requirements.txt
└── README.md
```

## Setup Instructions

1. Install Python 3.11 or newer.
2. Install dependencies:

```bash
pip install -r requirements.txt
```

Chrome browser and appropriate WebDriver must be available on your PATH.

## Running Tests

Execute all tests and generate reports under `/results`:

```bash
robot -d results tests
```

Open `results/report.html` in a browser to see the execution report. Screenshots from failed tests are saved under `/screenshots`.

## Project Description

- **Smoke tests** cover basic registration scenarios.
- **Regression tests** cover extended and negative scenarios.
- Custom keywords reside in the `keywords` directory.
- All locators are stored in `locators/registration_locators.robot`.
- Test data and variables are defined in `resources/variables.robot`.

