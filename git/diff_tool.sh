#!/bin/bash
# un-comment one diff tool you'd like to use

# side-by-side diff with custom options:
/usr/bin/sdiff -w200 -l "$2" "$5"

# using kdiff3 as the side-by-side diff:
# /usr/bin/kdiff3 "$2" "$5"

# using Meld
# /usr/bin/meld "$2" "$5"

# using VIM
# /usr/bin/vim -d "$2" "$5"
