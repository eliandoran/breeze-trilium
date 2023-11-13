#!/usr/bin/env bash
script_dir=$(dirname "$(realpath $0)")
output_dir="$script_dir"

output_path="$output_dir/breeze.css"
echo "Building theme: $output_path"
lessc "$script_dir/src/color-scheme/breeze-auto.less" > "$output_path"
