#!/bin/bash

set -uex -o pipefail

HERE=$(dirname "$(readlink -f "${0}")")
VENV="${HERE}/venv"
ANSIBLE="${VENV}/bin/ansible-playbook"
ANSIBLE_GALAXY="${VENV}/bin/ansible-galaxy"
PATH="${PATH}:~/.local/bin/"

which pip || (
    apt-get update && \
    apt-get install --no-install-recommends -y python3 python3-distutils curl && \
    (curl -sS https://bootstrap.pypa.io/get-pip.py | sudo python3)
)
which virtualenv || pip install virtualenv
test -d "${VENV}" || virtualenv "${VENV}"
test -f "${ANSIBLE}" || "${VENV}/bin/pip" install ansible

"${ANSIBLE_GALAXY}" install -r "${HERE}/requirements.yml"
exec "${ANSIBLE}" -iinventory.ini -K "${HERE}/playbook.yml" "${@}"
