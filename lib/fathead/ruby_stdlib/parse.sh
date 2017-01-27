#!/bin/bash -eu

dir=$(dirname $0)
url=$(<"${dir}/data.url")
download_dir=${dir}/download
script=${dir}/parse.rb
output=${dir}/output.txt
archive_name=${url##*/}
packages=${download_dir}/${archive_name%_rdocs.tgz}/packages.html

ruby -w "${script}" "${packages}" | sort > "${output}"
LC_ALL=C sort output.txt -o output.txt
