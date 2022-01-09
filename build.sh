#!/bin/sh
script_dir=$(dirname $(realpath $0))
output_path="$script_dir/theme.css"

lessc $script_dir/src/master.less > $output_path && \
    echo Saved to "$output_path" && \
    cat $output_path | xclip -selection c && \
    echo Copied to clipboard.
