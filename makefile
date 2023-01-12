.PHONY: test-dev test-stag test-prod show-allure show-robot-report test-debug

test-debug:


test-dev:

test-stag:


test-prod:
	robot --listener allure_robotframework:test-results/allure -d test-results/robot -v env:prod -v browser:Chrome  tests/demo/demo_test.robot

show-allure:
	allure serve .\test-results\allure\

show-robot:
	cmd /c start test-results/robot/report.html

#Template make file