CURRENT_DIR := $(dir $(abspath $(firstword $(MAKEFILE_LIST))))

install:
	python -m venv .venv
	. .venv/bin/activate && pip install -r requirements.txt

new:
	. .venv/bin/activate && copier copy services/template $(CURRENT_DIR)services/