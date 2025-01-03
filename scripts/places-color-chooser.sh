#!/bin/bash
set -euo pipefail
IFS=$'\n\t'

export PLACES_COLOR="${PLACES_COLOR:-"plasma"}"

scalable_places_directory="${0%/*}/../Gruvbox-Plus-Dark/places/scalable"

colors() {
  find "${scalable_places_directory}/" -type f -iname "folder-*-*.svg" | cut --delimiter "-" --fields 4 | sort | uniq | paste -sd " "
}

help="Places color chooser

Usage: ${0##*/} [-c | --color] PLACES_COLOR [-h | --help] [-l | --list] [-n | --dry-run] [-v | --verbose]

Environment:
  PLACES_COLOR  color to change to (default: plasma)

Options:
  -c, --color=PLACES_COLOR    set the new places color (default: plasma)
  -h, --help                  show this help
  -l, --list                  list available colors
  -n, --dry-run               perform a trial run with no changes made
  -v, --verbose               increase verbosity"

DRYRUN=0
VERBOSE=0

# options
while [[ "$#" -gt 0 && "$1" =~ ^- && ! "$1" == "--" ]]; do case "$1" in
  -c | --color )
    shift; PLACES_COLOR="$1"
    ;;
  -h | --help )
    echo -e "${help}"
    exit
    ;;
  -l | --list )
    echo "Available colors are:"
    echo "$(colors)"
    exit
    ;;
  -n | --dry-run )
    DRYRUN=1
    ;;
  -v | --verbose )
    VERBOSE+=1
    ;;
esac; shift; done
if [[ "$#" -gt 0 && "$1" == '--' ]]; then shift; fi

if [[ -f "${scalable_places_directory}/folder-${PLACES_COLOR}.svg" ]]; then
  pushd "${scalable_places_directory}" 1>/dev/null
  for i in $(realpath "*-${PLACES_COLOR}*.svg"); do
    filename="${i##*/}"

    if [[ ${VERBOSE} -gt 1 ]]; then
      case "${filename}" in
        "bookmarks-${PLACES_COLOR}.svg")
          echo "${filename} → folder-bookmark.svg"
          ;;

        *)
          echo "${filename} → ${filename/-${PLACES_COLOR}/}"
          ;;
      esac
    elif [[ ${VERBOSE} -eq 1 ]]; then
      printf "."
    fi

    if [[ ${DRYRUN} -eq 0 ]]; then
      case "${filename}" in
        "bookmarks-${PLACES_COLOR}.svg")
          ln -sfn "${filename}" "folder-bookmark.svg"
          ;;

        *)
          ln -sfn "${filename}" "${filename/-${PLACES_COLOR}/}"
          ;;
      esac
    fi
  done
  popd 1>/dev/null

  if [[ ${VERBOSE} -eq 1 ]]; then
    printf "\n"
  fi

  if [[ ${VERBOSE} -ge 1 ]]; then
    if [[ ${DRYRUN} -eq 1 ]]; then
      echo "Nothing done."
    else
      echo "Done."
    fi
  fi
else
  echo "Invalid color: ${PLACES_COLOR}"
  echo "Please peak one of:"
  echo "$(colors)"
  exit 1
fi
