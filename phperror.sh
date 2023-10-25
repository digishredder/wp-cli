#!/bin/bash

check_php_errors() {
    grep -E 'PHP (Fatal|Parse|syntax) error' /path/to/wp-content/debug.log | sort | uniq -c | sort -rn | head -25
    printf "\nTimeframe (UTC): "
}

# Call the function
check_php_errors
