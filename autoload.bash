#!/usr/bin/false -- This is a module, not a program.

which ack >/dev/null || {
	echo>&2 "acksed.pkg requires ack in your PATH."
	return 1
}

acksed() {
	[[ $# -gt 0 ]] || {
		echo>&2 "Usage: acksed pattern [replacement]"
		return 1
	}
	local pattern="$1" replacement="${2:-}"
	shift $(( $# > 1 ? 2 : 1 ))

	ack -l --print0 "$pattern" \
	| xargs -0 perl -pi -e "s/$pattern/$replacement/g"
}
alias ack-sed='acksed'
