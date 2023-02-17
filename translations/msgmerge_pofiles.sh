#!/bin/sh

# First, run wmlxgettext from your wesnoth tools directory to regenerate the potfile
# Then, you can run this script

for mylang in de es fr hu it pl ru zh_CN; do
	msgmerge --previous --update --lang=${mylang} wesnoth-To_Lands_Unknown/${mylang}.po TLU_translation_template.pot;
	msgfmt -o wesnoth-To_Lands_Unknown/${mylang}.mo wesnoth-To_Lands_Unknown/${mylang}.po;
done
