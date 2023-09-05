#!/usr/bin/env bash
    # requires jq

    IFS=$'\n'
    export FOCUSED_WORKSPACE_NUM=($(i3-msg -t get_workspaces | jq -r '.[]| select(.focused==true).num'))

    #read -p "New name for this workspace: " NEW_NAME
    #CHANGE_PROMPT="rename workspace to \"$FOCUSED_WORKSPACE_NUM: $NEW_NAME\""
    
    #i3-msg $CHANGE_PROMPT
