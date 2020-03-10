
.PHONY: default
default: coverage

.PHONY: test
test:
	poetry run pytest -m "not e2e"

.PHONY: coverage
coverage:
	poetry run pytest --cov

.PHONY: lint
lint:
	nox -r -s lint

.PHONY: nox
nox:
	nox -r
