#!/bin/bash
set -euo pipefail
IFS=$'\n\t'

colors="black blue caramel citron firebrick gold green grey highland jade lavender lime olive orange pistachio plasma pumpkin purple red rust sapphire tomato violet white yellow"
default_color="plasma"
icon_pack_theme="Gruvbox-Plus-Dark"

help() {
  printf "Folders color chooser

Current color: $(current_color "-")

Usage:
  ${0##*/} [-c | --color=<color>] [-C | --reset-color]
  ${0##*/} [-h | --help]
  ${0##*/} [-l | --list]

Options:
  -c, --color=<color>   set the new folders color
  -C, --reset-color     reset folder color to ${default_color}
  -h, --help            show this help
  -l, --list            list available colors
"
}

# Browse icons directories in this order:
# - $XDG_DATA_HOME/icons (defaults to $HOME/.local/share/icons)
# - $HOME/.icons (for backwards compatibility)
# - $XDG_DATA_DIRS/icons (defaults to /usr/local/share/icons:/usr/share/icons)
icon_pack_path() {
  if [[ -d "${XDG_DATA_HOME:-"${HOME}/.local/share"}/icons/${icon_pack_theme}" ]]; then
    echo "${XDG_DATA_HOME:-"${HOME}/.local/share"}/icons/${icon_pack_theme}"
  elif [[ -d "${HOME}/.icons/${icon_pack_theme}" ]]; then
    echo "${HOME}/.icons/${icon_pack_theme}"
  else
    data_dirs=$(echo "${XDG_DATA_DIRS:-"/usr/local/share:/usr/share"}" | tr ":" "\n")
    for path in $data_dirs; do
      if [[ -d "${path%%/}/icons/${icon_pack_theme}" ]]; then
        echo "${path%%/}/icons/${icon_pack_theme}"
        break
      fi
    done
  fi
}

scalable_places_directory() {
  if [[ -d "$(icon_pack_path)" ]]; then
    echo "$(icon_pack_path)/places/scalable"
  fi
}

current_color() {
  if [[ -z "$(scalable_places_directory)" ]]; then
    if [[ "$#" -gt 0 ]]; then
      echo "$1"
    fi
    return 0
  fi

  readlink "$(scalable_places_directory)/folder.svg" | cut --delimiter "-" --fields 2 | cut --delimiter "." --fields 1
}

folders_color=""

while getopts cChl-: OPT; do
  if [ "$OPT" = "-" ]; then   # long option: reformulate OPT and OPTARG
    OPT="${OPTARG%%=*}"       # extract long option name
    OPTARG="${OPTARG#"$OPT"}" # extract long option argument (may be empty)
    OPTARG="${OPTARG#=}"      # if long option argument, remove assigning `=`
  else
    OPTARG=""
  fi
  case "$OPT" in
    -)
      break ;;
    c | color)
      if [ -z "${OPTARG}" ]; then
        if [[ "$#" -gt 1 ]]; then
          shift ; folders_color="$1"
        else
          echo "Missing value for '${OPT}' option. Please provide a color." >&2
          echo "Available colors are:"
          echo "${colors}"
          exit 1
        fi
      else
        folders_color="${OPTARG}"
      fi ;;
    C | reset-color)
      folders_color="${default_color}" ;;
    h | help)
      help
      exit ;;
    l | list)
      echo "Available colors are:"
      echo "${colors}"
      exit ;;
    \? )
      exit 2 ;;  # bad short option (error reported via getopts)
  esac
done
shift $((OPTIND-1)) # remove parsed options and args from $@ list

if [[ "$#" -gt 0 ]]; then
  echo "Unknown argument: $1" >&2
  exit 1
fi

if [[ -z "${folders_color}" ]]; then
  help
  exit
fi

if [[ ! -d "$(icon_pack_path)" ]]; then
  echo "Icon pack path not found. Abort." >&2
  exit 1
fi

if [[ ! -d "$(scalable_places_directory)" ]]; then
  echo "Folder icons not found. Abort."
  exit 1
fi

if [[ "${folders_color}" == "$(current_color)" ]]; then
  echo "No changes. It's already ${folders_color}."
  exit
fi

if [[ -f "$(scalable_places_directory)/folder-${folders_color}.svg" ]]; then
  old_folders_color="$(current_color)"

  pushd "$(scalable_places_directory)" 1>/dev/null
  for i in $(realpath "*-${folders_color}*.svg"); do
    filename="${i##*/}"

    case "${filename}" in
      "bookmarks-${folders_color}.svg")
        ln -sfn "${filename}" "folder-bookmark.svg"
        ;;

      *)
        ln -sfn "${filename}" "${filename/-${folders_color}/}"
        ;;
    esac
  done
  popd 1>/dev/null

  echo "Changed from ${old_folders_color} to ${folders_color}."
else
  echo "Invalid color: ${folders_color}"
  echo "Please peak one of:"
  echo "${colors}"
  exit 1
fi
