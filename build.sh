#!/usr/bin/env bash
script_dir=$(dirname $(realpath $0))
output_dir="$script_dir"

function build_theme() {
    theme=$1
    output_path="$output_dir/breeze-$theme.css"
    echo "Building theme "$theme": $output_path"
    lessc "$script_dir/src/breeze-$theme.less" > "$output_path"
}

if [ $# -eq 1 ]; then
    build_theme $1 && \
        cat "$output_path" | xclip -selection c && \
        echo "Copied to clipboard."
    exit 0
fi

build_theme "light"
build_theme "dark"
