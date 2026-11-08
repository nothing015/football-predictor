.PHONY: help install lint format test check ingest features train predict app

help:
	@echo 'Targets: install lint format test check ingest features train predict app'

install:
	uv sync

lint:
	uv run ruff check .
	uv run ruff format --check .

format:
	uv run ruff check --fix .
	uv run ruff format .

test:
	uv run pytest

check: install lint test

ingest:
	@echo 'TODO (RB-01): download and validate data'

features:
	@echo 'TODO (RB-02): build features'

train:
	@echo 'TODO (RB-03): train and evaluate models'

predict:
	@echo 'TODO (RB-04): generate batch predictions'

app:
	@echo 'TODO (RB-04): run the Streamlit app'
