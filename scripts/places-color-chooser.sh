#!/bin/bash
set -euo pipefail
IFS=$'\n\t'

export FOLDERS_COLOR="${FOLDERS_COLOR:-"plasma"}"
export ICON_PACK_PATH="${ICON_PACK_PATH:-"${HOME}/.icons/Gruvbox-Plus-Dark"}"

scalable_places_directory="${ICON_PACK_PATH}/places/scalable"

colors() {
  find "${scalable_places_directory}/" -type f -iname "folder-*-*.svg" | cut --delimiter "-" --fields 4 | sort | uniq | paste -sd " "
}

current_color() {
  readlink "${scalable_places_directory}/folder.svg" | cut --delimiter "-" --fields 2 | cut --delimiter "." --fields 1
}

help="Folders color chooser

Current color: $(current_color)

Usage: ${0##*/} [-c | --color] FOLDERS_COLOR [-h | --help] [-l | --list] [-n | --dry-run] [-v | --verbose]

Environment:
  FOLDERS_COLOR   color to change to (default: plasma)
  ICON_PACK_PATH  path to the Gruvbox Plus icon pack (default: ~/.icons/Gruvbox-Plus-Dark)

Options:
  -c, --color=FOLDERS_COLOR   set the new folders color (default: plasma)
  -h, --help                  show this help
  -l, --list                  list available colors
  -n, --dry-run               perform a trial run with no changes made
  -v, --verbose               increase verbosity"

DRYRUN=0
VERBOSE=0
OLD_FOLDERS_COLOR="$(current_color)"

# options
while [[ "$#" -gt 0 && "$1" =~ ^- && ! "$1" == "--" ]]; do case "$1" in
  -c | --color )
    shift; FOLDERS_COLOR="$1"
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

if [[ "${FOLDERS_COLOR}" == "$(current_color)" ]]; then
  echo "No changes. It's already ${FOLDERS_COLOR}."
  exit
fi

if [[ -f "${scalable_places_directory}/folder-${FOLDERS_COLOR}.svg" ]]; then
  pushd "${scalable_places_directory}" 1>/dev/null
  for i in $(realpath "*-${FOLDERS_COLOR}*.svg"); do
    filename="${i##*/}"

    if [[ ${VERBOSE} -gt 1 ]]; then
      case "${filename}" in
        "bookmarks-${FOLDERS_COLOR}.svg")
          echo "${filename} → folder-bookmark.svg"
          ;;

        *)
          echo "${filename} → ${filename/-${FOLDERS_COLOR}/}"
          ;;
      esac
    elif [[ ${VERBOSE} -eq 1 ]]; then
      printf "."
    fi

    if [[ ${DRYRUN} -eq 0 ]]; then
      case "${filename}" in
        "bookmarks-${FOLDERS_COLOR}.svg")
          ln -sfn "${filename}" "folder-bookmark.svg"
          ;;

        *)
          ln -sfn "${filename}" "${filename/-${FOLDERS_COLOR}/}"
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
      echo "Changed from ${OLD_FOLDERS_COLOR} to ${FOLDERS_COLOR}."
    fi
  fi
else
  echo "Invalid color: ${FOLDERS_COLOR}"
  echo "Please peak one of:"
  echo "$(colors)"
  exit 1
fi
