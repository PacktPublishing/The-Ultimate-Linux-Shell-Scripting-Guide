#!/bin/bash
var=somevalue
: ${var:?"var is unset, you big dummy"}

echo "I wonder if this will work with a value of "$var"."
