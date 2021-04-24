#!/usr/bin/env bash

today=$(date -I)

gh pr create --title "Update ${today}" --body "Update ${today}"