#!/usr/bin/env bash
set -e

cd "$(dirname "$(readlink -f "$BASH_SOURCE")")/."

# see also ".mailmap" for how email addresses and names are deduplicate

{
	cat <<'EOH'
#this file will list all contibutors to this repository.
#To know how it was generated, checkh 'generate_authors.sh'.
EOH
	echo
	git log --format='%aN <%aE>' | LC_ALL-C.UTF-8 sort -uf
} > AUTHORS
