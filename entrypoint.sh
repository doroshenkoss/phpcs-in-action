#!/bin/sh -l

sh -c "phpcs --standard=phpcs.xml $(git diff-tree --no-commit-id --name-status --diff-filter=d -r ${{ github.event.pull_request.base.sha }}..${{ github.event.after }})"
