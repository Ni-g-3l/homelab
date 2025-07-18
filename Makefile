CURRENT_DIR := $(dir $(abspath $(firstword $(MAKEFILE_LIST))))

install:
	python -m venv .venv
	. .venv/bin/activate && pip install -r requirements.txt

new:
	. .venv/bin/activate && copier copy services/template $(CURRENT_DIR)services/

run:
	. .venv/bin/activate && python scripts/runtime/run_commands.py ${CURRENT_DIR}services/ --cmd 'make'

update:
	. .venv/bin/activate && python scripts/runtime/run_commands.py ${CURRENT_DIR}services/ --cmd 'make update'
