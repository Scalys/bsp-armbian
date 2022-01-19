if [ -t 0 -a $# -eq 0 ]; then
	if [ ! -x /usr/bin/resize ] ; then
# Optimized resize funciton for bash
resize() {
	local x y
	IFS='[;' read -t 2 -p $(printf '\e7\e[r\e[999;999H\e[6n\e8') -sd R _ y x _
	[ -n "$y" ] && \
	echo -e "COLUMNS=$x;\nLINES=$y;\nexport COLUMNS LINES;" && \
	stty cols $x rows $y
}
	fi
	# Use the EDITOR not being set as a trigger to call resize
	# and only do this for /dev/tty[A-z] which are typically
	# serial ports
	if [ -z "$EDITOR" -a "$SHLVL" = 1 ] ; then
		case $(tty 2>/dev/null) in
			/dev/tty[A-z]*) resize >/dev/null;;
		esac
	fi
fi
