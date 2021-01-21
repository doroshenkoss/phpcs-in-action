#!/bin/sh -l

files=$(git diff-tree --no-commit-id --name-status --diff-filter=d -r "${{ github.event.pull_request.base.sha }"}.."${{ github.event.after }"})

phpcs --standard=phpcs.xml "$files"
