#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."
PYTHONPATH=src python -m gbt_omission_detector info
PYTHONPATH=src python -m gbt_omission_detector check --payload '{}'
PYTHONPATH=src python -m gbt_omission_detector run   --payload '{}'
