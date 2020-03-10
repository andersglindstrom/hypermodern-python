
.PHONY: default
default: coverage

.PHONY: test
test:
	poetry run pytest

.PHONY: nox
nox:
	nox -r -s tests

.PHONY: coverage
coverage:
	poetry run pytest --cov

.PHONY: lint
lint:
	nox -r -s lint
