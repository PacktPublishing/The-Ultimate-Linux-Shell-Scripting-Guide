#!/bin/bash

test $(whoami) != root && echo "You are not the root user." || echo "You are the root user."

