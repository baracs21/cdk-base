#!/usr/bin/env bash

set -euo pipefail

if ! task --version &>/dev/null; then
  echo "please install task"
  exit 1
fi

check_env() {
  env=$1
  if [[ ! -v "${env}" ]]; then
    echo "$env is not set"
    exit 1
  fi
}

check_env AWS_ACCOUNT_ID
check_env AWS_PROFILE
check_env AWS_ALIAS
