#!/usr/bin/env sh

mkdir -p "$(eval_gettext '$GSH_HOME/Castle/Main_building/Library/Merlin_s_office')/$(gettext "Drawer")"
sign_file "$MISSION_DIR/magic_book.txt" "$(eval_gettext '$GSH_HOME/Castle/Main_building/Library/Merlin_s_office')/magic_book.txt"
