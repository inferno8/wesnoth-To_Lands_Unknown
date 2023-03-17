#!/bin/sh

# First, run wmlxgettext from your wesnoth tools directory to regenerate the potfile
# Then, you can run this script

for mylang in de es fr hu it pl ru zh_CN; do
	msgmerge --previous --update --lang=${mylang} ${mylang}/LC_MESSAGES/wesnoth-To_Lands_Unknown.po TLU_translation_template.pot;
	msgfmt -o ${mylang}/LC_MESSAGES/wesnoth-To_Lands_Unknown.mo ${mylang}/LC_MESSAGES/wesnoth-To_Lands_Unknown.po;
done
