#!/usr/bin/env bash

# App #########################################################################
# Entry point of the notepack app. This file will also source all the other
# components required for the app.
# #############################################################################
source $(dirname $0)/src/description
source $(dirname $0)/src/testflow
source $(dirname $0)/src/feature


# Configuration ###############################################################
# The CONFIG_PATH is where default document formats are stored.
# The TICKET_PATH is where tickets, or groups of documents, are stored.
# The FEATURES_PATH is where features, or groups of tickets, are stored.
###############################################################################
local CONFIG_PATH="./config"
local TICKET_PATH="./tickets"
local FEATURES_PATH="./features"   # Work in progress.


# Main Script #################################################################
local action="$1"
local ticket_name="$2"

# If the given ticket name is a directory, extract just the name.
if [[ -d "$2" ]]; then
  ticket_name=$(echo "$2" | cut -d'/' -f2 )
fi

CURRENT_TICKET_PATH="$TICKET_PATH/$ticket_name"
CURRENT_TICKET_TESTFLOWS="$TICKET_PATH/$ticket_name/testflows"

# Process arguments. Mostly create new notepack or testflow or init app.
case "$action" in
  "--init") init_root ;;
  "--new-ticket") new_notepack ;;
  "--edit-ticket") edit_notepack;;
  "--new-testflow") new_testflow ;;
  * | "--help") show_help_menu ;;
esac

exit 0
