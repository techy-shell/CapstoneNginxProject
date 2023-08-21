setup:
	python3 -m venv ~/.venv
	source ~/.venv/bin/activate

env:
	which python3
	python3 --version
	which pylint

install:
	pip install --upgrade pip==23.2.1&&\
		pip install -r requirements.txt

lint:
	hadolint Dockerfile

