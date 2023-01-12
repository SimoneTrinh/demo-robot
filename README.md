# Current: Python 3.11.1, Pip 22.3.1

# IDE / Extension

- IDE: VSCode
- Extensions:

  Makefile Tools

  Material Icon Theme

  Python

  Pylance

  Robot Code (Do not use Robot Framework Language Server because of Conflict)

  Robot Framework Formatter

  Todo Tree

# How to use this project:

1. Install pip in your machine
2. Open this project terminal
3. Run the following command: `python -m venv .venv`
4. Active activate.ps1 to trigger select this virtual env `.venv/Scripts/Activate.ps1`
5. Run these following commands:
   - pip install pip-tools
   - pip-compile .\requirements.in
   - pip install -r requirements.txt
6. Install Choco then install Make to use the make file
7. Run as normal
   > Do not commit .venv to your git repository

### If add any package, update it in `requirements.in`

## Run test as normal

$ robot -d test-results/robot -v env:prod -v browser:Chrome tests/demo/demo_test.robot

## Attach to allure listener

$ robot --listener allure_robotframework:test-results/allure -d test-results/robot -v env:prod -v browser:Chrome tests/demo/demo_test.robot

## Show allure report

$ allure serve .\test-results\allure\

Note: -v to pass global variable to your project. It is the highest priority.

## Run by make

Ex:

$ make test-debug

$ make show-robot

$ make show-allure...

### Convension

1. Global scalar global variables always in CAPLOCKS char and space by underscore "_" character ${} (Snake Case with All Caps)
   EX: `${GLOBAL_SCALAR}`
2. Varialbes that in scope of Local/Test/Keyword always in Camel case
   EX: `${userPass}`
3. File name always in snake case (my_file)
   EX: `home_page.resource`
4. Import use built-in variable
   EX: **_ Settings _**
   Resource ${EXECDIR}/src/pages/web/common/page/common_pages.resource
5. Locator variables should come with type of control then name
   EX: `${BTN_FIND_MATCH}`, `${TXB_USER_NAME}`, `${DROP_USER_TYPE}`
6. Action filling starts defining keyword with "Enter ..."
   EX: Enter user email
