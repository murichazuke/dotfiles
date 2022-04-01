#!/bin/bash

set -uex -o pipefail

HERE=$(dirname "$(readlink -f "${0}")")
VENV="${HERE}/venv"
ANSIBLE="${VENV}/bin/ansible-playbook"
ANSIBLE_GALAXY="${VENV}/bin/ansible-galaxy"

which virtualenv || pip install virtualenv
test -d "${VENV}" || virtualenv "${VENV}"
test -f "${ANSIBLE}" || "${VENV}/bin/pip" install ansible

"${ANSIBLE_GALAXY}" install -r "${HERE}/requirements.yml"
exec "${ANSIBLE}" -ilocalhost, -clocal "${HERE}/playbook.yml"


