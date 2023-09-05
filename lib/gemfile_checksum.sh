#!/usr/bin/env bash

gemfile_checksum () {
  sed -i '/BUNDLED WITH/,+1c\\' "$build_dir/Gemfile.lock"
  echo "$(md5sum "$build_dir/Gemfile.lock" | cut -c1-32)"
}
