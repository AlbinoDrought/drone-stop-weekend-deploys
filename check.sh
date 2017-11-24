#!/bin/bash
THINGS_BAD_PEOPLE_LIKE=(
    "waking up at 3AM on a Saturday to the noise of uptime-tracker alarms"
    "missing your 6PM episode of Cops"
    "parsing HTML with regex"
)

A_THING_BAD_PEOPLE_LIKE=${THINGS_BAD_PEOPLE_LIKE[$RANDOM % ${#THINGS_BAD_PEOPLE_LIKE[@]}]}

[[ $(date +%u) -lt 5 ]] || (echo "Wait until next week to deploy, unless you like $A_THING_BAD_PEOPLE_LIKE" && exit 1)
