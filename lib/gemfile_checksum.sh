#!/usr/bin/env bash

gemfile_checksum () {
  echo "$(md5sum "$build_dir/Gemfile.lock" | cut -c1-32)"
}
