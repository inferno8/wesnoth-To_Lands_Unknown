#!/bin/sh

# First, run wmlxgettext from your wesnoth tools directory to regenerate the potfile

for mylang in de es fr hu it pl ru zh_CN; do
	if test -e ${mylang}/LC_MESSAGES/wesnoth-To_Lands_Unknown.po; then
		git mv ${mylang}/LC_MESSAGES/wesnoth-To_Lands_Unknown.po wesnoth-To_Lands_Unknown/${mylang}.po
	fi
	if test -e ${mylang}/LC_MESSAGES/wesnoth-To_Lands_Unknown.mo; then
		git mv ${mylang}/LC_MESSAGES/wesnoth-To_Lands_Unknown.mo wesnoth-To_Lands_Unknown/${mylang}.mo
	fi
done
