#!/bin/bash

BOOKMARK2MD_HOME="$HOME/victormpcmun/bookmark2md"

BOOKMARK_FOLDER_NAME="FSD"

#======================================================

PARENT_PATH=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )

BOOKMARK_EXPORTED_FROM_BROWSER_DIRECTORY="$PARENT_PATH/exported_from_browser"

LATEST_BOOKMARK_EXPORTED_FILE=`ls $BOOKMARK_EXPORTED_FROM_BROWSER_DIRECTORY -rt  | tail -n 1`
 
$BOOKMARK2MD_HOME/bookmark2md.sh "$BOOKMARK_EXPORTED_FROM_BROWSER_DIRECTORY/$LATEST_BOOKMARK_EXPORTED_FILE"  "$PARENT_PATH/output" $BOOKMARK_FOLDER_NAME
