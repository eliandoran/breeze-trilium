#!/bin/sh
script_dir=$(dirname $(realpath $0))
output_dir="$script_dir"

lessc $script_dir/src/breeze-light.less > "$output_dir/breeze-light.css"
lessc $script_dir/src/breeze-dark.less > "$output_dir/breeze-dark.css"

