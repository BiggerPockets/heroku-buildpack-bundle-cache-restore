#!/usr/bin/env bash

download_file () {
  local aws_binary_path=$1
  local remote_path=$2
  local bundle_cache_path=$3
  local aws_bundle_cache_bucket=$(get_env_variable ${env_dir} "AWS_BUNDLE_CACHE_BUCKET")

  AWS_ACCESS_KEY_ID=$(get_env_variable ${env_dir} "AWS_ACCESS_KEY_ID") \
    AWS_SECRET_ACCESS_KEY=$(get_env_variable ${env_dir} "AWS_SECRET_ACCESS_KEY") \
    AWS_REGION=$(get_env_variable ${env_dir} "AWS_REGION") \
    $aws_binary_path s3 cp s3://${aws_bundle_cache_bucket}/$remote_path $bundle_cache_path --quiet

  local status=$?

  if [[ status -eq 0 ]]; then
    echo "Downloaded remote $remote_path to $bundle_cache_path" | indent
  fi

  return $status
}
