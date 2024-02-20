#!/bin/bash

filetocheck=$(yad --file)
sha512sum $filetocheck >> file_checksums.txt
