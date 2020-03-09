# hypermodern-python
Python CI test

# Set up required tools

```bash
curl https://pyenv.run | bash
```

Add this to .bashrc:
```
export PATH="~/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
```

Start a new terminal or ```source ~./bashrc```

Run this:
```bash
sudo apt update && sudo apt install -y make build-essential libssl-dev zlib1g-dev \
libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev \
libncursesw5-dev xz-utils tk-dev libffi-dev liblzma-dev python-openssl git
```

Run this:
```
pyenv install 3.8.2
pyenv install 3.7.6
```

Run this:
```
pyenv local 3.8.2 3.7.6
```

Poetry:
```
curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py | python
source ~/.poetry/env
poetry install
poetry run pytest
poetry run pytest --cov
```

Nox
```
pip install --user --upgrade nox
```

Add this to the .bashrc
```
export PATH="~/.local/bin:$PATH"
